#include <string>
#include <fstream>
#include <iostream>
#include <stdio.h>

using namespace std;

int main(){
    ofstream write_file("解密测试文件生成.txt");
    write_file << "我解密成功啦!";
    write_file.close();
    return 0;
}