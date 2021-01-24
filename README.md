# Filecash 公告

[English version](#FileCash-Announcement)

- Official: https://file.cash
- Github: https://github.com/filecash
- Slack: https://join.slack.com/t/filecashworkspace/shared_invite/zt-kca9ippi-pUniHv0K_zzneG9PxMz2Ow
- Medium: https://medium.com/@filecash
- Telegram: https://t.me/FilecashGlobal
- FICIPs: https://github.com/filecash/FICIPs/
- Filecash Roadmap: https://app.instagantt.com/shared/s/ZOdqrgBwE7zfgrBGkxA7/latest

很高兴Filecash社区在9月18日正式成立，将于9月19日晚些时候开放Github代码库，前期出于保护项目的考虑，测试阶段只会开放部分源代码，在主网上线前开源全部代码。

#### 1月24日 16GB版本再次延期公告
  新版本在回归测试中发现bug：重新同步节点会在高度(90582/151555/247855)出现数据同步异常，解决后再支持16GB扇区，具体日期待定，非常抱歉，给大家填麻烦了。
升级完的小伙伴，请回退到[v0.9.0-fix2](https://github.com/filecash/lotus/releases/filecash-v0.9.0-fix2)：
```
1.程序回滚：
  wget https://snapshot.file.cash/amd-filecash-v0.9.0-fix2.tar.gz && tar -zxvf amd-filecash-v0.9.0-fix2.tar.gz
  wget https://snapshot.file.cash/intel-filecash-v0.9.0-fix2.tar.gz && tar -zxvf intel-filecash-v0.9.0-fix2.tar.gz
2.代码回滚：
  git clone https://github.com/filecash/lotus_builder && cd lotus_builder && bash build.sh -a
```

#### 1月22日发布[第十三个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-fix3)，做了如下改进：
- 此版本为强制升级版本，在高度253510前完成升级。
- 升级网络版本号，Filecash支持16GB扇区 
- 在高度253510（北京时间 2021年1月25日 10:00）以后开放16GB扇区

##### 16GB扇区启用流程：
```
# 1.下载证明文件
  nohup lotus fetch-params 4GiB > fetch-params-4gb.log 2>&1 &
  nohup lotus fetch-params 16GiB > fetch-params-16gb.log 2>&1 &
# 2.启用lotus节点
  nohup lotus daemon > daemon.log 2>&1 &
# 3.初始16GB矿工
  export LOTUS_MINER_PATH=/root/.lotusminer-16gb
  nohup lotus-miner init --owner=f3xxxxxxxxx --sector-size=16GiB > init-16gb.log 2>&1 &
# 4.启动16GB矿工
  export LOTUS_MINER_PATH=/root/.lotusminer-16gb
  nohup lotus-miner run > miner-16gb.log 2>&1 &
```
##### 注意事项
- 现有4GB矿机硬件可兼容16GB扇区
- 16GB-miner和4GB-miner是两个不同的矿工号，可共用lotus节点和钱包地址
- 同一机器上可以跑16G-miner和4G-miner，不过两个miner是分开的，端口和目录不能重复


#### 1月21日 16GB版本延期公告
  社区内测期间发现16GB启用逻辑容易分叉，因此我们对这部分逻辑进行了升级，需要增加两天时间验证测试，所以很抱歉在此通知大家：16GB延期了，新的开放高度为253510（北京时间 2021年1月25日 10:00）。

#### 2021年1月19日 Filecash支持16GB扇区预告
  Filecash计划在高度244870‬‬（北京时间 2021年1月22日 10:00）开始支持16GB扇区。
- 16GB扇区和4GB扇区可共用lotus节点和钱包地址
- 现有4GB矿机硬件可完美兼容16GB扇区，16GB扇区资源消耗信息如下：
```
- 1.PC1封装层数为5层，PC1缓存空间144GB/任务，PC1消耗内存32GB/任务
- 2.PC2封装层数为4层，PC2缓存空间160GB/任务
- 3.C2内存消耗超过85GB，显存消耗超过4GB。
```

#### 12月30日 发布16GB测试程序
  Filecash即将支持16GB扇区，现发布lotus-bench程序供大家测试。
- PC1封装层数为5层
- PC2封装层数为4层
- C2内存消耗会超过200GB
```
# Intel lotus-bench 16GB
wget https://snapshot.file.cash/intel-lotus-bench-16G.tar.gz && tar -zxvf intel-lotus-bench-16G.tar.gz
# AMD lotus-bench 16GB
wget https://snapshot.file.cash/amd-lotus-bench-16G.tar.gz && tar -zxvf amd-lotus-bench-16G.tar.gz
# run lotus-bench
nohup ./lotus-bench sealing --sector-size 16GiB > bench-16g.log
```

#### 12月24日 发布[第十二个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-fix2)，做了如下改进：
- 此版本为强制升级版本，务必在高度172870‬(北京时间 12月28日10:00)前完成升级，否则将分叉。
- specs-actors版本升级为2.0，修改挖矿抵押，详情参考FICIPs提案 https://github.com/filecash/FICIPs/blob/main/FICIPS/ficip-0003.md
- 更新随机数稳定节点

#### 12月23日 第十二版本发布预告
- 12月24日将发布十二版本，此版本为强制升级版本，specs-actors版本升级为2.0
- 修改挖矿抵押，详情参考FICIPs提案 https://github.com/filecash/FICIPs/blob/main/FICIPS/ficip-0003.md

#### 12月11日 网络恢复公告
  filecash在高度124650（北京时间 12月11日16点10分）对网络进行了升级，升级后网络正常，节点正常同步。请没有重启lotus节点和lotus-miner矿工的小伙伴立即重启程序，已经重启的小伙伴不用操作。

#### 12月7日 发布的[第十一个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-fix1)，Filecash正式升级到v0.9.0，做了如下改进：
- filecash升级代码到v0.9.0
- 此版本为强制升级版本，务必在高度118150(北京时间 12月9日10:00)前完成升级，否则将分叉。
- filecash将在高度118150(北京时间 12月9日10:00)点火升级，网络版本升级为3，共识版本升级为2。
- 调整经济模型：奖励调整为180天线性释放。
- 钱包地址由t1/t2/t3升级为f1/f2/f3 
- 优化`lotus-miner sectors list`数据显示
- worker分组功能集成到`lotus-miner sealing workers`
- 优化任务数限制功能
- 完善lotus-bench
- 完善localnet-2k测试网

#### 12月5日 集成filecash社区开发的sector-checker工具[lotus-checker](https://github.com/filecash/lotus/tree/filecash/v0.9.0/cmd/sector-checker)：
- 对sectoer进行windowPost校验，酌情处理问题扇区
- 特别感谢[irocn](https://github.com/irocn/sector-checker)开放sector-checker源码。
- 特别感谢rectinajh和hooops，把sector-checker移植到filecash，并做了优化特别好用，感谢你们的贡献。
```
# env
git clone https://github.com/filecash/lotus_builder
bash build.sh -a
# build checker
make lotus-checker

# Scan all sectors
./lotus-checker checking --miner-id=t01000 --sector-size=4GiB --storage-dir=/hdd/miner_store
# Scan 0,1,2 sector
./lotus-checker checking --miner-id=t01000 --sector-size=4GiB --sector-id-fliter=0,1,2 --storage-dir=/hdd/miner_store
```

#### 12月4日 发布的[第十个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-rc1)，做了如下改进：
- 升级代码到v0.9.0
- 此为预览版，不强制升级，可与现有0.7共存。
- 修复一些bug。

【强制升级预告】：下次强制升级会在高度118150(北京时间 12月9日10:00)，请记得提前做好准备。

#### 11月26日 创世节点及水龙头账号余额销毁完成公告
为了维护链的稳定性以及早期矿工能免抵押参与，创世时为创世节点分配了1,500,000FIC，为水龙头分配了2,500,000FIC，共计4,000,000 FIC，目前Filecash主网已经上线，创世节点和水龙头已经完成他们的历史使命，为了所有Filecash参与者的共同利益，社区一致决定:
<font color='red'> **将创世节点和水龙头剩余的FIC全部销毁 (共计 3,733,011.67 FIC<sup>(1)</sup> )。** </font>

- 销毁时间

已于高度80710(北京时间 2020年11月26日10:00)完成销毁，[3个创世节点和2个水龙头共计销毁 3,733,011.66878‬ FIC](https://github.com/filecash/filecash_announcement/blob/master/destruction-of-balance-at-genesis-node-and-at-the-faucet-account.md)，销毁消息CID如下。

- 创世节点

t0100 销毁余额 493,566.79963<sup>(2)</sup> FIC  [bafy2bzaceaa6bhwmfdkwwhavckagaris6d6hqbikxt6babsiwhldelekyixuc](https://fic.filscout.io/zh/pc/message/bafy2bzaceaa6bhwmfdkwwhavckagaris6d6hqbikxt6babsiwhldelekyixuc)

t0101 销毁余额 493,566.79959 FIC  [bafy2bzacebdl7sy43g7qsvxukinush3mrhtjrnc6jbxwult7iahysv7zng636](https://fic.filscout.io/zh/pc/message/bafy2bzacebdl7sy43g7qsvxukinush3mrhtjrnc6jbxwult7iahysv7zng636)

t0102 销毁余额 493,566.79963 FIC  [bafy2bzacebivq436en3lahbbafq7ymjr7ls47yihhgt52oq27kdqtjig2bmj6](https://fic.filscout.io/zh/pc/message/bafy2bzacebivq436en3lahbbafq7ymjr7ls47yihhgt52oq27kdqtjig2bmj6)

- 水龙头

t0131 销毁余额 1,002,311.26994<sup>(3)</sup> FIC  [bafy2bzacedkfjz5nadz42prhdbhfn25nwmr2qsrsmczmmk6lld3estimss2pu](https://fic.filscout.io/zh/pc/message/bafy2bzacedkfjz5nadz42prhdbhfn25nwmr2qsrsmczmmk6lld3estimss2pu)

t0132 销毁余额 1,249,999.99999 FIC  [bafy2bzaceadkraybk4dyeqbxmo2smevw6x3lzhlnql7gsumqwncypuj4sa57o](https://fic.filscout.io/zh/pc/message/bafy2bzaceadkraybk4dyeqbxmo2smevw6x3lzhlnql7gsumqwncypuj4sa57o)

*备注 (1) : 3,733,011.67 FIC (4,000,000 FIC - 3 \* 6,433.2 FIC - 247,688.73 FIC)*

*备注 (2) : 493,566.7999 FIC (初始分配值 500,000 FIC - 初始矿工质押 0.125\*600 - 出块余额返还 10.597\*600 <已在高度51910余额重置>)*

*备注 (3) : 1,002,311.2699 FIC (初始分配值 1250,000 FIC - 高度51910-72070之间共计发放 570 FIC + [免抵押网络奖励支出 247,118.73 FIC](https://github.com/filecash/filecash_announcement/blob/master/filecash-step-reward-distribution.md))*

#### 11月25日 Filecash免抵押网络Step奖励发放完毕公告:
Filecash免抵押网络Step奖励已于高度77830(北京时间 2020年11月25日10:00)开始发放，高度78190(北京时间 2020年11月25日13:00)结束。
- 发放经历时间3小时，矿工可通过[Step奖励公告查看多签地址](https://github.com/filecash/filecash_announcement/blob/master/filecash-step-reward-distribution.md)。
- 采用多签方式发放奖励，共计发放奖励 247118.73 FIC。
- 如何使用多签领取奖励
``` 
    # 检查多签钱包状态    Balance(奖励总额)    Spendable(可提取的额度)
    lotus msig inspect <多签地址>
    # 发起多签转账交易，向 <矿工提取地址> 转帐 <矿工本次提取金额> FIC
    lotus msig propose --from <矿工Owner地址> <多签地址> <矿工提取地址> <矿工本次提取金额>
    # 验证交易是否成功
    lotus wallet balance <矿工提取地址>
```

#### 11月18日 Filecash主网上线公告：
 - 主网已经在高度58270(北京时间 11月18日15:00)正式启动，链上转账也已同步开启。
 - 主网启动后多家交易所宣布开启FIC充提并开通FIC现货交易，具体详情请查看各大交易平台官方公告。

#### 11月17日发布的[第九个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2-fix2)-免抵押网络Step2结束，主网即将开启，做了如下改进：
 - 此版本为强制更新版本
 - Filecash网络将在高度72070(北京时间 11月23日10:00)调整基础费率，增强随机数安全性
 - 修复rpc获取StateReplay接口
 - 修复最大任务数限制
 - 请继续保持算力增长，不要删除Step2网络数据。
 - 主网即将上线，版本更新频繁，如果发现有分叉的情况请做如下操作：
```
    1.备份私钥: lotus wallet export t3xxxxxxxx > t3xxxxxxxx.key
    2.关闭所有lotus程序
    3.重命名lotus目录: mv ~/.lotus  ~/.lotus-bak
    4.下载镜像文件: wget https://snapshot.file.cash/fic-snapshot-20201117.car (fic-snapshot-2020xxxx.car 每天凌晨2点更新当天镜像文件)
    5.导入镜像文件: env LOTUS_SKIP_GENESIS_CHECK=_yes_ lotus daemon --import-snapshot fic-snapshot-20201117.car
```

#### 11月16日 Step2结束公告-免抵押网络Step2即将结束，做了如下改进：
 - Step2已经在高度51910(北京时间 11月16日10:00)完成全网账户余额重置(rebalance)。
 - 所有参与矿工共享247123FIC奖励，奖励将在mixpay发放，请矿工们留意细则。
 - 所有在48910高度,免抵押网络Step2有扇区记录的矿工，会得到100FIC奖励，奖励直接发放到矿工账户
 - 请继续保持算力增长，不要删除Step2网络数据。

#### 11月14日发布的[第八个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2-fix)-免抵押网络Step2还在继续，做了如下改进：
- 此版本为强制更新版本
- 调整抵押费用，Step2会在高度49270(北京时间 11月15日12:00)更改预抵押值，降低到1FIC左右。
- 调整消息上链流程。
- 修复一些bug。
- 请继续保持算力增长，不要删除Step2网络数据。

#### 10月29日发布的[第七个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2)-开启免抵押网络Step2，做了如下改进：
- 调整经济模型。
- 修复一些bug。
- 请暂时不要删除Step1网络的数据。
- 请保存好免抵押网络Step1的数据和私钥，主网上线会有非对称映射。
- 请将免抵押网络Step1的挖矿地址和`lotus-miner info`命令界面截图发送至基金会邮箱filecash@file.cash作为非对称映射的部分参考。
欢迎各位参与者在社区中积极反馈，参与Filecash生态的建设。

一键编译：
https://github.com/filecash/lotus_builder

亲爱的Filecash爱好者，Filecash现已开放[Step2水龙头](https://faucet.file.cash)，以下是水龙头使用注意事项：
- 1.同IP同一个Git账号请勿频繁授权登录
- 2.同Git账号8小时内只能申领一次
- 3.t3xxxx...xx 地址永久只能申领一次
- 4.t3xxxx...xx 地址有交易后会生成 t0xxxx 地址
- 5.t3xxxx...xx + t0xxxx 地址一起填写可以继续领取水龙头

水龙头：https://faucet.file.cash


#### 10月15日发布的[第六个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0) ，做了如下改进：
- 密封大小调整为4G。
- PC1阶段SDR层数调整为8层。
- PC2阶段调整为1层。
- 调整算法为SHA512。
- 调整经济模型。
- 开放所有源码。

#### 9月29日发布的[第五个版本](https://github.com/filecash/lotus/releases/tag/filescash-incentive-testnet-v0.7.0-beta1) ，做了如下改进：
- 开启Filecash激励测试网

#### 9月28日发布的[第四个版本](https://github.com/filecash/lotus/releases/tag/filescash-testnet-v0.7.0-beta2-sha512) ，做了如下改进：
- sha256算法修改为sha512算法，在sha512算法下，AMD处理器与Intel处理器有相同的竞争力。

#### 9月25日发布的[第三个版本](https://github.com/filecoincash/lotus/releases/tag/v0.7.0-beta1-sha256) ，做了如下改进：
- 同步代码至0.7.0

#### 9月23日发布的[第二个版本](https://github.com/filecoincash/lotus/releases/tag/v0.5.7-beta2) ，做了如下改进：
- 封装修改为4G/16G版本。
- P1部分封装层数修改为2层。(2层方便快速出块，后期会调整为5层)

#### 9月19日发布的[第一个版本](https://github.com/filecoincash/lotus/releases/tag/v0.5.7-beta) ，做了如下改进：
- 封装修改为4G版本。
- P1部分封装层数修改为5层。
这两项改进将大幅降低内存使用量，降低参与门槛。

同时，今天会发布[sha512算法的测试版执行文件](https://github.com/filecoincash/filecoincash_doc/releases/tag/benchy-sha512-beta) ，矿工可使用该执行文件测试设备性能。

社区宣布成立后，经过大量社区意见沟通，大部分矿工提议希望给一些测试时间，预先准备好设备测试之后再开启测试奖励网，在此期间会与社区及矿工进行充分沟通，制定一份符合社区及矿工期望的测试奖励网规则。

#### 在下一个版本里，将会有更大的更新：
- 发起Filecash初版经济模型提案。
- 发布测试奖励网细则，并确认测试奖励网开启时间。

此版本仅为测试、意见收集版，非最终版本。

Filecash致力于构建更开放的IPFS存储网络。

附：[3800X/i7-8700 SHA512 对比结果](./bench/README.md)

使用方法参考：https://github.com/filecash/filecash_announcement/bench/

> bench.sh
```
nohup env FIL_PROOFS_USE_GPU_COLUMN_BUILDER=1 FIL_PROOFS_USE_GPU_TREE_BUILDER=1 RUST_LOG=info ./benchy prodbench --config config.json > log-bench.log 2>&1 &
```

> config.json
```
{
	"sector_size" : "4294967296",
	"porep_challenges" : 2,
	"porep_partitions" : 1,
	"post_challenges" : 20,
	"post_challenged_nodes" : 2,
	"stacked_layers" : 5,
	"num_sectors" : 1
}
```

# 

# Filecash Announcement

[中文版本](#Filecash-公告)

- Official: https://file.cash
- Github: https://github.com/filecash
- Slack: https://join.slack.com/t/filecashworkspace/shared_invite/zt-kca9ippi-pUniHv0K_zzneG9PxMz2Ow
- Medium: https://medium.com/@filecash
- Telegram: https://t.me/FilecashGlobal
- FICIPs: https://github.com/filecash/FICIPs/
- Filecash Roadmap: https://app.instagantt.com/shared/s/ZOdqrgBwE7zfgrBGkxA7/latest

The FileCash community was formally established on September 18th, 2020, and opened the Github code base on September 19th, 2020. In the initial stage, only some part of the source code will be available during the test stage. The entire source code is planned to be unveiled after mainnet’s launch.

#### Announcement on 16GB sector version being postponed - Jan 24th. 
  A bug was detected at the regression testing in the latest version, which is abnormal data synchronization at the block height of 90582/151555/247855 when node resynchronizing. We will resolve this problem before the on-lining of 16GB sector. We sincerely apologize for all inconvenience caused, please follow our furthur announcement. 
For those who have upgraded already, please rerun to [v0.9.0-fix2](https://github.com/filecash/lotus/releases/filecash-v0.9.0-fix2)：
```
1.System rerun:
  wget https://snapshot.file.cash/amd-filecash-v0.9.0-fix2.tar.gz && tar -zxvf amd-filecash-v0.9.0-fix2.tar.gz
  wget https://snapshot.file.cash/intel-filecash-v0.9.0-fix2.tar.gz && tar -zxvf intel-filecash-v0.9.0-fix2.tar.gz
2.Code rerun:
  git clone https://github.com/filecash/lotus_builder && cd lotus_builder && bash build.sh -a
```

#### The No.13 version released on Jan 25nd made improvements as below:
- This version requires compulsory upgrade and it should finish before the block height reaches 253510th, otherwise your on-chain data might be forked.
- Network version upgrade and Filecash supports 16GB sector; 
- Filecash plans to support 16GB sector at the block height of 253510(at around 10:00am Jan 25, 2021 Beijing time);

##### 16GB sector initiation process
```
# 1.Download verification file
  nohup lotus fetch-params 4GiB > fetch-params-4gb.log 2>&1 &
  nohup lotus fetch-params 16GiB > fetch-params-16gb.log 2>&1 &
# 2.Initiate lotus node
  nohup lotus daemon > daemon.log 2>&1 &
# 3.Initiate 16GB miner
  nohup lotus-miner init --owner=f3xxxxxxxxx --sector-size=16GiB > init-16gb.log 2>&1 &
# 4.Initiate 16GB miner
  nohup lotus-miner run > miner-16gb.log 2>&1 &
```

##### Special notice
- Miner hardware for 4GB sector is also compatible with the 16GB sector;
- 16GB-miner and 4GB-miner have their own miner number, but they can share a single lotus node and wallet address;
- 16G-miner and 4G-miner can operate on one particular set of equipment, whereas these two miners are separated, which means their terminals and catalogue should be different.


#### Announcement - 16GB sector on-lining is postponed on 21th January, 2021
  Frequent forking of on-chain data was detected at the initiation logic of 16 GB sector during the internal community test, we hence upgraded part of the logic and it should finish within two more days for test verification. We have hereby determined, for the sake of over-rounded upgrade experience, that the 16GB sector initiates at the block height of 253510(10:00, January 25, 2021, Beijing time).

#### Filecash to support 16GB sector on 19th January, 2021
  Filecash plans to support 16GB sector at the block height of 244780(at around 10:00am Jan 22, 2021 Beijing time).
- Lotus node and wallet address can be used by both 16GB and 4GB sectors.
- Miner hardware for 4GB sector is also compatible with the 16GB sector, 16GB consumption level:
```
- 1.PC1 sealing has 5 layers, PC1 cache 155GB/task, PC1 RAM consumption 32GM/task;
- 2.PC2 sealing has 4 layers, PC2 cache 1160GB/task;
- 3.C2 RAM consumption exceeds 85GB, VRAM consumption exceeds 4GB.
```

#### 16GB sector testing program launch on 30th December
  Filecash will support 16GB sector soon and the lotuc-bench program is available for your testing
- PC1 sealing is 5 layers
- PC2 sealing is 4 layers
- C2 RAM consumption estimated to be over 200GB
```
# Intel lotus-bench 16GB
wget https://snapshot.file.cash/intel-lotus-bench-16G.tar.gz && tar -zxvf intel-lotus-bench-16G.tar.gz
# AMD lotus-bench 16GB
wget https://snapshot.file.cash/amd-lotus-bench-16G.tar.gz && tar -zxvf amd-lotus-bench-16G.tar.gz
# run lotus-bench
nohup ./lotus-bench sealing --sector-size 16GiB > bench-16g.log
```

#### [The 12th version](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-fix2) has been released on December 24, with the following improvements: 
- This version is a mandatory upgrade version. The upgrade must be completed before block height 172870 (10:00 on December 28, Beijing time), otherwise it will be forked. 
- The specs-actors version is upgraded to 2.0, and the mining mortgage is modified. For details, please refer to [the FICIPs proposal](https://github.com/filecash/FICIPs/blob/main/FICIPS/ficip-0003.md)
- Random number stable nodes will be updated. 

#### Advance Notice of NO.12 Version Release on December 23
- NO.12 version will be released on December 24, this version is a mandatory upgrade version, and the specs-actors version will be upgraded to 2.0
- The mining mortgage will be modified, For details, please refer to [the FICIPs proposal](https://github.com/filecash/FICIPs/blob/main/FICIPS/ficip-0003.md)

#### The Announcement of Network Recovery on 11th December
This afternoon Filecash upgraded the network at the block height of 124650 (estimated to be 16:10 11th December Beijing time).  After the upgrade, the network runs normally and the nodes are in normal synchronization. Please restart the program immediately if you have not restarted the Lotus node and the Lotus - Miner.

#### [The 11th version](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-fix1) released on 7th December - Filecash upgrade to v0.9.0
- Filecash codes upgraded to v0.9.0
- This version requires mandatory upgrade, so please upgrade BEFORE the block height of 118150(estimated to be 10:00 9th December Beijing time). Otherwise, your network will be forked;
- New Filecash network will launch at the the block height of 118150(estimated to be 10:00 9th December Beijing time) with network version changing to 3 and consensus version to 2;
- Token economics adjustment: Mining reward will be released linearly at a daily ratio of 1/180 for 180 days;
- Wallet address upgrade from t1/t2/t3 to f1/f2/f3;
- Worker grouping function is integrated to `lotus-miner sealing workers`;
- Optimized `lotus-miner sectors list` data display;
- Optimized the function of limitation of task amount;
- Improved lotus-bench
- Improved localnet-2k test-net

#### Announcement Sector-checker tool kit [lotus-checker](https://github.com/filecash/lotus/tree/filecash/v0.9.0/cmd/sector-checker) developed by Filecash community on 5th December
- Verify sector windowPost
- Acknowledgement of [irocn](https://github.com/irocn/sector-checker) for sector-checker source code provision
- Attribute to rectinajh and hooops's integration of  sector-checker into filecash. 
We genuinely appreciate such project optimization contributions from the community.
```
# env
git clone https://github.com/filecash/lotus_builder
bash build.sh -a
# build checker
make lotus-checker

# Scan all sectors
./lotus-checker checking --miner-id=t01000 --sector-size=4GiB --storage-dir=/hdd/miner_store
# Scan 0,1,2 sector
./lotus-checker checking --miner-id=t01000 --sector-size=4GiB --sector-id-fliter=0,1,2 --storage-dir=/hdd/miner_store
```

#### [The 10th version](https://github.com/filecash/lotus/releases/tag/filecash-v0.9.0-rc1) released on 4th December 

Improvements have been made as below:
- Code upgraded to v0.9.0;
- This is a preview version which does not require mandatory upgrade and co-exists with the 0.7 version;
- Some bug fixed.
 
* Preview on mandatory upgrade: Please be fully prepared for the next mandatory at the block height of 118150(10:00 9th December Beijing time)


####  Announcement on destruction completion of FIC balance at the genesis node and faucet 26th Nov

For the stability of the Filecash blockchain and friendly miner participation at the early stage, 1,500,000 FIC were allocated to the genesis node and 2,500,000FIC to the faucet, totaling 4,000,000FIC. Filecash main network is now online, and the genesis nodes and faucets have completed their mission; for the common benefit of all Filecash participants, the community has unanimously hereby determined that::
<font color='red'> ** all balance at the genesis node and faucet to be destroyed. (totaling 3,733,011.67 FIC<sup>(1)</sup> )。** </font>
 
- Destruction time

A total amount of [3,733,011.66878‬ FIC](https://github.com/filecash/filecash_announcement/blob/master/destruction-of-balance-at-genesis-node-and-at-the-faucet-account.md at three genesis nodes and two faucets has been destroyed at the block height of 80710(10:00 26th Nov. 2020 Beijing time) and the CID info is as follows:
 
- Genesis node

t0100 balance destroyed 493566.79963<sup>(2)</sup> FIC [bafy2bzaceaa6bhwmfdkwwhavckagaris6d6hqbikxt6babsiwhldelekyixuc](https://fic.filscout.io/zh/pc/message/bafy2bzaceaa6bhwmfdkwwhavckagaris6d6hqbikxt6babsiwhldelekyixuc)

t0101 balance destroyed 493566.79959 FIC [bafy2bzacebdl7sy43g7qsvxukinush3mrhtjrnc6jbxwult7iahysv7zng636](https://fic.filscout.io/zh/pc/message/bafy2bzacebdl7sy43g7qsvxukinush3mrhtjrnc6jbxwult7iahysv7zng636)

t0102 balance destroyed 493566.79963 FIC [bafy2bzacebivq436en3lahbbafq7ymjr7ls47yihhgt52oq27kdqtjig2bmj6](https://fic.filscout.io/zh/pc/message/bafy2bzacebivq436en3lahbbafq7ymjr7ls47yihhgt52oq27kdqtjig2bmj6)
 
- Faucet

t0131 balance destroyed 1002311.26994<sup>(3)</sup> FIC [bafy2bzacedkfjz5nadz42prhdbhfn25nwmr2qsrsmczmmk6lld3estimss2pu](https://fic.filscout.io/zh/pc/message/bafy2bzacedkfjz5nadz42prhdbhfn25nwmr2qsrsmczmmk6lld3estimss2pu)

t0132 balance destroyed 1249999.99999 FIC [bafy2bzaceadkraybk4dyeqbxmo2smevw6x3lzhlnql7gsumqwncypuj4sa57o](https://fic.filscout.io/zh/pc/message/bafy2bzaceadkraybk4dyeqbxmo2smevw6x3lzhlnql7gsumqwncypuj4sa57o)

*Remarks (1) : 3,733,011.67 FIC (4,000,000 FIC - 3 \* 6,433.2 FIC - 247,688.73 FIC)*

*Remarks (2) : 493,566.7999 FIC (Initial value 500,000 FIC - Initial pledge 0.125\*600 - block generation return 10.597\*600 <at the block height of 51910 balance reset>)*

*Remarks (3) : 1,002,311.2699 (Initial value 1250,000 FIC - 570FIC were distributed at the block height between 51910-72070 - [reward distribution at the free-of-pledge network 247,118.73 FIC](https://github.com/filecash/filecash_announcement/blob/master/filecash-step-reward-distribution.md))*


#### Announcement Filecash free-of-pledge network Step reward distribution conclusion
Filecash free-of-pledge network Step reward distribution started at the block height of 77830(10:00 25th Nov. 2020 Beijing time) and finished at the block height of 78190(13:00 25th Nov. 2020 Beijing time) 
- Reward distribution detail is available at:
https://github.com/filecash/filecash_announcement/blob/master/filecash-step-reward-distribution.md
- A total amount of 247,118.73 FIC was distributed by means of multiple signature
- How to claim multiple signature reward:
```
    # Check multiple signature wallet status    Balance(Amount of reward)    Spendable(Amount can be withdrawn)
    lotus msig inspect <Multiple signature address>
    # Create multiple signature transaction, transfer to <Miner reward receiving address> with <Amount of withdraw> FIC
    lotus msig propose --from <Miner Owner address> <Multiple signature address> <Miner reward receiving address> <Amount of withdraw>
    # Check whether transaction is successful
    lotus wallet balance <Miner reward receiving address>
```

#### Announcement on Filecash mainnet launch 18th Nov
- The Filecash main net has already launched at the block height of 58270, and FIC transfer on the main net is alive.
- There's a number of exchange listings today. More listings will be announced soon!

#### [The ninth version](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2-fix2) released on 17th November - Launch of main net and conclusion of free-of-pledge Step2 network (https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2-fix2)
- This version requires mandatory upgrade;
- Filecash network will adjust its fee rate for enhancement of random number security at the block height of 72070(estimated to be at around 10:00 23rd November Beijing time);
- Fix the rpc API to get StateReplay;
- Fix limit of max task number;
- Please continue to increase your mining power and do NOT delete any data from Step2 network;
- There are multiple upgrades before the launch of main net. Please stick to instructions as below if there is fork of data:
```
    1. Back-up private key: lotus wallet export t3xxxxxxxx > t3xxxxxxxx.key
    2. Close all lotus programme
    3. Rename lotus catalogue: mv ~/.lotus  ~/.lotus-bak
    4. Download the mirror file at: wget https://snapshot.file.cash/fic-snapshot-20201117.car (The mirror file will upgrade at 2:00am Beijing time on a daily basis, fic-snapshot-2020xxxx.car)
    5. Import mirror file: env LOTUS_SKIP_GENESIS_CHECK=_yes_ lotus daemon --import-snapshot fic-snapshot-20201117.car
```

#### Announcement on Step2 conclusion 16th Nov
Free-of-pledge network setp2 has concluded and improvement has been made as below.
- Step2 has reset the balance of all accounts(account re-balance) at the block height of 51910(estimated to be 10:00 16th Nov Beijing time);
- A total amount of 247,123FIC has been mined as participation reward during the past period. Please be kindly noticed that such reward will be distributed to your account on MixPay;
- All miners who had sector record at the 48910th block will receive 100FIC as reward. Such reward will be distributed to your miner account directly;
- Please continue to increase your mining power and do NOT delete any data from Step2 network.

#### [The eighth version](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2-fix) released on 14th Nov - Free-of-pledge network setp2 is ongoing with improvements made as below.
- This version requires mandatory upgrade;
- Pledge fee adjusted. Step2 is projected to adjust the pledge value to around 1FIC at the block height of 49270(estimated to be 12:00 15th Nov Beijing time);
- Information on-chain process adjusted;
- Bug fixed;
- Please continue to increase your mining power and do NOT delete any data from Step2 network.

#### [The seventh version](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2)released on October 29  - Launch of free-of-pledge network Step2 was released on 29th October with improvements as belows.
- Economic model adjusted;
- Some bugs fixed;
- Please do NOT delete data from the step1 network;
- Please ensure to store the data and private key from the step1 network, as there will be asymmetric mapping at the main-net launch;
- Please send the mining address from the step1 along with a screenshot of the `lotus-miner info` command interface to the Foundation Email:filecash@file.cash ; Such materials will be taken as references for the asymmetric mapping.

One-click compilation:
https://github.com/filecash/lotus_builder

Dear Filecash community, [the Step2 faucet](https://faucet.file.cash) is now available and below is the must-knows:
1. Please do not authorize and login with the same Git account from one IP address frequently.
2. One Git account can only claim once within 8 hours.
3. t3xxxx...xx address can claim once only.
4. A t0xxxx address will be generated after a t3xxxx...xx address makes a transaction.
5. Filling in the t3xxxx...xx + t0xxxx address together enables you to claim the faucet.

The Step2 faucet: https://faucet.file.cash

#### [The sixth version](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0) released on October 15 ,The following improvements have been made:
- Packaging size changed to 4G. 
- SDR layer at PC1 stage changed to 8. 
- SDR layer at PC2 stage changed to 1.
- Algorithm SHA512 applied. 
- Economic model adjusted. 
- All source codes open to public. 

#### [The fifth version](https://github.com/filecash/lotus/releases/tag/filescash-incentive-testnet-v0.7.0-beta1) released on September 28 ,The following improvements have been made:
- Open filecash incentive testnet.

#### [The fourth version](https://github.com/filecash/lotus/releases/tag/filescash-testnet-v0.7.0-beta2-sha512) released on September 28 ,The following improvements have been made:
- Sha256 algorithm is modified to sha512 algorithm. Under sha512 algorithm, AMD processor has the same competitiveness as Intel processor.

#### [The third version](https://github.com/filecoincash/lotus/releases/tag/v0.7.0-beta1-sha256) released on September 25 ,The following improvements have been made:
- Sync code to 0.7.0

#### [The second version](https://github.com/filecoincash/lotus/releases/tag/v0.5.7-beta2) released on September 23 ,The following improvements have been made:
- The encapsulation was modified to 4G / 16g version.
- The number of encapsulation layers in P1 is changed to 2 layers. (2 layers are convenient for quick block production, and will be adjusted to 5 layers later)

#### [The first version](https://github.com/filecoincash/lotus/releases/tag/v0.5.7-beta) released on september 19 ,The following improvements have been made:
- Package is modified to 4G version.
- The number of packaging layers in P1 part is modified to 5 layers.
These two improvements will significantly reduce memory usage and lower the threshold for participation.
At the same time, [the executive file of the test version of sha512 algorithm](https://github.com/filecoincash/filecoincash_doc/releases/tag/benchy-sha512-beta) will be released today, which can be used by miners to test equipment performance.

After the community was established, with the effective communication in the community, most of the miners proposed to provide the test period to prepare for the equipment 
test in advance before open the test reward network. During this test period, we will continually communicate with the community and the miners and will formulate the test reward network rules that meet the expectations of the community and the miners.

#### In the next version, there will be bigger updates:
- Initiate the proposal of the first edition of Filecash economic model.
- Issue the detailed rules of the test reward network and confirm the opening time of the test reward network.

This version is only a test and opinion collection version, not the final version.

Filecash is committed to building a more open IPFS storage network.


Attach: [3800X/i7-8700 SHA512 Comparison results](./bench/README.md)

Usage reference：https://github.com/filecash/filecash_announcement/bench/

bench.sh
```
nohup env FIL_PROOFS_USE_GPU_COLUMN_BUILDER=1 FIL_PROOFS_USE_GPU_TREE_BUILDER=1 RUST_LOG=info ./benchy prodbench --config config.json > log-bench.log 2>&1 &
```

config.json
```
{
	"sector_size" : "4294967296",
	"porep_challenges" : 2,
	"porep_partitions" : 1,
	"post_challenges" : 20,
	"post_challenged_nodes" : 2,
	"stacked_layers" : 5,
	"num_sectors" : 1
}
```
