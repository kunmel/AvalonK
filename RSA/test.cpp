#include "rsa.h"
#include <iostream>


using namespace std;


void test()
{
	RSA rsa;
	KEY key = rsa.GetAllkey();
	time_t p0, p1, p2;
	cout << "e = " << key.m_ekey << endl;
	cout << "d = " << key.m_dkey << endl;
	p0 = time(NULL);
	rsa.EncryptionFile("Test.exe", "Test1.exe");
	p1 = time(NULL);
	cout << p1 - p0;
	rsa.DecryptFile("Test1.exe", "Test.back.exe");
	p2 = time(NULL);
	cout << p2 - p1;
}


int main()
{
	test();
	cout << "finish!" << endl;
	return 0;
}
