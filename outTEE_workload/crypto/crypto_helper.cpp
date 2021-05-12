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
#include <cstring>
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
    cout << "Key:" << this->hex_key << endl;
}
//加密文件，读出信息，加密，写回
std::string CryptoHelper::EncryptFile() {
    string file_data;
    string encrypted_data;
    file_data = ReadFile();
    encrypted_data = EncryptData(file_data);
    WriteFile(encrypted_data);
    return "encrypt Done";
}
std::string CryptoHelper::DecryptFile() {
    string file_data;
    string decrypted_data;
    file_data = ReadFile();
    decrypted_data = DecryptData(file_data);
    WriteFile(decrypted_data);
    return "decrypt Done";
}
std::string CryptoHelper::ReadFile() {
    ifstream read_file(this->file_name);
    istreambuf_iterator<char> begin(read_file);
    istreambuf_iterator<char> end;
    string file_data(begin,end);
    //cout << "meta_data:"  <<endl;
    //cout << file_data;
    read_file.close();
    return file_data;
}
std::string CryptoHelper::EncryptData(string file_data) {
    std::string encrypted_data = crypto::EncryptData(file_data, this->hex_key);
    //cout <<"encrypted_data:" <<endl;
    //cout<< encrypted_data;
    return encrypted_data;
}
std::string CryptoHelper::DecryptData(string file_data) {
    std::string decrypted_data = crypto::DecryptData(file_data, this->hex_key);
    //cout <<"encrypted_data:" <<endl;
    //cout<< decrypted_data;
    return decrypted_data;
}
std::string CryptoHelper::WriteFile(string file_data) {
    ofstream write_file(this->file_name);
    write_file << file_data;
    write_file.close();
    return  "WRITTEN";
}
// std::string CryptoHelper::ReadFileBinary() {
//     string file_data="";
//     std::ifstream fin(this->file_name, std::ifstream::binary);
//     std::ofstream fout(this->final_file, std::ofstream::binary);
//     char* buffer = new char[READSIZE];
//     //fin.read(buffer, READSIZE);
//     //char buffer2[READSIZE];
//     //strcpy(buffer2,buffer);
//     // for (int i=0; i<READSIZE;i++){
//     //     cout << buffer2[i];
//     // }


//     while (!fin.eof())
// 	{       
// 		fin.read(buffer, READSIZE);
//         int curNum = fin.gcount();
//         char buffer2[curNum];
//         strcpy(buffer2,buffer);
//         cout << strlen(buffer)<<endl;
//         string add_data = buffer2;
//         cout<<add_data.length()<<endl;
//         cout<< add_data<<endl;
//         file_data = file_data + add_data;
//         //fout.write(buffer, READSIZE);
// 	}
//     return file_data;
// }
// std::string CryptoHelper::WriteFileBinary(string file_data) {
//     std::ofstream fout(this->final_file, std::ofstream::binary);
//     int len = file_data.length();
//     const char* buffer = file_data.c_str();
//     fout.write((char*)buffer, len);
//     return "WRITTEN";
// }
std::string CryptoHelper::WriteMidFile(string file_data) {
    ofstream write_file(this->mid_file);
    write_file << file_data;
    write_file.close();
    return  "WRITTEN";
}
std::string CryptoHelper::WriteFinalFile(string file_data) {
    ofstream write_file(this->final_file);
    write_file << file_data;
    write_file.close();
    return  "WRITTEN";
}
std::string CryptoHelper::ReadMidFile() {
    ifstream read_file(this->mid_file);
    istreambuf_iterator<char> begin(read_file);
    istreambuf_iterator<char> end;
    string file_data(begin,end);
    read_file.close();
    return file_data;
}
std::string CryptoHelper::EncryptFileBinary() {
    string file_data;
    string encrypted_data;
    //file_data = ReadFileBinary();
    file_data = ReadFile();
    encrypted_data = EncryptData(file_data);
    //WriteFileBinary(encrypted_data);
    WriteMidFile(encrypted_data);
    return "encrypt Done";
}
std::string CryptoHelper::DecryptFileBinary() {
    string file_data;
    string decrypted_data;
    file_data = ReadMidFile();
    decrypted_data = DecryptData(file_data);
    //WriteFileBinary(decrypted_data);
    WriteFinalFile(decrypted_data);
    return "decrypt Done";
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
