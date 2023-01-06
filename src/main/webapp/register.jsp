
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册页面</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/register.css">
</head>

<body>
<!-- header 头部模块制作 start-->
<div class="header w">
    <a href="index.html"><img src="images/logo.png" alt=""></a>
</div>
<!-- header 头部模块制作 end-->


<!-- 注册页面制作   start -->
<div class="w registerarea">
    <h3>注册新用户
        <a href="login.jsp">我有账号，去登录</a>
    </h3>
    <div class="reg_form">
        <form action="RegisterServlet"  method="POST" id="zhuceform" onsubmit="return checkUser()">
            <ul>
                <li>
                    <span>请选择身份：</span>
                    <input type="radio" class="rad" id="stu" name="Identity" value="stu">
                    <label for="stu">学生</label>
                    <input type="radio" class="rad" id="tea" name="Identity" value="tea">
                    <label for="tea">教师</label>
                </li>
                <li>
                    <label for="userid">姓名：</label>
                    <input type="text" class="inp" id="userid" placeholder="请输入姓名" name="Name">
                </li>
                <li>
                    <label for="studentID">学号/工号：</label>
                    <input type="text" class="inp" id="stuid" placeholder="请输入学号(s+)/工号(t+)" name="Id">

                </li>
                <li>
                    <span>性别：</span>
                    <input type="radio" class="rad" id="man" name="Sex" checked value="男">
                    <label for="man">男</label>
                    <input type="radio" class="rad" id="woman" name="Sex" value="女">
                    <label for="woman">女</label>
                </li>
                <li>
                    <label for="userid">班级：</label>
                    <input type="text" class="inp" id="classid" placeholder="请输入班级" name="ClassId">
                </li>
                <li>
                    <label for="studentID">专业：</label>
                    <input type="text" name="Profession" class="inp" id="studentID" placeholder="请输入专业">
                </li>
                <li>
                    <label for="studentID">学院：</label>
                    <select name="Academy" id="" style="width:240px ;height:37px">
                    <option value=""></option>
                    <option value="软件工程">软件工程</option>
                    <option value="计算机与科学">计算机与科学</option>
                    <option value="电子通信">电子通信</option>
                    <option value="国际学院">国际学院</option>
                    <option value="光电学院">光电学院</option>
                    <option value="自动化学院">自动化学院</option>
                    <option value="传媒学院">传媒学院</option>
                    <option value="体育学院">体育学院</option>
                    </select>
                </li>
                <li>
                    <label for="logpwd">登录密码：</label>
                    <input type="password" class="inp" id="logpwd" placeholder="请输入登录密码" name="Password">

                </li>

<%--                <li class="agree">--%>
<%--                    <input type="checkbox">同意协议并注册 &nbsp;&nbsp;<a href="#">用户协议</a>--%>
<%--                </li>--%>
                <li>
                    <button type="submit" value="完成注册" class="btn">完成注册</button>
                </li>
            </ul>
        </form>
    </div>
</div>
<!-- 注册页面制作   end -->
<!-- footer -->
<footer class="page-footer">
    <div style="margin:0 auto;width:620px;">
        <div style="float:left;margin-top:10px;">
                <span>学校地址：成都市成华区二仙桥东三路1号|邮政编码：610059<a href="http://www.beian.miit.gov.cn" target="_blank"></a>
                   </span>
            <div style="width:300px;margin:0 auto; padding:20px 0;">
                <a target="_blank"
                   href="https://beian.miit.gov.cn/#/Integrated/index"
                   style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                    <img src="images/beian.jpg" style="float:left;" />
                    <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:red;"> 蜀ICP备05026980号
                       </p>
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
    function checkUser() {
        var userid = document.gestudentIDementById("userid").value;
        var logpwd = document.gestudentIDementById("logpwd").value;
        var studentID = document.gestudentIDementById("studentID").value;
        var relogpwd = document.gestudentIDementById("relogpwd").value;

        if (userid == "") {
            alert("姓名不能为空");
            return false;
        }
        if (studentID == "") {
            alert("学号不能为空");
            return false;
        }
        if (logpwd == "") {
            alert("密码不能为空");
            return false;
        }
        if (relogpwd == "") {
            alert("请确认密码");
            return false;
        }
        document.gestudentIDementById("zhuceform").submit();
    }
</script>
</body>

</html>
