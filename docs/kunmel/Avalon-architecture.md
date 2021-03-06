## Avalon-architecture  阅读笔记

#### 2.2.1 可信计算API

* Work Order 可以通过前端UI、命令行工具以及DLT上运行的智能合约提交。
* 收据可由工作者、请求者或其他参与方签名并提交。一个交易请求可有多个收据。

**两种操作模式**

* **代理模式**：依赖于DLT上的智能合约或链码来管理上述API。
  * DLT连接器实现DLT与TCS间交互。
  * 可插拔的链接器对DLT的API进行抽象，使一个TCS能够连接到多个DLT。
  * 请求者利用区块链上的Avalon代理API以及区块链特定编程模型进行部署。
* **直接模式**：为上述API提供JSON RPC API。TCS侦听器描述了直接模式API的入口点。  直接模式作为代理模式的补充。

#### 2.2.2 工作负载

可信工作者实现以下功能：

* 工作者认证服务
* 工作请求调用服务，用于验证工作请求和请求者签名的完整性，解密输入和加密输出数据，对结果进行签名，并创建工作单收据更新
* 外部输入输出插件接口，允许在TEE内部运行的工作负载从外部数据源读取数据或向外部数据源写入数据。实际的数据访问和格式是特定于应用程序的。
* 将工作订单执行与工作者密钥管理隔离开来，以减轻和限制导致工作订单处理区域受损的来自应用程序或用户错误的影响。只有固定功能密钥管理飞地(KME)访问工作人员的私有签名和加密密钥。KME预处理工作单请求和后处理工作单响应，防止处理工作订单的enclave访问工作者私钥。
* 部署工作负载的几种方法：

（1）构建时的预编译在工作者中

（2）在运行时加载脚本。脚本可在工作负载提交前从列表中选择或动态的由请求者提供。可以直接包含在工作订单请求中，或在请求中提供指向脚本位置的内容。

#### 2.2.3 键值存储

TCS组件间交互通过键值存储实现，在内存映射数据库LMDB上实现，键值存储连接器使其能够部署在单个或多个物理系统上。

#### 2.2.4 链上组件

链上组件在2.2.2中实现代理模式。

DLT上运行的分布式组件，在某些情况下Avalon的标准部署是足够的，有些情况则需要改变或扩展标准部署。

#### 2.2.5 前端应用程序

前端应用程序是用于初始化工作订单请求与使用工作订单响应的UI或脚本，可被称为客户端。现实中，前端应用程序可能包含链上以及链下的组件。

前端应用程序是特定于用例的。avlaon还提供avalon连接器库，可被应用程序直接重用，可以用于：

* 抽象出在使用代理/直接模式
* 在代理模式下抽象使用的是什么DLT
* 验证工作者证书信息

### 2.3 执行流

TCS生成一个新的worker，生成其证书信息并发布到区块链的worker目录中。

请求者搜索worker目录，找到worker并验证其证书信息，并存储其信息。

在工作订单调用时，请求者生成worker请求，可选的创建相应的工作订单收据。在工作订单执行阶段，TCS检索一个工作订单并执行。订单执行后，在处理工作订单响应时，TCS将工作订单响应放入区块链，并可选的更新工作订单收据。

### 2.4 工作者证书信息

如果使用了EPID证明机制，则工作人员将创建由英特尔®IAS签名的证明验证报告（AVR）；如果使用了DCAP证明机制，则工作人员将创建应用。

* MRENCLAVE 用于确定工作者的工作负载
* REPORTDATA 数据建立可信链，包含验证键的哈希

SGX enclave中的可信代码生成非对称签名/验证密钥对

* 每个enclave生命周期一对签名密钥
* 用于对加密密钥与工作订单结果进行签名
* 验证公钥公布在区块链上，哈希尺寸存入REPORTDATA
* 私钥存储在enclave密封存储

SGX enclave中的可信代码生成非对称加密密钥对

* 每个enclave一个或多个加密密钥对
* 用于加密一次性对称交易密钥
* 加密密钥生命周期由应用程序定义，可以重用或一次性
* 公钥公布到区块链上，由encalve签名密钥签名
* 可重用的私钥存储在enclave密封存储，一次性私钥存储在enclave内存

### 2.5 工作订单执行保护

此处的工作订单执行序列保证工作订单的完整性与保密性。此处实现的是仅有一个worker的情况。

1.请求者在提交新的工作订单请求时执行以下操作:

* 生成一个一次性对称加密密钥SEK
* 通过SEK加密工作订单请求数据
* 计算请求的SHA256，利用SEK对其进行加密
* 利用enclave公钥加密SEK
* 可选的，利用验证密钥对SHA256哈希签名

2.工作者执行以下操作：(工作者就是SGX enclave中的可信代码)

* 解密SEK
* 解密请求数据
* 计算请求的SHA256
* 解密请求中提供的哈希值，并比较
* 如果提供了哈希值的签名，使用请求者的密钥验证
* 执行工作订单
* 利用SEK加密响应数据
* 计算响应的SHA256哈希
* 利用enclave私钥对哈希值签名

3.请求者接收工作订单响应后的操作：

* 检索工作者签名密钥
* 验证工作者生成的响应签名
* 检索提交请求时使用的SEK
* 从响应中解密数据数据项

一个工作请求可能有多个输入输出项目，每个都用自己的对称密钥加密。

## 3 可信计算服务

### 3.1 前端组件

前端组件包含两种模块：

* 直接模式API handler，执行请求者的JRPC请求
* DLT Bridge，连接到DLT并支持代理模型接口

