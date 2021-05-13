### auto_handle_sgx.h

此标头提供Win32特有的traits类，以与AutoHandle类一起使用。 此外，它还提供typedef，以使代码更简洁一些，因为不需要AutoHandle类的长模板版本。

### auto_handle.h

该头文件提供了一个模板类，该模板类可用于确保在遇到异常等情况时不会泄漏资源句柄。（翻译）

### base_enclave.h/.cpp

ecall，初始化enclave数据

### enclave_data.h/.cpp

获取enclave公共数据、隐私数据的信息、大小，消息签名加密解密，数据序列化反序列化

### enclave_utils.h/.cpp

重构的能在enclave使用的printf、log、gettimer

### epid_signup_helper.h/.cpp

（猜测）使用EPID向ias进行验证，从而验证sgx

### ext_work_order_info.h/ext.work_order_info_impl.h/.cpp（未实现）

验证证明信息并返回秘钥，获取订单额外信息（）

### iohandler_enclave.h/.cpp

提交I/O请求工具， TcfExecuteIoCommand~~~~

### signup_enclave_common.h/.cpp

初始化enclave所需函数

- 创建enclave数据

- 计算公共数据大小

- 计算数据大小

- 解封数据

### signup_enclave_util.h/.cpp

计算SHA256

### signup_helper.h/.cpp

帮助注册新的enclave

- 验证enclave信息

- 验证证明信息

### epid_signup_helper.h/.cpp

定义signup_helper子类（猜测）使用EPID向ias进行验证，从而验证sgx

### dcap_signup_helper.h/.cpp

定义signup_helper子类 与EPID类似，使用DCAP进行验证

### wrok_order_data_handler.h/.cpp

处理订单数据，包括初始化数据秘钥、打包解包、获取秘钥、获取iv等

### work_order_enclave_common.cpp

ecall 获取序列化的响应

### work_order_key_info.h

获得对称秘钥、订单秘钥、签名秘钥、获得验证秘钥签名、获得签名等函数（单纯的讲ByteArray转化为base64编码的字符串）

### work_order_processor.h/.cpp

订单处理器，包含计算\验证签名，计算\验证哈希，解析订单，创建返回值等函数




