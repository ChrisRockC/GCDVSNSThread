# GCDVSNSThread
对比
=================================== 
    1. GCD所有代码都是写在一起，让代码结构更加简单，便于阅读，维护
        1.1 NSThread 通过@selector指定要执行的代码，代码比较分散
        1.2 GCD 通过block封装成任务，指定要执行的代码
    2. 使用GCD不需要管理线程的创建、销毁、复用的过程。程序员不需要关心线程的生命周期
    3. 如果要开多个线程，NSThread必须要实例化多个线程对象
    4. NSThread通过NSObject的分类方法实现线程间的通讯，GCD靠Block
