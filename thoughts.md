我目前是已经得到了额加权的BB关系图，

然后我需要就是把BB关系转化为变量关系。额，

我现在有一个D:\A\Cache\DotModifier\merged_c_dfg.dot，

这里面的weight都是旧的静态分析处理的，准确来说是给DFG图每条边赋值1获取到的。

额，其实这个甚至都不重要，重要的是根据

D:\A\Cache\DotModifier\BBDyAnalysis\weighted_dependency_graph.dot

和

D:\A\Cache\DotModifier\xuecong_c\c_cfg.dot，当然，这个cfg是以BB为节点，所以BB里面的label里面有代码，其中load和store是我们要考虑的。

所以思路是：将CFG图变成 以BBn为名的多个子图，

然后呢，这个子图：

1.如果没有变量怎么办？

2.如果有变量，就是按照BB内顺序有向连起来，

这样后面就是额BB的入边就连到这个子图的“头变量”；出边就从“尾变量”为起点指出

3.额，其实我在想不如就是直接 通过D:\A\Cache\DotModifier\xuecong_c\a.txt， 直接就是先读取BB对应的变量，然后

比如BB1有变量 %i和变量%j,  (先后顺序根据bb里面出现的顺序),抽象来说就是构建一个新的序列txt,就是用比如%i和变量%j来替换BB1，当然，注意到txt文件中是main*1, main * 1和BB1在这里（因为CFG是main函数做的：”digraph "CFG for'main' function" {“这样, 更需要注意到的是理论上后面函数名不一样这个main也有可能会变成其它的函数名，这里要注意通用性与兼容性，然后构建一个变量的访问列表：

就不再是什么以BBn为名的多个子图，直接构建

变量访问顺序图，以变量为节点就ok，

补充：代码%1 = load i32, i32* %i, align 4\l这样。理论上就是新变量访问顺序图就是以   load 或 store开头的指令的第二个逗号后的东西为节点label, 如：”i32* %i“；

然后先变成

i32* %i；

i32* %j;

...等的序列，然后从上连到下变成大图，然后合并相同节点并累计权值就ok，最终获取的格式如

strict digraph {
Node0xf061760 [height=0.51389, label="MEM,i32* %e", pos="2527,913.5", rects="2423.4,895.5,2630.6,931.5", shape=record, width=2.8785, color=blue];
Node0xf0617c8 [height=0.51389, label="MEM,i32* %i", pos="2584,824", rects="2485.2,806,2682.8,842", shape=record, width=2.7431, color=blue];
Node0xf08c800 [height=0.51389, label="MEM,i32* %retval", pos="1931,2345.5", rects="1832.6,2327.5,2029.4,2363.5", shape=record, width=2.7326, color=blue];
Node0xf08d888 [height=0.51389, label="MEM,i32* %f", pos="1353,645", rects="1257.2,627,1448.8,663", shape=record, width=2.6597, color=blue];
Node0xf08d728 [height=0.51389, label="MEM,i32* %k", pos="1419,913.5", rects="1322.1,895.5,1515.9,931.5", shape=record, width=2.691, color=blue];
Node0xf08cfd8 [height=0.51389, label="MEM,i32* %d", pos="680,824", rects="583.12,806,776.88,842", shape=record, width=2.691, color=blue];
Node0xf08c628 [height=0.51389, label="MEM,i32* %b", pos="724,466", rects="627.12,448,820.88,484", shape=record, width=2.691, color=blue];
Node0xf08cac8 [height=0.51389, label="MEM,i32* %a", pos="2104,1808.5", rects="2007.5,1790.5,2200.5,1826.5", shape=record, width=2.6806, color=blue];
Node0xf061760 -> Node0xf0617c8 [weight=5.0, label="weight=5.0"];
Node0xf061760 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf061760 -> Node0xf08d888 [weight=3.0, label="weight=3.0"];
Node0xf0617c8 -> Node0xf08d728 [weight=4.0, label="weight=4.0"];
Node0xf0617c8 -> Node0xf08cfd8 [weight=2.0, label="weight=2.0"];
Node0xf0617c8 -> Node0xf061760 [weight=7.0, label="weight=7.0"];
Node0xf0617c8 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf0617c8 -> Node0xf08d888 [weight=2.0, label="weight=2.0"];
Node0xf08c800 -> Node0xf08cfd8 [weight=2.0, label="weight=2.0"];
Node0xf08c800 -> Node0xf08cac8 [weight=3.0, label="weight=3.0"];
Node0xf08c800 -> Node0xf08c628 [weight=3.0, label="weight=3.0"];
Node0xf08c800 -> Node0xf0617c8 [weight=3.0, label="weight=3.0"];
Node0xf08c800 -> Node0xf08d728 [weight=2.0, label="weight=2.0"];
Node0xf08c800 -> Node0xf061760 [weight=1.0, label="weight=1.0"];
Node0xf08c800 -> Node0xf08d888 [weight=1.0, label="weight=1.0"];
Node0xf08d888 -> Node0xf08cac8 [weight=1.0, label="weight=1.0"];
Node0xf08d888 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf08d888 -> Node0xf08d728 [weight=15.0, label="weight=15.0"];
Node0xf08d728 -> Node0xf08cfd8 [weight=2.0, label="weight=2.0"];
Node0xf08d728 -> Node0xf061760 [weight=2.0, label="weight=2.0"];
Node0xf08d728 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf08d728 -> Node0xf08d888 [weight=17.0, label="weight=17.0"];
Node0xf08d728 -> Node0xf08cac8 [weight=15.0, label="weight=15.0"];
Node0xf08cfd8 -> Node0xf08c628 [weight=15.0, label="weight=15.0"];
Node0xf08cfd8 -> Node0xf061760 [weight=3.0, label="weight=3.0"];
Node0xf08cfd8 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf08cfd8 -> Node0xf08d888 [weight=2.0, label="weight=2.0"];
Node0xf08c628 -> Node0xf0617c8 [weight=6.0, label="weight=6.0"];
Node0xf08c628 -> Node0xf08d728 [weight=19.0, label="weight=19.0"];
Node0xf08c628 -> Node0xf08cfd8 [weight=17.0, label="weight=17.0"];
Node0xf08c628 -> Node0xf061760 [weight=2.0, label="weight=2.0"];
Node0xf08c628 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf08c628 -> Node0xf08d888 [weight=2.0, label="weight=2.0"];
Node0xf08c628 -> Node0xf08cac8 [weight=15.0, label="weight=15.0"];
Node0xf08cac8 -> Node0xf08c628 [weight=24.0, label="weight=24.0"];
Node0xf08cac8 -> Node0xf0617c8 [weight=9.0, label="weight=9.0"];
Node0xf08cac8 -> Node0xf08d728 [weight=4.0, label="weight=4.0"];
Node0xf08cac8 -> Node0xf08cfd8 [weight=17.0, label="weight=17.0"];
Node0xf08cac8 -> Node0xf061760 [weight=2.0, label="weight=2.0"];
Node0xf08cac8 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf08cac8 -> Node0xf08d888 [weight=2.0, label="weight=2.0"];
}Node0xf08c800 [height=0.51389, label="MEM,i32* %retval", pos="1931,2345.5", rects="1832.6,2327.5,2029.4,2363.5", shape=record, width=2.7326, color=blue];
Node0xf08d888 [height=0.51389, label="MEM,i32* %f", pos="1353,645", rects="1257.2,627,1448.8,663", shape=record, width=2.6597, color=blue];
Node0xf08d728 [height=0.51389, label="MEM,i32* %k", pos="1419,913.5", rects="1322.1,895.5,1515.9,931.5", shape=record, width=2.691, color=blue];
Node0xf08cfd8 [height=0.51389, label="MEM,i32* %d", pos="680,824", rects="583.12,806,776.88,842", shape=record, width=2.691, color=blue];
Node0xf08c628 [height=0.51389, label="MEM,i32* %b", pos="724,466", rects="627.12,448,820.88,484", shape=record, width=2.691, color=blue];
Node0xf08cac8 [height=0.51389, label="MEM,i32* %a", pos="2104,1808.5", rects="2007.5,1790.5,2200.5,1826.5", shape=record, width=2.6806, color=blue];
Node0xf061760 -> Node0xf0617c8 [weight=5.0, label="weight=5.0"];
Node0xf061760 -> Node0xf08c800 [weight=2.0, label="weight=2.0"];
Node0xf061760 -> Node0xf08d888 [weight=3.0, label="weight=3.0"];
Node0xf0617c8 -> Node0xf08d728 [weight=4.0, label="weight=4.0"];

**（这里记录一个问题就是如果访问数成万上亿，这个对于内存貌似是一个巨大压力）**
