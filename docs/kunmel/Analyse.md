# Glossary

### Enclave Avalon Worker

#### KME + WPE

KME: 密钥管理，负责密钥管理以及控制WPE执行work order。

WPE: 执行请求，无法访问密钥且需要KME提供相关上下文。

#### Singleton

Avalon 的默认worker类型，同时管理密钥以及工作负载。

### graphene

一个库操作系统(或“LibOS”)，它在用户空间库中提供一个操作系统环境来执行应用程序。它用于执行在TEE中未修改的代码。

### Trusted compute service (TCS)

提供可信计算功能的服务。Avalon算作一种TCS。

### mrenclave(安全区标识)

生成一个该安全区独有的密钥，同一台电脑的同一个安全区才可以解密数据（密钥输入：主机指纹+安全区指纹）。

### mrsigner(签名者标识)

基于安全区签名者密钥（主机指纹）生成一个密钥，同一台电脑上的不同安全区都可以解密，且安全区之间可以互相解密，方便迭代新版本且使不同的安全区之间共享数据。

### Enclave Definition Language(EDL)

SGX编程的核心，定义了Enclave与应用之间的ECALL/OCALL。ECALL定义在trusted区域，在enclave外调用，在enclave内执行。OCALL定义在untrusted，在enclvae内调用，在enclave外执行。

# Analyse

### workload分析

workload是采用generic_client.py作为管理，这个文件是py文件，只是负责其他脚本的调用工作，没有加密。在avalon-shell中使用。

其他脚本均是cpp格式，是worker真正执行的逻辑，在enclave内部执行，没有加密，但通过enclave保证执行正确性与安全性。且访问外部数据都需要通过io_helper，通过向enclave发送command的方法进行。

### 希望实现的加密结构

| 加密  | 文件类型  | 运作方式                                    |
| --- | ----- | --------------------------------------- |
| 1   | C++   | 加密放入，解密后主动编译、运行(需要提前编写好逻辑、需要调用的数据等)     |
| 2   | 可执行文件 | 加密放入，解密后直接调用(需要提前编写好逻辑、需要调用的数据等)        |
| 3   | 数据文件  | 从数据库等位置读取出后存放在txt等类型文件中，加密后放入，读取时先解密再使用 |

### SGX C++ 标准库

这些库被放在/opt/intel/sgxsdk/include/libcxx以及..../include/tlibc

大多数C++ 标准库都能够支持C11标准，且与普通的不可信部分的C++库使用方法相同。但有一些与普通不同，且进行了重构（好像是直接不支持）：

* 与I/O相关的函数或类，如iostream/fstream
* 取决于语言环境库的函数
* 需要system call的其他函数   

### enclave I/O 分析

* 主要位置在tc/sgx/trusted_worker_manager等位置
* 在使用I/O操作时都是通过TcfExecuteIoCommand发布命令，其中调用的是OCALL来发布命令。 OCALL指enclave外部调用。

### enclave setup分析

* 在setup时，创建avalon-enclave-manager的容器时调用/enclave_manager/Dockerfile，最终调用setup_${ENCLAVE_TYPE}.py来创建enclave
* 不同的setup_${ENCLAVE_TYPE}.py会使用不同的创建c++文件以及XXX_enclave_manager.py的main作为入口

### 部署新的workload

部署新的workload时，会将workload—tutorial中的helloworld复制到新的文件夹下，在遵循文档中的操作后，还需要对plug-in.cpp以及plug-in.h进行修改，其中plug-in.cpp需要

```
REGISTER_WORKLOAD_PROCESSOR(workload_id, Workload) / void Workload::ProcessWorkOrder(
改为
REGISTER_WORKLOAD_PROCESSOR("workload-master", WorkloadMaster) / void WorkloadMaster::ProcessWorkOrder(
```

plug-in.h需要

```
class Workload : public WorkloadProcessor {
改为
class WorkloadMaster : public WorkloadProcessor {
```

### 在avalon的io_helper中使用的加密相关

- 在io_helper中使用的是**AES-GCM-256**加密方法:加密时需要随机生成256位的密钥以及96位的iv\数据\密钥进行加密

- 此处采用的加密解密的过程都是读取文件内信息进行加密解密再写回的操作,并不是对文件进行加密

- 加密使用了common/cpp/crypto下的库,开发外部加密时也采用了这个库

- 这个库如果只用crypto等的话似乎与SGX并没有什么关系(?)

### 编写外部加密脚本

- 加密使用了common/cpp/crypto下的库

- 使用库时有一个相当复杂的CMake,但是通过将全部.cpp以及.h放入一个文件夹下解决了(笑

- 可以通过在outTEEworkload下的build.sh脚本来自动化进行cmake\make\run的功能

- 但暂时需要在test.cpp中修改加密文件的名称