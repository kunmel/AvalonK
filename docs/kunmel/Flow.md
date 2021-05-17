# Flow

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
  
  * 创建signup_data，此数据是本实例中所有可信函数的秘钥
  
  * 获取各类秘钥、签名以及验证数据
  
  * 生成24byte随机加密秘钥

* 启动manager(执行启动流以及运行时流 work_order_processor_manager.py)
  
  * _manager_on_boot(singleton_enclave_manager.py)
    
    * 初始化包含worker信息的json串
    
    * 将worker_id以及json串写入kv存储
    
    * 在数据库中注册新的worker，写入新的mapping. 对于worker pool而言，存储worker_id -> enclave_id1,enclave_id2. (worker pool中一个workerid对应多个enclave，每个enclave对应一个WPE？)
    
    * 清空这个workerid对应的所有原有响应、订单等信息。因为重新配置后对应的秘钥等变化，原有的不可用了。
    
    * 启动对订单的监听