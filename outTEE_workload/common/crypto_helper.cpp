/* Copyright 2020 Intel Corporation
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

//此文件只需要生成密钥以及加密

#include <string>
#include <fstream>
#include <iostream>
#include "crypto_helper.h"
#include "crypto_utils.h"

#define SUCCESS 0
#define FAILED -1

namespace crypto = tcf::crypto;
using namespace std;
CryptoHelper::CryptoHelper(std::string file_name) {
    this->file_name = file_name;
}
//生成密钥，此为256位密钥
std::string CryptoHelper::GenerateKey() {
    return crypto::CreateHexEncodedEncryptionKey();
}
void CryptoHelper::SetKey(std::string hex_key) {
    this->hex_key = hex_key;
    cout << "Key:" << this->hex_key;
}
//加密文件，读出信息，加密，写回
std::string CryptoHelper::EncryptFile() {
    string file_data;
    string encrypted_data;
    file_data = ReadFile();
    encrypted_data = EncryptData(file_data);
    WriteFile(encrypted_data);
}
std::string CryptoHelper::ReadFile() {
    ifstream read_file(this->file_name);
    istreambuf_iterator<char> begin(read_file);
    istreambuf_iterator<char> end;
    string file_data(begin,end);
    cout << "meta_data:"  << file_data;
    return file_data;
}
std::string CryptoHelper::EncryptData(string file_data) {
    std::string encrypted_data = crypto::EncryptData(file_data, this->hex_key);
    cout <<"encrypted_data:" << encrypted_data;
    return encrypted_data;
}
std::string CryptoHelper::WriteFile(string file_data) {
    ofstream write_file(this->file_name);
    write_file << file_data;
    write_file.close();
    return  "WRITTEN";
}

std::string return_sb(){
    std::cout <<  "you are sb";
    return "you are sb";
}

// void IoHelper::SetKey(std::string hex_key) {
//     this->hex_key = hex_key;
// }

// uint32_t IoHelper::ReadFile(std::string& read_data) {
//     std::string encrypted_data = Read(this->file_name);
//     if ( encrypted_data.empty() ) {
//         return FAILED;
//     }
//     read_data = crypto::DecryptData(encrypted_data, this->hex_key);
//     return SUCCESS;
// }

// uint32_t IoHelper::WriteFile(std::string data) {
//     std::string encrypted_data = crypto::EncryptData(data, this->hex_key);
//     uint32_t status = Write(this->file_name, encrypted_data);
//     return status;
// }

// uint32_t IoHelper::DeleteFile() {
//     uint32_t status = Delete(this->file_name);
//     return status;
// }
