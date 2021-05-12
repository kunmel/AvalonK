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

#pragma once

#include <string>
#define READSIZE 256
#define WRITESIZE 256
using namespace std;
class CryptoHelper {
public:
    CryptoHelper(std::string file_name);

    std::string GenerateKey();
    void SetKey(std::string hex_key);
    string EncryptData(std::string data);
    string DecryptData(std::string data);
    string WriteFile(std::string data);
    string ReadFile();
    string EncryptFile();
    string DecryptFile();
    uint32_t DeleteFile();
    string WriteFileBinary(std::string data);
    string WriteMidFile(std::string data);
    string WriteFinalFile(std::string data);
    string ReadFileBinary();
    string ReadMidFile();
    string EncryptFileBinary();
    string DecryptFileBinary();

    std::string file_name;
    std::string mid_file;
    std::string final_file;
    std::string hex_key;
};  // class CryptoHelper

std::string return_sb();