# 俯视角坦克大战
参考教程： https://www.bilibili.com/video/BV14g411W7Wy


启用“像素捕捉”，2d use pixel snap on

作用将像素的渲染捕捉到像素网格

当某个物体移动时，你知道它在像素网格中的位置，防止运动过程中的像素抖动。

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/c2df87a105f9b3d62949c9c40730022d564afe6c.jpg)

  

窗口显示，设置拉伸模式2D

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/19123a40f7e34445b223c4568ad4025700df924c.jpg)

伸缩比例设置KEEP

使用像素，PNG格式图片，要关闭FILTER 过滤避免 像素图放大时模糊

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/4c7f0e39a594c9cf7db25712e23f40ebcb9316d6.jpg)

需要一个KINEMATICBODY2D节点作为根节点

一个sprite

一个collisonShape2D

另一个sprite 一个作为车身，一个作为火炮

两个部件分别移动

火炮需要一个position2D子节点用于标记炮口位置。知道坦克开火时子弹的生成点位置。

加一个Timer 实现开火的冷却时间。射击速度和间隔

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/e98254e309faf3f820f3614191350958ba73e21a.jpg)

  

在body节点拖入素材到texture属性里。

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/d0e32b14316a7fffe4c11e53892b2a4b40256dd3.jpg)

在region里勾选enabled,选择我们想显示的部分

1，吸附模式-自动裁剪

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/e82f1aeb1ebb9743ac2b31d1427027789dac68d0.jpg)

2，像素吸附，规则的网格布局可以选择网格吸附

设置偏移，图片中心旋转的。

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/dae41892aab1c4437c91aa9d3990540bda75734e.jpg)

点击编组按钮让子节点不可选择。编组是个好习惯，避免移动旋转时，素材混乱。

设置碰撞区域

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/7efb7a81c24f8cf27205bced79fdcdde66f173c0.jpg)

调整尺寸

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/664d697dec73105cd36ccc6632f9913c481ea408.jpg)

  

通用脚本

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/5599e3b875f65d4b6d04e817125c2f733fc22979.jpg)

  

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/db42beeaf0a6cd2548e88e91ff94035237112dc7.jpg)

  

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/833e8571347cb26e62c1a65f315506a8f049351b.jpg)

  

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/8c91367d35fb40a7cdceae274467fc4c8667e402.jpg)

继承脚本

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/398c0095ec638c13016ba97ec970e23900188a8e.jpg)

  

![](https://www.bilibili.com//i0.hdslb.com/bfs/note/49f6c4130448d9347d8a1a0b332fef56946a1c57.jpg)
