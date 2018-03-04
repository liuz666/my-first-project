<?php
$username = @$_COOKIE['username'];//获取当前代理商的用户名
$md=md5($username);
$name=substr($md,0,5);
echo $name;
//   11 和 1 文件名   例  1zsg.json
//   boss/1zsg.json

//


