# KVO-Practise


####KVO

  KVO(key-value-observing)是一种十分有趣的回调机制，在某个对象注册监听者后，在被监听的对象发生改变时，对象会发送一个通知给监听者，以便监听者执行回调操作。
  
  
#####在ObjC中使用KVO操作常用的方法如下：


    注册指定Key路径的监听器： addObserver: forKeyPath: options:  context:
    删除指定Key路径的监听器： removeObserver: forKeyPath、removeObserver: forKeyPath: context:
    回调监听： observeValueForKeyPath: ofObject: change: context:
  

####PractiseOne - 可下载查看Demo

```
//KVO相关实现文件，检测Accout中blance值得变化。
Account.h
Account.m
Person.h
Person.m
ViewController.m

```

####PractiseTwo - 可下载查看Demo

```

```

####参考相关资料

 - [iOS开发-KVO的奥秘](http://www.jianshu.com/p/742b4b248da9)
 - [iOS开发系列--Objective-C之KVC、KVO](http://www.cnblogs.com/kenshincui/p/3871178.html#kvo)