# Flow

**Heart Disease**

Client将参数加密，打包到请求中，发送给worker。

worker 签名并计算结果，将结果加密发送给client。

所有到SGX的数据都是加密的，enclave外所有数据都是加密的，包括程序(逻辑)、数据、结果都是加密并签名的

数据从医院数据库取出，加密并存储在某些数据库中，可以是分布式数据库或区块链形式的分布式数据库，重点是分布式与数据加密(有密钥才能访问)。

其他程序无法访问enclave中的数据，因此可以保证只有有密钥的程序能够访问数据。

**genric_client**

genric_client: 判断直接模式还是代理模式，查询worker的详细信息（1），生成密钥与随机初始化向量，验证worker（2），创建woker_order，提交worker_order（3），生成worker order收据（4），得到结果（5），验证结果签名，展示收据。

（1）调用fabric_woker_registry中再调用fabric_wrapper的invoke_chaincode来使用worker链码的workerRetrieve方法。首先判断chaincode_name是否有效（有一个有效链码表），返回链码的方法，根据链码名称、方法名称、是否仅查询来调用cc_invoke（调用一个链码上的方法），调用后会返回查询结果（调用hfc查询）。

（2）查询worker时返回的details中含有proof_data，通过proof_data以及密钥进行验证

（3）首先创建worker order中的信息并签名，提交order到fabric_worker_order.py,调用workerOrderSubmit链码来提交order，成功会返回success

（4）生成收据，还没写如何实现

（5）得到结果需要去区块链上查询。首先调用获取结果的API，调用workOrderGet链码来查询是否完成，若已完成返回结果，若未完成等待完成。

**invoke_chaincode**

（1）获得预先编写好的有效调用表，包含链码名称以及链码的方法.如果调用的链码、方法名在表内则有效。

（2）调用cc_invoke，传递链码名称、方法名称、参数等。

​ **cc_invoke**

​ [1] 如果是查询操作，直接调用cc_query并调用hfc中的chaincode_query，返回结果。

​ [2] 如果不是查询操作，先获取背书，生成事务提交请求，创建事务上下文，提交交易请求，循环loop直到结束，建立响应并返回。（全部都是调用hfc中的接口）

（3）如果是查询操作，返回查询的结果。如果不是查询操作，返回是否成功(success/error)。

:one: Submit work order

User
generic_client.py
tx_committer.py/cc_invoke(order/workOrderSubmit)
order链码生成事件workOrderSubmitted
fabirc_work_order.py/get_work_order_submitted_event_handler(handler_func)   :left_right_arrow:   监听work order提交事件​
fabric_connector.py/start_wo_submitted_event_listener 
base_connector.py/sync_work_orders    :left_right_arrow:  将区块链以及Avalon上的work order同步
base_connector.py/work_order_submitted_event_handler  :left_right_arrow:   将work order提交到listener，得到结果并将结果存储到区块链

:two: Use singleton.toml

base_enclave_manger.py/EnclaveManager  :left_right_arrow:  此类使用了config文件的config("WorkerConfig")["worker_id"]
singleton_enclave_manager.py  :left_right_arrow:  使用了EnclaveManager类并传入了singleton.toml

:three: 创建enclave/worker

singleton_enclave_manager.py中定义了SingletonEnclaveManager

* init_kv_delegates(初始化kv存储 base_enclave_manager.py)
  
  * 链接config['KvStorage']['remote_url']中的kv存储 
  
  * 注册WorkerKVDelegate、WorkOrderKVDelegate (work_order_kv_delegate.py + worker_kv_delegate.py)

* setup_enclave(建立enclave base_enclave_manager.py)
  
  * 创建signup_data，此数据是本实例中所有可信函数的秘钥(_create_signup_data)
  
  * 获取各类秘钥、签名以及验证数据
  
  * 生成24byte随机加密秘钥

* 启动manager(执行启动流以及运行时流 work_order_processor_manager.py)
  
  * _manager_on_boot(singleton_enclave_manager.py)
    
    * 初始化包含worker信息的json串
    
    * 将worker_id以及json串写入kv存储
    
    * 在数据库中注册新的worker，写入新的mapping. 对于worker pool而言，存储worker_id -> enclave_id1,enclave_id2. (worker pool中一个workerid对应多个enclave，每个enclave对应一个WPE？)
    
    * 清空这个workerid对应的所有原有响应、订单等信息。因为重新配置后对应的秘钥等变化，原有的不可用了。
  
  * 启动对订单的监听

:four: worker pool bug analyse

* wpe_enclave_manager.py|main

* work_order_processor_manager.py|start_enclave_manager

* wo_processor_manager_helper.py|_manager_on_boot

* wpe_requester.py
  
  * register_wo_processor
  
  * _post_and_get_result

* 跳过一些

* base_jrpc_listener.py
  
  * render_POST
  
  * _process_request

* python jrpc manager.py 省略一些步骤

* kme_enclave_manager.py
  
  * RegisterWorkOrderProcessor（work order中method）
  
  * _execute_work_order

* sgx_work_order_request.py|SgxWorkOrderRequest.execute

* kme_enclave.i

* work_order_wrap.cpp|wo_handle.HandleWorkOrderRequest

* work_order.cpp|HandleWorkOrderRequest