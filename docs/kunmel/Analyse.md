# Glossary + Analyse

###  Enclave Avalon Worker

####  	KME + WPE

KME: 密钥管理，负责密钥管理以及控制WPE执行work order。

WPE: 执行请求，无法访问密钥且需要KME提供相关上下文。

#### 	Singleton

Avalon 的默认worker类型，同时管理密钥以及工作负载。

### graphene

一个库操作系统(或“LibOS”)，它在用户空间库中提供一个操作系统环境来执行应用程序。它用于执行在TEE中未修改的代码。

### Trusted compute service (TCS)

提供可信计算功能的服务。Avalon算作一种TCS。

### workload分析
workload是采用generic_client.py作为管理，这个文件是py文件，只是负责其他脚本的调用工作，没有加密。在avalon-shell中使用。

其他脚本均是cpp格式，是worker真正执行的逻辑，在enclave内部执行，没有加密，但通过enclave保证执行正确性与安全性。且访问外部数据都需要通过io_helper，通过向enclave发送command的方法进行。

### 希望实现的加密结构
| 加密 | 文件类型 | 运作方式 |
| ---- | ---- | ---- |
| 1 | C++ | 加密放入，解密后主动编译、运行(需要提前编写好逻辑、需要调用的数据等)|
| 2 | 可执行文件 | 加密放入，解密后直接调用(需要提前编写好逻辑、需要调用的数据等) |  
| 3 | 数据文件 | 从数据库等位置读取出后存放在txt等类型文件中，加密后放入，读取时先解密再使用 |




