#include <string>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include "crypto_helper.h"
// #include "crypto/crypto_utils.h"
// #include "crypto/skenc.h"

using namespace std;

int main(){
    //string file_name = "guo";
    string file_name = "redecrptdemo";
    CryptoHelper   cryptohelper(file_name);
    cryptohelper.mid_file = "mid_file";
    cryptohelper.final_file = "final_file";
    string Key = cryptohelper.GenerateKey();
    cryptohelper.SetKey(Key);
    //cryptohelper.ReadFileBinary();
    //cryptohelper.ReadFile();
    //cryptohelper.EncryptFile();
    cryptohelper.EncryptFileBinary();
    cryptohelper.DecryptFileBinary();

    return 0;
}