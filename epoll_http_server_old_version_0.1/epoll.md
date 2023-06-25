epoll三个函数

int epoll_create(int size);

    分配一个eventpoll;
    初始化红黑树的根节点epfd。eventpoll与epfd一一对应。

int epoll_ctl(int epfd, int op, int fd, struct epoll_event *event);

操作红黑树，根据op对红黑树进行增删改

int epoll_wait(int epfd, struct epoll_event *events, int maxevents, int timeout);

把就绪队列的数据从内核copy到用户空间。

如果maxevents小于就绪队列大小，比如就绪队列大小为100，maxevents传入50，怎么办呢？

先将就绪队列里面的50个节点copy到用户空间，之后下次epoll_wait再copy 50个节点。

https://www.zhihu.com/question/486578358/answer/2534288200

`epoll使用红黑树和队列，红黑树存放需要检测的节点，队列存放就绪的节点。`

先复习下 epoll 的用法。如下的代码中，先用epoll_create 创建一个 epoll对象 epfd，再通过 epoll_ctl 将需要监视的 socket 添加到epfd中，最后调用 epoll_wait 等待数据。
```c++
int s = socket(AF_INET, SOCK_STREAM, 0);
bind(s, ...);
listen(s, ...)

int epfd = epoll_create(...);
epoll_ctl(epfd, ...); //将所有需要监听的socket添加到epfd中

while(1) {
    int n = epoll_wait(...);
    for(接收到数据的socket){
        //处理
    }
}
```
