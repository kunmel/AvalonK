/* Copyright 2018 Intel Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @file
 * Secret key (symmetric) encryption.
 * Uses AES-GCM 256, which also includes authentication.
 *
 * Lower-level functions implemented using OpenSSL.
 * See also skenc_common.cpp for OpenSSL-independent code.
 */

#include <memory>    // std::unique_ptr
#include <openssl/evp.h>
#include<iostream>
#include "crypto_shared.h"
#include "error.h"
#include "skenc.h"

#ifndef CRYPTOLIB_OPENSSL
#error "CRYPTOLIB_OPENSSL must be defined to compile source with OpenSSL."
#endif

namespace pcrypto = tcf::crypto;

// Typedefs for memory management
// Specify type and destroy function type for unique_ptrs
typedef std::unique_ptr<EVP_CIPHER_CTX, void (*)(EVP_CIPHER_CTX*)> CTX_ptr;

// Error handling
namespace Error = tcf::error;

namespace constants = tcf::crypto::constants;


/**
 * Encrypt a message using AES-GCM authenticated encryption.
 *
 * Appends a 16 byte (128 bit) authentication tag (sometimes called a MAC)
 * to the output cipher text:
 *     message = ciphertext + authentication tag
 * The authentication tag is not encrypted.
 *
 * Throws RuntimeError, ValueError.
 *
 * @param message binary data to encrypt
 * @param key Secret AES-256 encryption key.
 *            Generated by GenerateKey()
 * @param iv  96-bit initialization Vector (IV). Generated by GenerateIV()
 * @returns Byte array containing encrypted data and appended auth tag
 */
ByteArray pcrypto::skenc::EncryptMessage(
        const ByteArray& key, const ByteArray& iv, const ByteArray& message) {
    unsigned char tag[constants::TAG_LEN];
    int len;
    int ct_len;
    int pt_len = message.size();
    unsigned char* pt = (unsigned char*)message.data();
    int ct_buf_len = pt_len + constants::BLOCK_LENGTH;
    ByteArray ct(ct_buf_len);


    // Sanity checks
    if (key.size() != constants::SYM_KEY_LEN) {
        std::string msg(
            "Crypto Error (EncryptMessage): Wrong AES-GCM key length");
        throw Error::ValueError(msg);
    }

    if (iv.size() != constants::IV_LEN) {
        std::string msg(
            "Crypto Error (EncryptMessage): Wrong AES-GCM IV length");
        throw Error::ValueError(msg);
    }

    if (message.size() == 0) {
        std::string msg(
            "Crypto Error (EncryptMessage): Cannot encrypt the empty message");
        throw Error::ValueError(msg);
    }

    // Initialize encryption
    CTX_ptr context(EVP_CIPHER_CTX_new(), EVP_CIPHER_CTX_free);
    if (!context) {
        std::string msg(
            "Crypto Error (EncryptMessage): OpenSSL could not create "
            "new EVP_CIPHER_CTX");
        throw Error::RuntimeError(msg);
    }

    if (EVP_EncryptInit_ex(context.get(), EVP_aes_256_gcm(),
            nullptr, nullptr, nullptr) != 1) {
        std::string msg(
            "Crypto Error (EncryptMessage): OpenSSL could not "
            "initialize EVP_CIPHER_CTX with AES-GCM");
        throw Error::RuntimeError(msg);
    }

    // Set Key and IV
    if (EVP_EncryptInit_ex(context.get(), nullptr, nullptr,
            (const unsigned char*)key.data(),
            (const unsigned char*)iv.data()) != 1) {
        std::string msg(
            "Crypto Error (EncryptMessage): OpenSSL could not "
            "initialize AES-GCM key and IV");
        throw Error::RuntimeError(msg);
    }

    // Encrypt message (with no IV prepended)
    if (EVP_EncryptUpdate(context.get(), ct.data(), &len, pt, pt_len) != 1) {
        std::string msg(
            "Crypto Error (EncryptMessage): OpenSSL could not update "
            "AES-GCM encryption");
        throw Error::RuntimeError(msg);
    }
    ct_len = len;

    // Get encrypted text, if any, still buffered (when len != 0 mod blocksize)
    if (EVP_EncryptFinal_ex(context.get(), ct.data() + len, &len) != 1) {
        std::string msg(
            "Crypto Error (EncryptMessage): OpenSSL could not finalize "
            "AES-GCM encryption");
        throw Error::RuntimeError(msg);
    }
    ct_len += len;

    // Generate message's auth tag
    if (EVP_CIPHER_CTX_ctrl(context.get(), EVP_CTRL_GCM_GET_TAG,
            constants::TAG_LEN, tag) != 1) {
        std::string msg(
            "Crypto Error (EncryptMessage): OpenSSL could not get AES-GCM TAG");
        throw Error::RuntimeError(msg);
    }

    // Build and return encrypted output string with auth tag appended
    ct.resize(ct_len);
    ct.insert(ct.end(), tag, tag + constants::TAG_LEN);


    return ct;
}  // pcrypto::skenc::EncryptMessage


