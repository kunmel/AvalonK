#include <string>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include "crypto_helper.h"
// #include "crypto/crypto_utils.h"
// #include "crypto/skenc.h"

using namespace std;

int main(){
    string file_name = "guo";
    CryptoHelper   cryptohelper(file_name);
    string Key = cryptohelper.GenerateKey();
    cryptohelper.SetKey(Key);
    cryptohelper.EncryptFile();
    return 0;
}