直接模式API可以在两种模式下使用：

* 小规模安装的独立模式。处理程序通过其内置的HTTP侦听器接收传入的JRPC调用。
* 大规模安装的插件模型。处理程序不使用它的HTTP侦听器。相反，多个处理程序实例由一个负载平衡器或HTTP代理启动。

DLT Bridge与DLT有两种交互方式：

* 提交DLT特定的事务(更新worker信息，提交工作订单结果，提交工作订单收据)
* 能够可选的监听DLT事件

DLT Bridge通过直接模型API Handler间接与TCS中间件层交互。它允许重用现有的功能，并以一致的方式处理来自不同来源的所有请求。

### 3.2 中间件

TCS中间件包含键值存储管理器、工作者管理器、工作者队列管理器

前端与中间件组件的所有通信都是通过键值存储管理器实现的，键值存储管理器包含：

* 工作者目录，包含所有可用工作者的信息：证书信息、类型、执行参数
* 工作订单队列：包含工作订单请求、响应、收据(可选)

键值存储管理器是部署在LMDB上的包装器，提供JRPC API。为从运行在不同物理系统上的其他组件访问键值存储(LMDB)提供统一的机制。可在需要时用其他数据库替代LMDB。

某些大规模的Avalon部署可能需要用更具可扩展性的开源或商业选项替代LMDB。 移植KV Storage Manager以支持不同的基础数据库应该是一个相对简单的任务，并且，如果保留了其面向外部的API，则整个Avalon功能应保持不变。

工作者管理器负责：

* 创建工作者加密密钥、更新策略实施
* 维护worker pool的worker key manager。为实现高负载与冗余，每个池都要多个WKM实例。
* 通过独立的密钥管理支持工作者池的操作的worker manager API。

目前TCS手动部署工作者，管理员应用程序将用于在工作者目录中创建对应条目。未来，工作者管理器将被扩展以支持按需工作者部署。工作者管理器与工作者密钥管理器提供接口Redirect()：输入工作者id，返回调用密钥管理API的URI。

密钥管理API由工作者管理器与工作者密钥管理器实现，后者在可信代码中提供实际实现。工作者管理器作为代理并将请求转发给工作密钥管理器。

****************

跳过了一部分

***********************************

#### 3.3.1 Singleton Worker

singleton worker只在生成worker的特定物理系统中有一个实体。worker初始化时生成的Attestation信息记录在worker directory。worker秘钥可以在后续更新。

可以创建多个singleton worker来执行相同时间的workloads，但每个worker有自己的att信息、秘钥切保存在worker directory的单独记录中。如果有多个singleton worker执行相同的工作负载，请求者需要在对其进行负载均衡。

singleton worker无法迁移到其他物理系统，一般的TEE都能够支持基于硬件的att。迁移worker到其他物理系统是扩展性的重要问题，但这需要额外的在不同系统间安全转移worker秘钥的机制。

在worker pool情况下，singleton worker在相同TEE上执行order以及管理秘钥。一种默认行为是使用不同TEE进行秘钥管理、order执行来减轻和限制受侵害工人的影响，例如如果出现用户错误或暴露的应用程序漏洞。avalon可以在相同物理系统生成一个worker pool，包含一个秘钥管理实例TEE，以及一个order执行TEE。

#### 3.3.2 Worker Pool

worker pool 可以包含一个或多个Worker Key Management(WKM)以及一个或多个Workorder Processing(WP)。

WKM能够访问worker pool的私有加密秘钥以及签名秘钥，WP不能够访问。WP依靠WKM协助解密工作订单请求中的对称数据加密密钥。需要多个WKM来实现容错。多个WP实例提供高可用性以及扩展性。

WKM的策略：

* 秘钥转移策略：定义worker的私钥是否能够转移到其他WKM

* WP组合策略：
  
  * 在创建时硬编码：相应WPs的一个或多个MRENCLAVE值被编译到WKM的二进制文件。需要协调构建相应的WP和WKM二进制文件。首先创建一个或多个WP二进制文件，随后他们的MRENCLAVE值被用于创建WKM。
  
  * 初始化时动态设置：当一个WKM初始化时，被提供一组相应的WPs。这个列表不能更改，所有WKM实例都有相同的列表。

* WP定位策略：定义WP是否必须于WKM在相同物理系统中

* 最大运行同事运行的WP实例数量

当创建新的worker pool时，需要创建额外的WKM实例。一个WKM实例被创建时，他的att信息被用于整个新的worker pool。从请求者角度看他与singleton worker类似。在TCS外部不知道实际的WKM以及WP数量，除非已经限制了WKM与WP仅有一个。

整体流程：

1.工作单队列管理器将需要执行的工作单请求分派给K8S工作单扩展适配器。

2.适配器检查Worker Directory来查看是否有已经正在运行且可用的WP。如果没有WP正在运行，请求k8s启动WP。启动的WP标记自己为可用。

3.适配器使用JRPC向WP发送请求

4.WP标记自己为忙

5.WP调用worker manger的Redirect来获得WKM借口的端点(URI?)

6.WP调用WKM的GetRandomID

7.WP启动TEE并保存包含step6生成的ID的att信息

8.WP调用PreporocessWorkorder来获取数据加密秘钥

9.WP执行请求

10.WP调用PostprocessWorkorder来对work order响应进行重签名，使用worker签名秘钥

11.基于policy，WP可能重启TEE。如果不需要重启，则后续执行中step6、7可以跳过

12.基于policy，WP可以需要在执行一定量的请求后停止；WP将自己标记为不可用。否则WP保持运行且标记自己为可用。