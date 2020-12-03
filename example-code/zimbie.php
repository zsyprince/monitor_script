<?php
$str = "hello world!" . PHP_EOL;
$pid = pcntl_fork();
if ($pid > 0) {
    echo "我是主进程，id是" . getmypid() . "，子进程的pid是{$pid}" . PHP_EOL;
    pcntl_async_signals(true);
    pcntl_signal(SIGCHLD, function () {
        echo '子进程退出了，请及时处理' . PHP_EOL;
    });
    while (1) {  //模拟主进程一直运行
        sleep(1);
    }
} elseif($pid==0) {
    echo "我是子进程，我的pid是". getmypid() ."\n";
}else{
    echo "我是主进程，开启子进程失败\n";
}
