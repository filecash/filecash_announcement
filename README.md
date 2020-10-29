# Filecash 公告

[English version](#FileCash-Announcement)

- Official: https://file.cash
- Github: https://github.com/filecash
- Slack: https://join.slack.com/t/filecashworkspace/shared_invite/zt-hiau7fp2-KrPRELL2wapMUFOO5ONGiQ
- Medium: https://medium.com/@filecash
- Telegram: https://t.me/FilecashGlobal

很高兴Filecash社区在9月18日正式成立，将于9月19日晚些时候开放Github代码库，前期出于保护项目的考虑，测试阶段只会开放部分源代码，在主网上线前开源全部代码。

#### 10月29日发布的[第七个版本](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0-S2)-开启免抵押网络Step2，做了如下改进：
- 调整经济模型。
- 修复一些bug。
- 请暂时不要删除Step1网络的数据。
- 请保存好免抵押网络Step1的数据和私钥，主网上线会有非对称映射。
- 请将免抵押网络Step1的挖矿地址和`lotus-miner info`命令界面截图发送至基金会邮箱filecash@file.cash作为非对称映射的部分参考。
欢迎各位参与者在社区中积极反馈，参与Filecash生态的建设。

编译方法：
git clone https://github.com/filecash/lotus_builder && cd lotus_builder && bash build.sh -a

亲爱的Filecash爱好者，Filecash现已开放[Step2水龙头](https://faucet.file.cash)，以下是水龙头使用注意事项：
- 1.同IP同一个Git账号请勿频繁授权登录
- 2.同Git账号8小时内只能申领一次
- 3.t3xxxx...xx 地址永久只能申领一次
- 4.t3xxxx...xx 地址有交易后会生成 t0xxxx 地址
- 5.t3xxxx...xx + t0xxxx 地址一起填写可以继续领取水龙头

水龙头：https://faucet.file.cash/


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
- Slack: https://join.slack.com/t/filecashworkspace/shared_invite/zt-hiau7fp2-KrPRELL2wapMUFOO5ONGiQ
- Medium: https://medium.com/@filecash
- Telegram: https://t.me/FilecashGlobal

The FileCash community was formally established on September 18th, 2020, and opened the Github code base on September 19th, 2020. In the initial stage, only some part of the source code will be available during the test stage. The entire source code is planned to be unveiled after mainnet’s launch.

#### [The sixth version](https://github.com/filecash/lotus/releases/tag/filecash-v0.7.0) released on October 15 ,The following improvements have been made:
- Packaging size changed to 4G. 
- SDR layer at PC1 stage changed to 8. 
- SDR layer at PC2 stage changed to 1.
- Algorithm SHA512 applied. 
- Economic model adjusted. 
- All source codes open to public. 

#### [The fourth version](https://github.com/filecash/lotus/releases/tag/filescash-incentive-testnet-v0.7.0-beta1) released on September 28 ,The following improvements have been made:
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
