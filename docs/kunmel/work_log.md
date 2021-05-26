## 2021.4.27

**希望实现的功能：编写workload(c++) --》 用openssl加密 --》 放到enclave-manager --》 通过脚本调用**

* 发现不能直接按教程部署多个workload的问题，解决

* 推测加密文件使用长度为32的ByteArray+AES256进行加密

* 原代码中使用了大量密码学的东西，看了半天但是感觉没法用

* 想用python，但原文中使用的个是c++与openssl，使用openssl，安装

* 使用openssl除了需要安装，还需要链接动态库，通过下列语句链接库并生成可执行文件：
  
  ```
  g++ filename.cpp -L ~/openssl -l ssl -l crypto
  ```

* 目前能够生成密钥，下一步实现加密

* 源代码中实现的方法是先提交请求，生成文件并返回key，再次发送key来读取信息

## 2021.4.28

* 确定加密方法是否是AES256

* 确定了使用的是AES-GCM-256加密方法，希望用common/app/crypto下的库进行加密，加密后传入进行测试

* 使用avalon/common/cpp提供的函数编写了加密的脚本,但不知道怎么去编译

* 尝试将原Cmake文件中没有用的部分注释后cmake&&make,但报错stdio.h: 没有那个文件或目录

* X 尝试删除gcc并重新安装来解决,重新配置了但没有用

* 按照https://www.cnblogs.com/wuchaodzxx/p/8916009.html重新编写了CMakeLists文件

* 编写后能够正常cmake,但make时有写函数报错未定义的引用,其中opensssl的函数问题可用以下命令解决
  
  ```
  find_package(OpenSSL REQUIRED)
  target_link_libraries(Demo OpenSSL::SSL)
  ```

* 目前仍残留部分未定义的引用问题

* 发现这种方法好像无法加密可执行文件,只能加密文本文件

## 2021.4.29

* 将全部其他文件放入crpto,将test文件放入外部,成功解决依赖问题

* 出现了"段错误"的报错,结果是一个函数没有写return

* 突然发现网络的docker容器莫名退出,重新start后,运行workload超时,不知道为什么

* 重新部署系统\网络后能够正常运行,

* 完成了外部加密的脚本编写,编写的脚本能够正常加密以及解密

## 2021.5.11

  前一段时间五一放假加上准备组会、presentation等工作没有更新

* 实现了二进制读取文件，通过RSA加密+解密再写回文件，经测试可以正常实现txt、exe的加密解密，其他格式未测试但应都能够支持。

* 加密99KB的exe文件，加密时间638s，解密时间823s，加密文件13,396KB

* 希望通过加密数据文件的加密方法对可执行文件进行加密,但暂未成功

* 目前的方法是二进制读取可执行文件为char*,转化为string,加密string,解密string,转化为char*在写入文件.

* 尝试过程中直接读取写入可以正常生成新的可执行文件.

* 尝试过程中加密没有问题(但不知道加密的是否正确),解密之后写入新的文件中时,新的文件类型会变化为application/octet-stream,原文件类型为application/x-sharedlib.

* 发现问题：二进制char*转字符串时包含大量\0，所以每次到\0就停止了，导致string缺失了大量信息。

* 发现问题：我是傻逼

* linux的可执行文件可以不用二进制的方式读而是直接使用普通的方式读写，直接生成string

* 又不知道哪里出了问题，原本编写的build.sh不能正常生成原本的文件了,下次修改

## 2021.5.12

* 在outTEE中的加密解密都能够正常运行，但修改workload进行解密存在一些问题

* 希望的流是可执行文件加密为字符串存入txt，enclave内的workload读取txt，解密字符串，再写入文件得到可执行文件，workload调用可执行文件

* 目前的问题是，如何实现读取txt并解密后的文件写入

* 今日在workload上调用c++标准库花费了很多时间，原有标准库函数无法使用，可能原因是其中使用的是sgxsdk/include/libcxx中的库，与原有库不同(iostream\fstream)，其他库暂时没有看【在pdf中写到，大多数都跟普通c++使用一致，但另一些进行了重构】

## 2021.5.13

* 暂时没有想到如何使用加密传输来的可执行文件

* 阅读了tc/sgx/tursted_worker_manager的代码并写了README

* 分析了enclave_manger下的代码

## 2021.5.17

* 阅读分析了enclave创建流程
* 下一步实验能否创建多个singleton
* 加载enclave是通过sgx_create_enclave函数实现的，enclave.cpp中的Enclave::LoadEnclave中调用了这个函数

## 2021.5.20

* 运行worker-pool启动失败，猜测某处通信断开，可能是依赖问题或地址问题。
* 创建kme成功后，创建wpe过程中向kme发送请求，没有收到响应。

## 2021.5.21

* 尝试配置了pre-release0.6， 发现能够正常启动worker pool，但无法启动fabric proxy model。

## 2021.5.25

* 几天都在尝试配置worker pool以及pre-0.6，但仍未发现报错问题是什么。

* pre-0.6能够正常建立worker pool但在fabric模式下仍会爆出之前的错误 DNS resolution failed for service: peer2.org1.example.com:7051 + failed to connect to all addresses。

* 正在尝试使用master下的minifabric配置代入到pre-0.6中从而解决这个问题。

* pre-0.6与当前master区别太大，还是希望从master入手

* 重启了服务器，问题转变成了Failed to initialize/signup enclave; Failed to initialize quote in enclave constructor: INTEL SGX ERROR: Unexpected error occurred.这个问题似乎之前遇到过，之后通过重新配置pre中的设置解决了，但现在无法这样解决了。

* 这个问题不是worker pool的问题，在运行singleton时也遇到了，重新配置hardware mode不起作用，目前不清楚解决办法。

## 2021. 5.26

* 重新配置SGX driver、PSW等最新版本后解决Failed to initialize/signup enclave; Failed to initialize quote in enclave constructor: INTEL SGX ERROR: Unexpected error occurred.但仍然报没有response的错误