#pragma once
#include <fstream>
#include <iostream>
#include <boost/multiprecision/cpp_int.hpp>//��������
#include <boost/multiprecision/random.hpp>//���������
#include <boost/multiprecision/miller_rabin.hpp>//���Լ��

#define NUM 20000
namespace bordm = boost::random;

/*
	1.������������
	2.����n
	3.����f(n)
	4.��1 < e < f(n)����ѡһ����f(n)���ʵ���e
	5.��e����f(n)��ģ��Ԫ��(��Ԫ)d
	6.��Կ��(e,n)
	7.˽Կ��(d,n)
*/

//�߾��ȵ�һ��λ��Ϊ1024λ����������
typedef boost::multiprecision::int1024_t DataType;


struct KEY
{
	DataType m_ekey;
	DataType m_dkey;
	DataType m_pkey;
};

class RSA
{
	KEY m_key;
	void Key();//���ɹ�Կ��˽Կ
	
	DataType Prime();//�õ����� ��
	DataType Pkey(DataType prime1, DataType prime2);//����n
	DataType Orla(DataType p, DataType q);//����f(n)
	DataType Ekey(DataType orla);//���㹫Կe ��
	DataType Dkey(DataType orla, DataType ekey);//����˽Կd ��
	DataType ecrept(DataType data, DataType ekey, DataType pkey);//��
	DataType decrept(DataType data, DataType dkey, DataType pkey);
	bool isPrimeBigInt(DataType data);//�ж�һ�����ǲ������� ��
	DataType getGcd(DataType data1, DataType data2);//շת����������Լ��(ŷ������㷨)
	DataType exGcd(DataType a, DataType b, DataType& x, DataType& y);//��չ��ŷ������㷨 ��
public:
	RSA()
	{
		Key();
	}
	KEY GetAllkey();
	void EncryptionFile(const char * filename, const char * fileout);//���ļ����зֿ����
	void DecryptFile(const char * filename, const char * fileout);//���ļ����зֿ����
};