/*
 * Decrypt message.data() using AES-GCM authenticated decryption.
 *
 * Expects a 12 byte (96 bit) IV (sometimes called a nonce) and
 * an 16 byte (128 bit) authentication tag (sometimes called a MAC),
 * prepended and appended, respectively, the input cipher text:
 *     message = ciphertext + authentication tag
 * The authentication tag is not encrypted.
 *
 * Throws RuntimeError, ValueError,
 * CryptoError (message authentication failure).
 *
 * @param key         Secret AES-256 encryption key.
 *                    Generated by GenerateKey()
 * @param iv          96-bit initialization Vector (IV).
 *                    Generated by GenerateIV()
 * @param message     binary data to decrypt. Generated by EncryptMessage()
 *                    Includes appended authentication tag.
 *                    IV is separate (not prepended to message)
 * @param message_len Length of message in bytes
 * @returns Byte array containing decrypted data
 */
ByteArray pcrypto::skenc::DecryptMessage(
        const ByteArray& key, const char iv[constants::IV_LEN],
        const char *message, size_t message_len) {
    ByteArray pt(message_len);
    int len, pt_len;
    int res;

    // Sanity checks
    if (key.size() != constants::SYM_KEY_LEN) {
        std::string msg(
            "Crypto Error (DecryptMessage): Wrong AES-GCM key length");
        throw Error::ValueError(msg);
    }

    if (message_len < constants::TAG_LEN) {
        std::string msg(
            "Crypto Error (DecryptMessage): AES-GCM message smaller "
            "than minimum length (TAG length)");
        throw Error::ValueError(msg);
    }

    // Initialize decryption
    CTX_ptr context(EVP_CIPHER_CTX_new(), EVP_CIPHER_CTX_free);
    if (!context) {
        std::string msg(
            "Crypto Error (DecryptMessage): OpenSSL could not create "
            "new EVP_CIPHER_CTX");
        throw Error::RuntimeError(msg);
    }

    if (!EVP_DecryptInit_ex(context.get(), EVP_aes_256_gcm(),
            nullptr, nullptr, nullptr)) {
        std::string msg(
            "Crypto Error (DecryptMessage): OpenSSL could not "
            "initialize EVP_CIPHER_CTX with AES-GCM");
        throw Error::RuntimeError(msg);
    }

    if (!EVP_DecryptInit_ex(context.get(), nullptr, nullptr,
            (const unsigned char*)key.data(),
            (const unsigned char*)iv)) {
        std::string msg(
            "Crypto Error (DecryptMessage): OpenSSL could not "
            "initialize AES-GCM key and IV");
        throw Error::RuntimeError(msg);
    }

    // Decrypt message (IV is separate; omit appended auth tag)
    if (!EVP_DecryptUpdate(context.get(), pt.data(), &len,
            (const unsigned char *)message,
            message_len - constants::TAG_LEN)) {
        std::string msg(
            "Crypto Error (DecryptMessage): OpenSSL could not decrypt "
            "with AES-GCM");
        throw Error::RuntimeError(msg);
    }
    pt_len = len;

    // Extract the auth tag appended to the message
    if (!EVP_CIPHER_CTX_ctrl(context.get(), EVP_CTRL_GCM_SET_TAG,
            constants::TAG_LEN,
            (unsigned char *)message + message_len - constants::TAG_LEN)) {
        std::string msg(
            "Crypto Error (DecryptMessage): OpenSSL could not get AES-GCM TAG");
        throw Error::RuntimeError(msg);
    }

    // Get decrypted text, if any, still buffered (when len != 0 mod blocksize)
    res = EVP_DecryptFinal_ex(context.get(), pt.data() + len, &len);
    if (res < 1) {
        std::string msg(
            "Crypto Error (DecryptMessage): AES_GCM authentication "
            "failed, plaintext is not trustworthy");
        throw Error::CryptoError(msg);
    } else {
        pt_len += len;
    }

    // Build and return decrypted output string
    pt.resize(pt_len);
    return pt;
}  // pcrypto::skenc::DecryptMessage
