# Filecash免抵押网络Step奖励发放细则公告

[English version](#Announcement-on-Filecash-free-of-pledge-Step-reward-distribution)

Filecash免抵押网络Step1/Step2已经结束，主网已于高度58270(北京时间 2020年11月18日15:00)正式开启，Filecash能够迅速壮大达成共识，离不开所有矿工们的参与与付出，现对参与免抵押网络Step1/Step2阶段奖励发放细则如下：
- 1.本次奖励总计247123FIC，由所有参与Step1/Step2的矿工共享。
- 2.矿工奖励计算公式：总奖励247123FIC \* { (矿工Step1算力\*5 + 矿工Step2算力) / (Step1全网总算力\*5 + Step2全网总算力) } = 矿工应得奖励 
- 3.矿工奖励发放规则：采用多签方式发放奖励，奖励于高度77830(北京时间 2020年11月25日10:00)开始180天线性释放。
- 4.矿工奖励领取方式：由矿工对应Owner钱包地址授权领取。（备份好Owner钱包私钥，不要丢失）
```
    # 由基金会发起创建 <矿工奖励多签地址>
    # 检查多签钱包状态
    lotus msig inspect <矿工奖励多签地址>
    # 发起多签转账交易
    lotus msig propose --from <矿工Owner钱包地址> <矿工奖励多签地址> <矿工提取地址> <矿工本次提取金额>
    # 验证交易是否成功
    lotus wallet balance <矿工提取地址>
```
- 5.Step1算力数据奖励发放完可以删除，Step2数据会在主网得到继承不要删除，请继续保持算力增长。

<font color='red'> **Step1/Step2奖励分配** </font>
| 阶段 | 实际算力 | 奖励算力| 奖励算力占比 | 奖励金额 |
| :----: | :----: | :----: | :----: | :----: |
| Step1 | 952GiB | 4.64TiB(4760GiB) | 8.1340% | 20101 FIC |
| Step2 | 52.5TiB | 52.5TiB(53760GiB) | 91.8660% | 227022 FIC |

<font color='red'> **Step1奖励名单.xls** </font>
| 矿工 | 算力 | 算力占比 | 奖励金额 | 多签地址 |
| :----: | :----: | :----: | :----: | :----: |
| [t01000](https://fic.filscout.io/zh/pc/account?id=t3sfaxzmnhqim5sdpi4trk2idd7btbbz5s43hrivqh3vemfqg2okmpvksu5e5cfhvlo6n7yaweutuy5d4wmrbq) | 200GiB / 952GiB | 21.0084% | 4222.90 FIC | t2hrtsm4syw36jqrpcsnz74t3nkedv5kxxowyjqhq |
| [t01003](https://fic.filscout.io/zh/pc/account?id=t3sg75u7lyffzj26g7v7ayy7hyd3c6vl3q73wqkupusnedxy5wwjaoviekuykvlbglbypb74bzb2t3fca4ulia) | 156GiB / 952GiB | 16.3866% | 3293.87 FIC | t2faqjyblhobondn6f7szesn37jpfz37vbcbphwbi |
| [t01004](https://fic.filscout.io/zh/pc/account?id=t3wspwousyffohqyk37zemlagcuwmnuvxxq7wokanb3g3zrg2x3ikemyiuzrtmivfk2gsd5xgmwd2x3lo2uzua) | 80GiB / 952GiB | 8.4034% | 1689.17 FIC | t22blwzwjm72uwlh72jizd4suocridltd4ja4sjaa |
| [t01006](https://fic.filscout.io/zh/pc/account?id=t3w77okjd43oi2znt556hro66he34xjflkpzx7fgdown4mmufo7msfugfuqszcqki6n4an5jz36jtacshvjvlq) | 68GiB / 952GiB | 7.1429% | 1435.79 FIC | t2pnv4ompyzsfnr2ri7ymhqpxbkihoji3k2b5hxhy |
| [t01013](https://fic.filscout.io/zh/pc/account?id=t3ucvwuznc6usaowcqcldyyjhjxycv6piaj23dbyml4imb7djewxrabs6m62ukdts6c35nbo6mfe4cuijg5ptq) | 4GiB / 952GiB | 0.4202% | 84.46 FIC | t2pgc3dhgnfdacu4aztzptyawjsdw7pgcssjczy3a |
| [t01020](https://fic.filscout.io/zh/pc/account?id=t3wu3lv6z2io57mbzd7khrgp6qfskzx2sheoktfjqinvwg5ytthnlgj7w3xoebfqoaoyffi2mt5jutvh3w3wsa) | 40GiB / 952GiB | 4.2017% | 844.58 FIC | t2g5ibzz653kzda2o7bua4zqjaw53emtffjecddiy |
| [t01026](https://fic.filscout.io/zh/pc/account?id=t3syvyrjg2f5sjph3pv7dtb2boffinyfbsuqekwib2t2nzpofasaypwjxlxueapho6qzzjepzaghjjbc3h2a5q) | 20GiB / 952GiB | 2.1008% | 422.28 FIC | t27z366jymn7cw5iu42uctw4r57fmaitrgnqb65da |
| [t01050](https://fic.filscout.io/zh/pc/account?id=t3um6uroamrzsyijvcgyupuatqpbt4k3tqlq3j67dycv4fy7nup3yg7ps75y5yqwmkpqmxy34fqzvmgvjndc3q) | 76GiB / 952GiB | 7.9832% | 1604.70 FIC | t2qmoovt5ekqehgtibfs2rphpjgca4gh2u46qnd4y |
| [t01053](https://fic.filscout.io/zh/pc/account?id=t3xbxicx7573x33xivdcglt3hid5hhw3j7eidzomtqhh3sjbpitivzihbc25pafarzfj3zkytz7sqr4t6tqnga) | 116GiB / 952GiB | 12.1849% | 2449.29 FIC | t2mc2ihn6osnyvekjhl22d4hdyut3lgyrisvfjbyq |
| [t01069](https://fic.filscout.io/zh/pc/account?id=t3rtiahhnskiqwrgxrezd3klnqs2fg32fnqvtyu2i2uj7hzcbz2teah2aj5edwbyjct6qq7nnwmcrv7u3fkk7q) | 28GiB / 952GiB | 2.9412% | 591.21 FIC | t2lseqeqpbasrtir6snrox7jrkixqgp4nclmeaapq |
| t01071 | 48GiB / 952GiB | 5.0420% | 1013.49 FIC | t26flhqzpjwhwmrdzrpslv3txcz3tsuhpdrxlxfwy |
| [t01271](https://fic.filscout.io/zh/pc/account?id=t3q7evyceeogbr3tf4f6y6ewg7ziiypwyq5s5oabe56byxdoyxtkk5gfjifcjodlptihan6zhz2xsmpso4cjxa) | 116GiB / 952GiB | 12.1849% | 2449.29 FIC | t23q5dy3kbsv7ok4hxydnwn3re6anivm5gg3mh6aq |



<font color='red'> **Step2奖励名单.xls** </font>
| 矿工 | 算力 | 算力占比 | 奖励金额 | 多签地址 |
| :----: | :----: | :----: | :----: | :----: |
| [t01000](https://fic.filscout.io/zh/pc/account?id=t3sfaxzmnhqim5sdpi4trk2idd7btbbz5s43hrivqh3vemfqg2okmpvksu5e5cfhvlo6n7yaweutuy5d4wmrbq) | 2.344 TiB / 52.5 TiB | 4.4642% | 10134.72 FIC | t2rkgmbybg5i2ol2zwpfafhlwqko64zpa6t5nmdza |
| [t01001](https://fic.filscout.io/zh/pc/account?id=t3wltd7baxkdapvgiwanekul2sobtfzdc36vrecm2it3ebfwxt2eathk6ecigumv76pu767xkky4qg5xurmlnq) | 2.344 TiB / 52.5 TiB | 4.4642% | 10134.72 FIC | t2xa24kxlj5vin3o4ekve2hrmlhghsjrfsyeeazgq |
| [t01002](https://fic.filscout.io/zh/pc/account?id=t3szmtx2vplkdlm6rmvhksxxub3i76d3uoy3pjxypmx4apxrw456agm53ortsid527k7jqtvugo6zd6mc3khja) | 2.344 TiB / 52.5 TiB | 4.4642% | 10134.72 FIC | t2r7ji4p6v53eew6tpnvhgq2g5nfmighcg4qun5jy |
| [t01007](https://fic.filscout.io/zh/pc/account?id=t3wapsoxsc5naclbw7p2mngrdweundxuee3wzkgyjvjbsemxqw3fn2lxezlqthegnnbcydakx3emfav3izk7la) | 184 GiB / 52.5 TiB | 0.3422% | 776.87 FIC | t22awzcngn5ex6miuinm2i6yol3cz5xju5he5czka |
| [t01008](https://fic.filscout.io/zh/pc/account?id=t3te35qp3eht4grbioph4h7oezbkk4pexoagn3aedbhgltavne6z3vgxzcrd63qf3pwa22n2awtpysygqzoeha) | 108 GiB / 52.5 TiB | 0.2008% | 455.86 FIC | t2gf5zzig6bn6ptshyrnnoj6ajzp2sys2nsyhi5ra |
| [t01009](https://fic.filscout.io/zh/pc/account?id=t3ufv77l4gubomuzuchgahs5de5o7kfam3oysknveyygcqoh4cn23aoubn4fwd2y72ph2mavlbjwt4ihgkkynq) | 9.473 TiB / 52.5 TiB | 18.0431% | 40961.81 FIC | t2blzvaqlabg6txsh7ujzxz3y4eizbnj2daq66ttq |
| [t01010](https://fic.filscout.io/zh/pc/account?id=t3r2env6bky6i5xv5xo4vyhmmiurfpglu3jqh57lz5pkzjdhivgebrskw34mobrbls4jmk5lpxauzucfc63ysq) | 1.242 TiB / 52.5 TiB | 2.3660% | 5371.34 FIC | t2phenkslypl3b52sdqkuewxqk4xptvscge7zbphq |
| [t01014](https://fic.filscout.io/zh/pc/account?id=t3srxuqd6khbbhwlx7tmtfreoxjacyivc7j3brk7pptluyfuh7smcqtlpzecavopyox76rrrvown6rwyaz6rha) | 392 GiB / 52.5 TiB | 0.7291% | 1655.22 FIC | t2xyyisjy6vggmnyjz3tglnjg3aqkrmbwr5lr66si |
| [t01017](https://fic.filscout.io/zh/pc/account?id=t3rd5wt3nbtolapaitecain4k4lfjkipsgjgoocwfhobuansjsewoc6bcjvtpyxsv6idwxejcrdqe6tnv2ilta) | 776 GiB / 52.5 TiB | 1.4434% | 3276.84 FIC | t2uspi4niqa46p5zo7fectc3shyoox5sfpzrcbyaq |
| [t01019](https://fic.filscout.io/zh/pc/account?id=t3wzhghdjyfrqtaxb6fqehyrxbyddks24bcmb5qnfnbsclujmz3mgwfcntnizbz75gvrlzibwnm4aeeiz224lq) | 576 GiB / 52.5 TiB | 1.0714% | 2432.31 FIC | t2uut225da7vdjx5gvjy55f6imy476pcuyxkmcxnq |
| [t01021](https://fic.filscout.io/zh/pc/account?id=t3qe5izq5ehykaznz6z5jgrhmgroclwrqojfqgb4bba576ums6ada6lzqtxv2opgvg33q7c7ctd7clqob5djwa) | 384 GiB / 52.5 TiB | 0.7142% | 1621.39 FIC | t2en2lmjconziseauw4ra72iiyg7s3ag7rv5hfvyy |
| [t01024](https://fic.filscout.io/zh/pc/account?id=t3uubx3tyiipxwe4zatlyyjn7uv7brystacw4nlimbp76k3pyy5xwxdqov4ed56ce2a5js47b5jd5pbbpxc4ra) | 628 GiB / 52.5 TiB | 1.1681% | 2651.84 FIC | t23jd34ifsyqym4omayd2vjdfbylo2r27jqwggjry |
| [t01025](https://fic.filscout.io/zh/pc/account?id=t3r3hbmp5vnmcth6e322v4ofaishwmgezihp3phqi6ujvxnqajfcbilyysimiijseaojohnl2n3gsociwxjnla) | 632 GiB / 52.5 TiB | 1.1756% | 2668.87 FIC | t2m3qecy6yi65ndrluwufo3tsbev6tdiuvq6lcfny |
| [t01027](https://fic.filscout.io/zh/pc/account?id=t3rskmjdb44fj56n6lmmt4scjw7jurg6aoxs7247ntw5a2kxbegknc6ot4nzfgxjfhqctw3khkrdbo5xc7f77a) | 460 GiB / 52.5 TiB | 0.8556% | 1942.40 FIC | t2qxovw52dqb6upi77lelifl36vqt723phqclqloa |
| [t01032](https://fic.filscout.io/zh/pc/account?id=t3xcaxqcyo22vgcgcp4ozcfu43afjcr4hshz7qjttyuajn3gaulue3lhyuwzkkygs4vweonfkpxa6fkrch3nza) | 3.594 TiB / 52.5 TiB | 6.8452% | 15540.11 FIC | t2gehjkxpxfmv5dvhiaj3xwliquuqy3n2ccdctshq |
| [t01033](https://fic.filscout.io/zh/pc/account?id=t3v2ikauf6i3bedjswfpoqu33fmo3zia65hml2lzkxtvshesxxd2eygrzml26sf27l4xnugf6fakneihis2aiq) | 2.449 TiB / 52.5 TiB | 4.6651% | 10590.80 FIC | t2imqjdi235fkbuxtt5y7j2jgkulc5dputuvn4p4a |
| [t01035](https://fic.filscout.io/zh/pc/account?id=t3w37cb25yepuuhgm5gdilbxqyx2tcl63fju6elnhylfxpylkmcjipsf3vqpsvel5ffqgodkx5mnbphmanov3a) | 3.719 TiB / 52.5 TiB | 7.0833% | 16080.65 FIC | t2e2poahjxibt4e3u2t62b6euhr5mtpvcwixf3roi |
| [t01041](https://fic.filscout.io/zh/pc/account?id=t3rwrzsynvvsb5mkzhi6af7vzt4sijgsldhxzz45d6ydiio6ae2xm264qhfo6eg5jiqb3jzhybbixp27yorj4q) | 2.387 TiB / 52.5 TiB | 4.5461% | 10320.65 FIC | t2qkyk5pvhqpbxl4e3xyq5ha2jhoaa7ahlqwof2ky |
| [t01044](https://fic.filscout.io/zh/pc/account?id=t3r2nxi7v6s3gofz4ezr2baqhlgsyokqpy2qxfplf3dne3n77sswevxdm5vi2dccdhnqlnoa36x4nu22p3edva) | 168 GiB / 52.5 TiB | 0.3125% | 709.44 FIC | t2onzezl757eznmo7dd7yyoaid7qqoddgd3zwrttq |
| [t01048](https://fic.filscout.io/zh/pc/account?id=t3ra5cmeb77dc4dwoa2levmtxvh55c3de4kmz24k4aakg3xjly5q3emavemgjycoq436oovpp3wf6o2ejdc4nq) | 2.477 TiB / 52.5 TiB | 4.7321% | 10742.91 FIC | t2wcvqsvlbaqycjrizt5iz3byphz3tmmncf2ru3yi |
| [t01061](https://fic.filscout.io/zh/pc/account?id=t3urfp5l764nr7xx4eoionp7cvf3xadbtghg4wus3m6tk2w3pci4zxzfg5bu55hqr2io2ur4dj4i2umnrsjmga) | 484 GiB / 52.5 TiB | 0.9003% | 2043.88 FIC | t2m4zvayrdwslc4psp53pk425rf4pqbos5lp5oe7i |
| [t01070](https://fic.filscout.io/zh/pc/account?id=t3rxhuk3qs7bpoencz5dkktoeawby3y2se57qojs3oa7rpd75xamya4iv4rskadmcexbdlvv33m4fo7zjjiyra) | 744 GiB / 52.5 TiB | 1.3839% | 3141.76 FIC | t2ak7ozk47qtoghypgrweynsxtyjosuzeyw4t6oza |
| [t01085](https://fic.filscout.io/zh/pc/account?id=t3ugok5c4acoy5ulr3tixf7yx75dkm2vynba3o4sbkc5jbbip5nsoi5oml5zlhg7qalxdkquygu22uycxfn35a) | 6.972 TiB / 52.5 TiB | 13.2812% | 30151.25 FIC | t22kbj2bd2lbsj73n6yiy4zaanevw5rxzmqn5r4uy |
| [t01088](https://fic.filscout.io/zh/pc/account?id=t3riri4jhgtwa52chobok7kyypnoj6yuw4aycwhoq27qzavbppqtv5vwn2gkzwbqck33yb6pbj57kxzjys3ycq) | 256 GiB / 52.5 TiB | 0.4761% | 1080.85 FIC | t2y5znalu2wjfp75hjfdppzht55jcupdhbbb53m4a |
| [t01125](https://fic.filscout.io/zh/pc/account?id=t3wxdiwxvo2iowxzj4n4tihy5se3ekdbiuuz3cm2vbclx4xm2oje7avzgdyc6yuo2ubeh3ppyqmf42o7hqmkoq) | 288 GiB / 52.5 TiB | 0.5357% | 1216.16 FIC | t266gqtw4mn3mmgpqmr47u4ky7mzjhyp24to7umgi |
| [t01166](https://fic.filscout.io/zh/pc/account?id=t3ubuw2ofm6lmqtmv5tcjs6okgx57gey5sy37376s6uqgmckcn27cler4ixbzutbmflz2ozhmx6nzsozql4paa) | 264 GiB / 52.5 TiB | 0.4910% | 1114.68 FIC | t2g2etyexuzx5w4l6aafdn7ftzkx3zqn6dpkuipdy |
| [t01174](https://fic.filscout.io/zh/pc/account?id=t3r4kbntttc7gz64wofa4kngyk6t6vunozke3toswebxv443c4rlgs4557y5lxtnjen3of2nxjfuo7mbetiv7q) | 452 GiB / 52.5 TiB | 0.8407% | 1908.57 FIC | t2oxdoqie2i5dylotuqb6jfcpq4anwubb54hhdevy |
| [t01250](https://fic.filscout.io/zh/pc/account?id=t3xg5a7fcfav66kltwexgxq7qlmabkh4pedto4i2dzo2nchz3acnexnzegd35jauxqgs7p55jk4ie2yp3oblda) | 24 GiB / 52.5 TiB | 0.0446% | 101.25 FIC | t2qy6bcqkychirvbak57njc3eomnvh24cmqazyvwq |
| [t01299](https://fic.filscout.io/zh/pc/account?id=t3r3rzyfpta47k6jkmgo7od54t5sfhprfm3rjjhin34knecq2ixzgkc32oqok7y5zlble7l7kohvfyrelkw7tq) | 1.027 TiB / 52.5 TiB | 1.9568% | 4442.37 FIC | t2byhhyhvhrkgodvp2reaj3axkbbuqf2ld3f62t4i |
| [t01303](https://fic.filscout.io/zh/pc/account?id=t3un2lk47evqj3piwecohrnir642cpklrf5wovb6bifks257jystvfmfscdjgs7efrkqxerdeltkiqo7rzts4a) | 708 GiB / 52.5 TiB | 1.3169% | 2989.65 FIC | t2qhrbexb4j2j5xc6bmtgfhg6rqglhmmebjgvnq5y |
| [t01566](https://fic.filscout.io/zh/pc/account?id=t3tags7odokjkh34cgkeayodb4zo3hx5xj6sa64isgwbrnlsncpif3vrdxq23huwrqijhdsvlk76sdd6gnafga) | 1.016 TiB / 52.5 TiB | 1.9345% | 4391.74 FIC | t2klqottrfrbq7wdh5u6m3ttq53oyivum6sesohcy |
| [t01567](https://fic.filscout.io/zh/pc/account?id=t3qmnmqj5j65fiwbxlhbd6ag6cp5jwbp2pkrntuzeike7qa5wptqmjisqd7vcaj3ikw2nsnjzzadasmdq2vi6q) | 2.773 TiB / 52.5 TiB | 5.2827% | 11992.89 FIC | t2raafcscse5ecb6gwlnr5zzi5nr3ypd5nebqt6ci |
| [t01585](https://fic.filscout.io/zh/pc/account?id=t3vb6q24ipfyebgbdizhjmrxyggjuvbsdguwwp63r3cvtar63ahmzv6tdv2dllg77ovo3ky4fxioe7cfaxgdga) | 112 GiB / 52.5 TiB | 0.2083% | 472.89 FIC | t2lhyqd6bp4vny5veo66rxwqnd3ggzff4jbn25mey |
| [t01586](https://fic.filscout.io/zh/pc/account?id=t3teh7nnjoenr4psfvz6x6mrk453vdrpkisl6mu3h6236su4dz4jjdkdp34yxu3tbqvpgb3esiwdscfgigixiq) | 448 GiB / 52.5 TiB | 0.8333% | 1891.77 FIC | t2oukv5xnpijsqxh6h2w45jhrdtwhq3syxh7wnwma |
| [t01596](https://fic.filscout.io/zh/pc/account?id=t3xh2yn5fdn3lzkq54mikeagw63twudw3urelrtugl5yiuo7uzfgvy2o5othb4hun4kq6s5zvwtfhewobtkmna) | 352 GiB / 52.5 TiB | 0.6547% | 1486.31 FIC | t2koxuxj5rn667yiwlao6nvgt7nqopm6belg3dqri |
| [t01598](https://fic.filscout.io/zh/pc/account?id=t3xbibubwiibrzs2ono3vywbukdozu7ov4lfhyhm7lkmf26tee4ri4ix5ecxhvzdtamikl2ynmvaraak6bstnq) | 72 GiB / 52.5 TiB | 0.1339% | 303.98 FIC | t2tp5oscgjo5lj4225vs62etkgx6qn3qfhlmbrsna |
| [t01610](https://fic.filscout.io/zh/pc/account?id=t3xajpt2ugojvuolfzccqzopp7cfmll462freh3xzzanbpdu255stcvv47t4zs3zygjstsc5emerexcp6vx64a) | 4 GiB / 52.5 TiB | 0.0074% | 16.80 FIC | t2juezz5c6xmk7im63kcnsrwbqbuxmqchkmjt42eq |
| [t01620](https://fic.filscout.io/zh/pc/account?id=t3tfjoadsault72g756535gxmx6cng5e2ie4i22tx3e4crc34nr2gcuw4sn7raujs45njs2wl3argbchu4akwa) | 16 GiB / 52.5 TiB | 0.0297% | 67.43 FIC | t2chcqfjisseiuc35bp5s65fronxeyzjo6mdn3mza |



# Announcement on Filecash free-of pledge Step reward distribution

[中文版本](#Filecash免抵押网络Step奖励发放细则公告)

Filecash free-of-pledge Step1/Step2 has concluded, and main net has launched at the block height of 58270(15:00 18th Nov. 2020 Beijing time). Filecash cannot unify such synergy without the recognition and contribution of the community, and we now publish the reward distribution details as below:
- 1.The reward totals 247,123 FIC, which is shared by all Step1/Step2 miners involved.
- 2.Reward formula: Total reward of 247123FIC * { (Step1 mining power \* 5 + Step1mining power) / (Step1 whole network mining power \* 5 + Step2 whole network mining power) } = Reward for a miner
- 3.Rules: use multiple signature for reward distribution; reward at the height of 77830 (10:00 on November 25, 2020 Beijing time), the 180-day antenna release.
- 4.How to claim reward: Claim with the Owner wallet address of miner’s for authentication and claim(back-up Owner wallet private key and ensure it is well saved)
```
    # Initiated by the Foundation <Miner reward multiple signature address>
    # Check the multiple signature status
    lotus msig inspect <Miner reward multiple signature address>
    # Initiate multiple signature transaction
    lotus msig propose --from <miner Owner wallet address> <miner reward multiple signature address> <Miner withdraw address> <FIC withdraw amount>
    # Verify whether the transaction is successful
    lotus wallet balance <Miner withdraw address>
```
- 5.Step1 mining power reward data can be deleted, whereas Step2 data will be inherited to the main network so please do not delete. Please continue to maintain the growth of mining power.


<font color='red'> **Step1/Step2 Reward Pool** </font>
| stage | mining power | reward mining power| Ratio of reward mining power | FIC reward amount |
| :----: | :----: | :----: | :----: | :----: |
| Step1 | 952GiB | 4.64TiB(4760GiB) | 8.1340% | 20101 FIC |
| Step2 | 52.5TiB | 52.5TiB(53760GiB) | 91.8660% | 227022 FIC |

<font color='red'> **List of Step1 reward.xls** </font>
| Miner | mining power | Ratio of mining power | FIC reward amount | multiple signature address |
| :----: | :----: | :----: | :----: | :----: |
| [t01000](https://fic.filscout.io/zh/pc/account?id=t3sfaxzmnhqim5sdpi4trk2idd7btbbz5s43hrivqh3vemfqg2okmpvksu5e5cfhvlo6n7yaweutuy5d4wmrbq) | 200GiB / 952GiB | 21.0084% | 4222.90 FIC | t2hrtsm4syw36jqrpcsnz74t3nkedv5kxxowyjqhq |
| [t01003](https://fic.filscout.io/zh/pc/account?id=t3sg75u7lyffzj26g7v7ayy7hyd3c6vl3q73wqkupusnedxy5wwjaoviekuykvlbglbypb74bzb2t3fca4ulia) | 156GiB / 952GiB | 16.3866% | 3293.87 FIC | t2faqjyblhobondn6f7szesn37jpfz37vbcbphwbi |
| [t01004](https://fic.filscout.io/zh/pc/account?id=t3wspwousyffohqyk37zemlagcuwmnuvxxq7wokanb3g3zrg2x3ikemyiuzrtmivfk2gsd5xgmwd2x3lo2uzua) | 80GiB / 952GiB | 8.4034% | 1689.17 FIC | t22blwzwjm72uwlh72jizd4suocridltd4ja4sjaa |
| [t01006](https://fic.filscout.io/zh/pc/account?id=t3w77okjd43oi2znt556hro66he34xjflkpzx7fgdown4mmufo7msfugfuqszcqki6n4an5jz36jtacshvjvlq) | 68GiB / 952GiB | 7.1429% | 1435.79 FIC | t2pnv4ompyzsfnr2ri7ymhqpxbkihoji3k2b5hxhy |
| [t01013](https://fic.filscout.io/zh/pc/account?id=t3ucvwuznc6usaowcqcldyyjhjxycv6piaj23dbyml4imb7djewxrabs6m62ukdts6c35nbo6mfe4cuijg5ptq) | 4GiB / 952GiB | 0.4202% | 84.46 FIC | t2pgc3dhgnfdacu4aztzptyawjsdw7pgcssjczy3a |
| [t01020](https://fic.filscout.io/zh/pc/account?id=t3wu3lv6z2io57mbzd7khrgp6qfskzx2sheoktfjqinvwg5ytthnlgj7w3xoebfqoaoyffi2mt5jutvh3w3wsa) | 40GiB / 952GiB | 4.2017% | 844.58 FIC | t2g5ibzz653kzda2o7bua4zqjaw53emtffjecddiy |
| [t01026](https://fic.filscout.io/zh/pc/account?id=t3syvyrjg2f5sjph3pv7dtb2boffinyfbsuqekwib2t2nzpofasaypwjxlxueapho6qzzjepzaghjjbc3h2a5q) | 20GiB / 952GiB | 2.1008% | 422.28 FIC | t27z366jymn7cw5iu42uctw4r57fmaitrgnqb65da |
| [t01050](https://fic.filscout.io/zh/pc/account?id=t3um6uroamrzsyijvcgyupuatqpbt4k3tqlq3j67dycv4fy7nup3yg7ps75y5yqwmkpqmxy34fqzvmgvjndc3q) | 76GiB / 952GiB | 7.9832% | 1604.70 FIC | t2qmoovt5ekqehgtibfs2rphpjgca4gh2u46qnd4y |
| [t01053](https://fic.filscout.io/zh/pc/account?id=t3xbxicx7573x33xivdcglt3hid5hhw3j7eidzomtqhh3sjbpitivzihbc25pafarzfj3zkytz7sqr4t6tqnga) | 116GiB / 952GiB | 12.1849% | 2449.29 FIC | t2mc2ihn6osnyvekjhl22d4hdyut3lgyrisvfjbyq |
| [t01069](https://fic.filscout.io/zh/pc/account?id=t3rtiahhnskiqwrgxrezd3klnqs2fg32fnqvtyu2i2uj7hzcbz2teah2aj5edwbyjct6qq7nnwmcrv7u3fkk7q) | 28GiB / 952GiB | 2.9412% | 591.21 FIC | t2lseqeqpbasrtir6snrox7jrkixqgp4nclmeaapq |
| t01071 | 48GiB / 952GiB | 5.0420% | 1013.49 FIC | t26flhqzpjwhwmrdzrpslv3txcz3tsuhpdrxlxfwy |
| [t01271](https://fic.filscout.io/zh/pc/account?id=t3q7evyceeogbr3tf4f6y6ewg7ziiypwyq5s5oabe56byxdoyxtkk5gfjifcjodlptihan6zhz2xsmpso4cjxa) | 116GiB / 952GiB | 12.1849% | 2449.29 FIC | t23q5dy3kbsv7ok4hxydnwn3re6anivm5gg3mh6aq |


<font color='red'> **List of Step2 reward.xls** </font>
| Miner | mining power | Ratio of mining power | FIC reward amount | multiple signature address |
| :----: | :----: | :----: | :----: | :----: |
| [t01000](https://fic.filscout.io/zh/pc/account?id=t3sfaxzmnhqim5sdpi4trk2idd7btbbz5s43hrivqh3vemfqg2okmpvksu5e5cfhvlo6n7yaweutuy5d4wmrbq) | 2.344 TiB / 52.5 TiB | 4.4642% | 10134.72 FIC | t2rkgmbybg5i2ol2zwpfafhlwqko64zpa6t5nmdza |
| [t01001](https://fic.filscout.io/zh/pc/account?id=t3wltd7baxkdapvgiwanekul2sobtfzdc36vrecm2it3ebfwxt2eathk6ecigumv76pu767xkky4qg5xurmlnq) | 2.344 TiB / 52.5 TiB | 4.4642% | 10134.72 FIC | t2xa24kxlj5vin3o4ekve2hrmlhghsjrfsyeeazgq |
| [t01002](https://fic.filscout.io/zh/pc/account?id=t3szmtx2vplkdlm6rmvhksxxub3i76d3uoy3pjxypmx4apxrw456agm53ortsid527k7jqtvugo6zd6mc3khja) | 2.344 TiB / 52.5 TiB | 4.4642% | 10134.72 FIC | t2r7ji4p6v53eew6tpnvhgq2g5nfmighcg4qun5jy |
| [t01007](https://fic.filscout.io/zh/pc/account?id=t3wapsoxsc5naclbw7p2mngrdweundxuee3wzkgyjvjbsemxqw3fn2lxezlqthegnnbcydakx3emfav3izk7la) | 184 GiB / 52.5 TiB | 0.3422% | 776.87 FIC | t22awzcngn5ex6miuinm2i6yol3cz5xju5he5czka |
| [t01008](https://fic.filscout.io/zh/pc/account?id=t3te35qp3eht4grbioph4h7oezbkk4pexoagn3aedbhgltavne6z3vgxzcrd63qf3pwa22n2awtpysygqzoeha) | 108 GiB / 52.5 TiB | 0.2008% | 455.86 FIC | t2gf5zzig6bn6ptshyrnnoj6ajzp2sys2nsyhi5ra |
| [t01009](https://fic.filscout.io/zh/pc/account?id=t3ufv77l4gubomuzuchgahs5de5o7kfam3oysknveyygcqoh4cn23aoubn4fwd2y72ph2mavlbjwt4ihgkkynq) | 9.473 TiB / 52.5 TiB | 18.0431% | 40961.81 FIC | t2blzvaqlabg6txsh7ujzxz3y4eizbnj2daq66ttq |
| [t01010](https://fic.filscout.io/zh/pc/account?id=t3r2env6bky6i5xv5xo4vyhmmiurfpglu3jqh57lz5pkzjdhivgebrskw34mobrbls4jmk5lpxauzucfc63ysq) | 1.242 TiB / 52.5 TiB | 2.3660% | 5371.34 FIC | t2phenkslypl3b52sdqkuewxqk4xptvscge7zbphq |
| [t01014](https://fic.filscout.io/zh/pc/account?id=t3srxuqd6khbbhwlx7tmtfreoxjacyivc7j3brk7pptluyfuh7smcqtlpzecavopyox76rrrvown6rwyaz6rha) | 392 GiB / 52.5 TiB | 0.7291% | 1655.22 FIC | t2xyyisjy6vggmnyjz3tglnjg3aqkrmbwr5lr66si |
| [t01017](https://fic.filscout.io/zh/pc/account?id=t3rd5wt3nbtolapaitecain4k4lfjkipsgjgoocwfhobuansjsewoc6bcjvtpyxsv6idwxejcrdqe6tnv2ilta) | 776 GiB / 52.5 TiB | 1.4434% | 3276.84 FIC | t2uspi4niqa46p5zo7fectc3shyoox5sfpzrcbyaq |
| [t01019](https://fic.filscout.io/zh/pc/account?id=t3wzhghdjyfrqtaxb6fqehyrxbyddks24bcmb5qnfnbsclujmz3mgwfcntnizbz75gvrlzibwnm4aeeiz224lq) | 576 GiB / 52.5 TiB | 1.0714% | 2432.31 FIC | t2uut225da7vdjx5gvjy55f6imy476pcuyxkmcxnq |
| [t01021](https://fic.filscout.io/zh/pc/account?id=t3qe5izq5ehykaznz6z5jgrhmgroclwrqojfqgb4bba576ums6ada6lzqtxv2opgvg33q7c7ctd7clqob5djwa) | 384 GiB / 52.5 TiB | 0.7142% | 1621.39 FIC | t2en2lmjconziseauw4ra72iiyg7s3ag7rv5hfvyy |
| [t01024](https://fic.filscout.io/zh/pc/account?id=t3uubx3tyiipxwe4zatlyyjn7uv7brystacw4nlimbp76k3pyy5xwxdqov4ed56ce2a5js47b5jd5pbbpxc4ra) | 628 GiB / 52.5 TiB | 1.1681% | 2651.84 FIC | t23jd34ifsyqym4omayd2vjdfbylo2r27jqwggjry |
| [t01025](https://fic.filscout.io/zh/pc/account?id=t3r3hbmp5vnmcth6e322v4ofaishwmgezihp3phqi6ujvxnqajfcbilyysimiijseaojohnl2n3gsociwxjnla) | 632 GiB / 52.5 TiB | 1.1756% | 2668.87 FIC | t2m3qecy6yi65ndrluwufo3tsbev6tdiuvq6lcfny |
| [t01027](https://fic.filscout.io/zh/pc/account?id=t3rskmjdb44fj56n6lmmt4scjw7jurg6aoxs7247ntw5a2kxbegknc6ot4nzfgxjfhqctw3khkrdbo5xc7f77a) | 460 GiB / 52.5 TiB | 0.8556% | 1942.40 FIC | t2qxovw52dqb6upi77lelifl36vqt723phqclqloa |
| [t01032](https://fic.filscout.io/zh/pc/account?id=t3xcaxqcyo22vgcgcp4ozcfu43afjcr4hshz7qjttyuajn3gaulue3lhyuwzkkygs4vweonfkpxa6fkrch3nza) | 3.594 TiB / 52.5 TiB | 6.8452% | 15540.11 FIC | t2gehjkxpxfmv5dvhiaj3xwliquuqy3n2ccdctshq |
| [t01033](https://fic.filscout.io/zh/pc/account?id=t3v2ikauf6i3bedjswfpoqu33fmo3zia65hml2lzkxtvshesxxd2eygrzml26sf27l4xnugf6fakneihis2aiq) | 2.449 TiB / 52.5 TiB | 4.6651% | 10590.80 FIC | t2imqjdi235fkbuxtt5y7j2jgkulc5dputuvn4p4a |
| [t01035](https://fic.filscout.io/zh/pc/account?id=t3w37cb25yepuuhgm5gdilbxqyx2tcl63fju6elnhylfxpylkmcjipsf3vqpsvel5ffqgodkx5mnbphmanov3a) | 3.719 TiB / 52.5 TiB | 7.0833% | 16080.65 FIC | t2e2poahjxibt4e3u2t62b6euhr5mtpvcwixf3roi |
| [t01041](https://fic.filscout.io/zh/pc/account?id=t3rwrzsynvvsb5mkzhi6af7vzt4sijgsldhxzz45d6ydiio6ae2xm264qhfo6eg5jiqb3jzhybbixp27yorj4q) | 2.387 TiB / 52.5 TiB | 4.5461% | 10320.65 FIC | t2qkyk5pvhqpbxl4e3xyq5ha2jhoaa7ahlqwof2ky |
| [t01044](https://fic.filscout.io/zh/pc/account?id=t3r2nxi7v6s3gofz4ezr2baqhlgsyokqpy2qxfplf3dne3n77sswevxdm5vi2dccdhnqlnoa36x4nu22p3edva) | 168 GiB / 52.5 TiB | 0.3125% | 709.44 FIC | t2onzezl757eznmo7dd7yyoaid7qqoddgd3zwrttq |
| [t01048](https://fic.filscout.io/zh/pc/account?id=t3ra5cmeb77dc4dwoa2levmtxvh55c3de4kmz24k4aakg3xjly5q3emavemgjycoq436oovpp3wf6o2ejdc4nq) | 2.477 TiB / 52.5 TiB | 4.7321% | 10742.91 FIC | t2wcvqsvlbaqycjrizt5iz3byphz3tmmncf2ru3yi |
| [t01061](https://fic.filscout.io/zh/pc/account?id=t3urfp5l764nr7xx4eoionp7cvf3xadbtghg4wus3m6tk2w3pci4zxzfg5bu55hqr2io2ur4dj4i2umnrsjmga) | 484 GiB / 52.5 TiB | 0.9003% | 2043.88 FIC | t2m4zvayrdwslc4psp53pk425rf4pqbos5lp5oe7i |
| [t01070](https://fic.filscout.io/zh/pc/account?id=t3rxhuk3qs7bpoencz5dkktoeawby3y2se57qojs3oa7rpd75xamya4iv4rskadmcexbdlvv33m4fo7zjjiyra) | 744 GiB / 52.5 TiB | 1.3839% | 3141.76 FIC | t2ak7ozk47qtoghypgrweynsxtyjosuzeyw4t6oza |
| [t01085](https://fic.filscout.io/zh/pc/account?id=t3ugok5c4acoy5ulr3tixf7yx75dkm2vynba3o4sbkc5jbbip5nsoi5oml5zlhg7qalxdkquygu22uycxfn35a) | 6.972 TiB / 52.5 TiB | 13.2812% | 30151.25 FIC | t22kbj2bd2lbsj73n6yiy4zaanevw5rxzmqn5r4uy |
| [t01088](https://fic.filscout.io/zh/pc/account?id=t3riri4jhgtwa52chobok7kyypnoj6yuw4aycwhoq27qzavbppqtv5vwn2gkzwbqck33yb6pbj57kxzjys3ycq) | 256 GiB / 52.5 TiB | 0.4761% | 1080.85 FIC | t2y5znalu2wjfp75hjfdppzht55jcupdhbbb53m4a |
| [t01125](https://fic.filscout.io/zh/pc/account?id=t3wxdiwxvo2iowxzj4n4tihy5se3ekdbiuuz3cm2vbclx4xm2oje7avzgdyc6yuo2ubeh3ppyqmf42o7hqmkoq) | 288 GiB / 52.5 TiB | 0.5357% | 1216.16 FIC | t266gqtw4mn3mmgpqmr47u4ky7mzjhyp24to7umgi |
| [t01166](https://fic.filscout.io/zh/pc/account?id=t3ubuw2ofm6lmqtmv5tcjs6okgx57gey5sy37376s6uqgmckcn27cler4ixbzutbmflz2ozhmx6nzsozql4paa) | 264 GiB / 52.5 TiB | 0.4910% | 1114.68 FIC | t2g2etyexuzx5w4l6aafdn7ftzkx3zqn6dpkuipdy |
| [t01174](https://fic.filscout.io/zh/pc/account?id=t3r4kbntttc7gz64wofa4kngyk6t6vunozke3toswebxv443c4rlgs4557y5lxtnjen3of2nxjfuo7mbetiv7q) | 452 GiB / 52.5 TiB | 0.8407% | 1908.57 FIC | t2oxdoqie2i5dylotuqb6jfcpq4anwubb54hhdevy |
| [t01250](https://fic.filscout.io/zh/pc/account?id=t3xg5a7fcfav66kltwexgxq7qlmabkh4pedto4i2dzo2nchz3acnexnzegd35jauxqgs7p55jk4ie2yp3oblda) | 24 GiB / 52.5 TiB | 0.0446% | 101.25 FIC | t2qy6bcqkychirvbak57njc3eomnvh24cmqazyvwq |
| [t01299](https://fic.filscout.io/zh/pc/account?id=t3r3rzyfpta47k6jkmgo7od54t5sfhprfm3rjjhin34knecq2ixzgkc32oqok7y5zlble7l7kohvfyrelkw7tq) | 1.027 TiB / 52.5 TiB | 1.9568% | 4442.37 FIC | t2byhhyhvhrkgodvp2reaj3axkbbuqf2ld3f62t4i |
| [t01303](https://fic.filscout.io/zh/pc/account?id=t3un2lk47evqj3piwecohrnir642cpklrf5wovb6bifks257jystvfmfscdjgs7efrkqxerdeltkiqo7rzts4a) | 708 GiB / 52.5 TiB | 1.3169% | 2989.65 FIC | t2qhrbexb4j2j5xc6bmtgfhg6rqglhmmebjgvnq5y |
| [t01566](https://fic.filscout.io/zh/pc/account?id=t3tags7odokjkh34cgkeayodb4zo3hx5xj6sa64isgwbrnlsncpif3vrdxq23huwrqijhdsvlk76sdd6gnafga) | 1.016 TiB / 52.5 TiB | 1.9345% | 4391.74 FIC | t2klqottrfrbq7wdh5u6m3ttq53oyivum6sesohcy |
| [t01567](https://fic.filscout.io/zh/pc/account?id=t3qmnmqj5j65fiwbxlhbd6ag6cp5jwbp2pkrntuzeike7qa5wptqmjisqd7vcaj3ikw2nsnjzzadasmdq2vi6q) | 2.773 TiB / 52.5 TiB | 5.2827% | 11992.89 FIC | t2raafcscse5ecb6gwlnr5zzi5nr3ypd5nebqt6ci |
| [t01585](https://fic.filscout.io/zh/pc/account?id=t3vb6q24ipfyebgbdizhjmrxyggjuvbsdguwwp63r3cvtar63ahmzv6tdv2dllg77ovo3ky4fxioe7cfaxgdga) | 112 GiB / 52.5 TiB | 0.2083% | 472.89 FIC | t2lhyqd6bp4vny5veo66rxwqnd3ggzff4jbn25mey |
| [t01586](https://fic.filscout.io/zh/pc/account?id=t3teh7nnjoenr4psfvz6x6mrk453vdrpkisl6mu3h6236su4dz4jjdkdp34yxu3tbqvpgb3esiwdscfgigixiq) | 448 GiB / 52.5 TiB | 0.8333% | 1891.77 FIC | t2oukv5xnpijsqxh6h2w45jhrdtwhq3syxh7wnwma |
| [t01596](https://fic.filscout.io/zh/pc/account?id=t3xh2yn5fdn3lzkq54mikeagw63twudw3urelrtugl5yiuo7uzfgvy2o5othb4hun4kq6s5zvwtfhewobtkmna) | 352 GiB / 52.5 TiB | 0.6547% | 1486.31 FIC | t2koxuxj5rn667yiwlao6nvgt7nqopm6belg3dqri |
| [t01598](https://fic.filscout.io/zh/pc/account?id=t3xbibubwiibrzs2ono3vywbukdozu7ov4lfhyhm7lkmf26tee4ri4ix5ecxhvzdtamikl2ynmvaraak6bstnq) | 72 GiB / 52.5 TiB | 0.1339% | 303.98 FIC | t2tp5oscgjo5lj4225vs62etkgx6qn3qfhlmbrsna |
| [t01610](https://fic.filscout.io/zh/pc/account?id=t3xajpt2ugojvuolfzccqzopp7cfmll462freh3xzzanbpdu255stcvv47t4zs3zygjstsc5emerexcp6vx64a) | 4 GiB / 52.5 TiB | 0.0074% | 16.80 FIC | t2juezz5c6xmk7im63kcnsrwbqbuxmqchkmjt42eq |
| [t01620](https://fic.filscout.io/zh/pc/account?id=t3tfjoadsault72g756535gxmx6cng5e2ie4i22tx3e4crc34nr2gcuw4sn7raujs45njs2wl3argbchu4akwa) | 16 GiB / 52.5 TiB | 0.0297% | 67.43 FIC | t2chcqfjisseiuc35bp5s65fronxeyzjo6mdn3mza |

