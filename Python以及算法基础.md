# Python以及算法基础

- **线程与进程的区别，在python中用的是什么包？**
    
    在线程与进程的区别方面，线程是程序执行的最小单位，而进程是操作系统分配资源的最小单位。一个进程可以包含多个线程，它们共享进程的资源，如内存空间、文件句柄等。每个线程有自己的执行路径，但它们可以访问共享的数据。
    
    线程之间的切换比进程快，因为线程共享相同的内存空间，而进程之间的切换需要进行上下文切换和内存切换，开销更大。另外，由于线程共享内存，因此线程之间的通信比进程更方便。但是，线程之间的共享数据也带来了线程安全的问题，需要额外的同步机制来避免竞争条件。
    
    在Python中，用于处理线程和进程的主要包是`threading`和`multiprocessing`。`threading`包提供了线程相关的功能，包括创建线程、线程同步、线程间通信等。`multiprocessing`包用于处理进程相关的操作，它提供了创建进程、进程间通信、进程池等功能。这两个包都是Python标准库的一部分，可以在Python中直接使用。
    
- **Hash表的时间复杂度为什么是O(1)？**
    
    ![https://s2.51cto.com/images/blog/202110/15170112_616943580cc8c76136.png?x-oss-process=image/watermark,size_16,text_QDUxQ1RP5Y2a5a6i,color_FFFFFF,t_30,g_se,x_10,y_10,shadow_20,type_ZmFuZ3poZW5naGVpdGk=/format,webp/resize,m_fixed,w_1184](https://s2.51cto.com/images/blog/202110/15170112_616943580cc8c76136.png?x-oss-process=image/watermark,size_16,text_QDUxQ1RP5Y2a5a6i,color_FFFFFF,t_30,g_se,x_10,y_10,shadow_20,type_ZmFuZ3poZW5naGVpdGk=/format,webp/resize,m_fixed,w_1184)
    

 hash表是基于**数组+链表**的实现的。数组在内存中是一块连续的空间，只要知道查找数据的下标就可快速定位到数据的内存地址，即数组查找数据的时间复杂度为O(1)。hash表的存储结构是<key，value>的形式，数据读取时，只需提供key就可快速查找到value。hash表依据数组利用下标快读查找数据的特性来实现这样的查找方式的。也就是如上图中所示，**hash表的物理存储其实是数组**。

- 排序的时间复杂度
    
    
    | 排序算法 | 平均时间复杂度 | 最坏时间复杂度 | 最好时间复杂度 | 空间复杂度 | 稳定性 |
    | --- | --- | --- | --- | --- | --- |
    | 冒泡排序 | O(n²) | O(n²) | O(n) | O(1) | 稳定 |
    | 直接选择排序 | O(n²) | O(n²) | O(n) | O(1) | 不稳定 |
    | 直接插入排序 | O(n²) | O(n²) | O(n) | O(1) | 稳定 |
    | 快速排序 | O(nlogn) | O(n²) | O(nlogn) | O(nlogn) | 不稳定 |
    | 堆排序 | O(nlogn) | O(nlogn) | O(nlogn) | O(1) | 不稳定 |
    | 希尔排序 | O(nlogn) | O(ns) | O(n) | O(1) | 不稳定 |
    | 归并排序 | O(nlogn) | O(nlogn) | O(nlogn) | O(n) | 稳定 |
    | 计数排序 | O(n+k) | O(n+k) | O(n+k) | O(n+k) | 稳定 |
    | 基数排序 | O(N*M) | O(N*M) | O(N*M) | O(M) | 稳定 |
- 数据结构的时间复杂度