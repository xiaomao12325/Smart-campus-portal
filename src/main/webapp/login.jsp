<%-- Created by IntelliJ IDEA. User: 白衣渡江丶吕蒙 Date: 2021/7/30 Time: 9:38 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>高校智慧校园门户身份认证</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/login.css">
    <script src='js/jquery.mini.js'></script>
</head>

<style>

</style>
</head>

<body style="background: url(images/bg1.jpg)">
<div class="logo">
    <a href="https://www.cqupt.edu.cn"><img src="images/logo.png" alt=""></a>
</div>
<div class="motto">
    <a href="https://www.cqupt.edu.cn"><img src="images/motto.jpg" alt=""></a>
</div>
<div class="wrap">
    <p class="head">
        <span style="color: #1493FF">智慧校园门户</span>
    </p>
    <div class="login">
        <form action="LoginServlet" method="POST">
            <div class="input">
                <div class="username">
                    <span><img src="images/user1.png" alt=""></span>
                    用户名：<input type="text" placeholder="请输入用户名" name="Id">
                </div>
                <div class="pwd">
                    <span><img src="images/pass1.png" alt=""></span>
                    密&nbsp;&nbsp;&nbsp;码：<input type="password" placeholder="请输入密码" name="Password">
                </div>
            </div>
            <div class="btn">
                <input type="submit" value="登录">
            </div>
        </form>
    </div>
    <div class="zhuce">
        <a href="register.jsp">没有账号？去注册</a>
    </div>
</div>

<footer class="page-footer">
    <div style="margin:0 auto;width:620px;">
        <div style="float:left;margin-top:10px;">
                        <span>版权所有 | 成都理工大学 | 成都市成华区二仙桥东三路1号 | 400065 |
                            蜀ICP备-05026980号-1</span>
            <div style="width:300px;margin:0 auto; padding:20px 0;">
                <a target="_blank"
                   href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=50010802001309"
                   style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                    <img src="images/beian.jpg" style="float:left;" />
                    <p
                            style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#ff0000;">
                        蜀公网安备
                        05026980号</p>
                </a>
            </div>
        </div>
        <div style="float:left">
                        <span>
                            <a target="_blank"
                               href="http://bszs.conac.cn/sitename?method=show&id=350F2D90137E424BE053022819AC0266">
                                <img vspace="0" hspace="0" border="0" src="images/blue.png" data-bd-imgshare-binded="1">
                            </a>
                        </span>
        </div>
    </div>
</footer>

<script>
    var timmer = null;
    window.onload = function () {
        clearInterval(timmer);
        timmer = setInterval(function () {
            var randomInt = getRandomInt(0, 3)
            document.body.style.background = "url(images/bg" + randomInt + ".jpg) no-repeat"
        }, 3500)
    }
    function getRandomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min)
    }
</script>
</body>

</html>
