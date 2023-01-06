<%@ page import="java.util.regex.Pattern" %><%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/12
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>高校智慧门户</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
</head>

<body class="bg">

<!-- 顶部 -->
<div class="top">
    <div style="overflow: visible">
        <div class="fl">
            <h2>欢迎进入智慧校园门户系统！</h2>
        </div>

        <div class="fr topLink">
            <a href="www.cqupt.edu.cn" target="_blank">官网</a>
            <span class="peosonnalcenter">
                    |
                <%
                    String Id=(String)session.getAttribute("Id");
                    String url=null;
                    String url2=null;
                    if(Pattern.matches("^s.*",Id)){
                        url="PCenter.jsp";
                        url2="#";
                    }
                    if(Pattern.matches("^t.*",Id)){
                        url="PCenter2.jsp";
                        url2="PCenter2.jsp";
                    }
                    if("admin".equals(Id)){
                        url="PCenter3.jsp";
                        url2="PCenter3.jsp";
                    }
                %>
                    <a href="<%=url%>">个人中心</a>
            </span>
        </div>
    </div>
    <!-- 头部 -->
</div>
<div class="header">
    <div class="w2">
        <a href="index.jsp">
            <div class="logo"><img src="images/logo.png" alt=""></div>
        </a>
        <div class="isearch">
            <div class="isearchk">
                <form action="SearchServlet" method="post">
                <input type="text" name="keyword" placeholder="请输入关键词进行搜索..." id="search_index">
                <button type="submit" value="搜索" class="isearch_btn"></button>
                </form>
                <!-- <a class="isearch_btn"></a> -->
            </div>
        </div>
    </div>
</div>
<!-- 信息栏 -->
<div class="infos w1">
    <div class="may-iframe ">
        <div>
            <div class="news">
                <div class="info-box">
                    <div class="title">
                        <h1><a href="http://xwzx.cqupt.edu.cn/">重邮新闻</a></h1><a href="http://xwzx.cqupt.edu.cn/"
                                                                                class="more">更多</a>
                    </div>
                    <div class="content">
                        <div id="news_pic" class="pic" style="width: 395px;">
                            <a href="http://xwzx.cqupt.edu.cn/" class="more"><img src="images/news1.png" alt=""></a>
                            <div class="pic_detail">
                                <p>
                                    <a href="http://xwzx.cqupt.edu.cn/"
                                       target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;学校召开党史学习教育动员大会</a>
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp;&nbsp;本网讯（记者 罗静 编审
                                    敖永春）3月10日，学校召开党史学习教育动员大会，贯彻落实习近平总书记在党史学习教育动员大会上的重要讲话精神，按照中央部署和市委、市委教育工委要求，对全校党史学习教…
                                </p>
                            </div>
                        </div>
                        <div class="list-box articl1" id="news" style="width: 267px;margin-left: 26px">
                            <div class="news1">
                                <a href="http://xwzx.cqupt.edu.cn/" target="_blank" title="我校思想政治理论课教师开展暑期实践研修">
                                    <span class="words">我校思想政治理论课教师开展暑期…</span>
                                    <span class="time">07-30</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://xwzx.cqupt.edu.cn/" target="_blank"
                                   title="我校“新时代干部党建工作能力提升培训班”在延安干部培训学院举办">
                                    <span class="words">我校“新时代干部党建工作能力提…</span>
                                    <span class="time">07-28</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://xwzx.cqupt.edu.cn/" target="_blank" title="【重邮奋进者】熊靖峰：愿献身科技的“宝藏男孩”">
                                    <span class="words">【重邮奋进者】熊靖峰：愿献身科…</span>
                                    <span class="time">07-28</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://xwzx.cqupt.edu.cn/" target="_blank" title="我校学工系统教师专题研修班在厦门大学举办">
                                    <span class="words">我校学工系统教师专题研修班在厦…</span>
                                    <span class="time">07-27</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://xwzx.cqupt.edu.cn/" target="_blank"
                                   title="学校组织开展2021年大学生暑期“三下乡”社会实践活动">
                                    <span class="words">学校组织开展2021年大学生暑期“…</span>
                                    <span class="time">07-27</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://xwzx.cqupt.edu.cn/" target="_blank"
                                   title="我校管理干部“世界一流学科攀登能力提升专题培训班”在厦门大学举行">
                                    <span class="words">我校管理干部“世界一流学科攀登…</span>
                                    <span class="time">07-24</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="jiange"></div>
            <div class="info1">
                <div class="info-box leftbox">
                    <div class="title" style="margin-bottom: 16px;">
                        <h1>快速链接</h1>
                        <a href="#" class="more">更多</a>
                    </div>
                    <div class="content">
                        <nav class="nav"></nav>
                        <div style="display:inline">


                            <table class="s-links ">
                                <tr>
                                    <td width="70px"><a href="http://ehall.cqupt.edu.cn/new/index.html"
                                                        target="_blank">服务大厅</a></td>
                                    <td width="70px"><a href="admission.jsp" target="_blank">信息</a>
                                    </td>
                                    <td width="70px"><a href="http://jwzx.cqupt.edu.cn/" target="_blank">教务在线</a>
                                    </td>
                                    <td width="83px"><a href="http://yjs.cqupt.edu.cn/" target="_blank"
                                                        style="letter-spacing: 3px;">研究生院</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://cyhq.cqupt.edu.cn/" target="_blank">后勤服务</a></td>
                                    <td><a href="http://tsg.cqupt.edu.cn/" target="_blank"
                                           style="letter-spacing: 4.2px;">图书馆</a></td>
                                    <td><a href="http://www.cqupt.edu.cn/cqupt/kexue_jg.shtml"
                                           target="_blank">科学研究</a>
                                    </td>
                                    <td><a href="magazine.jsp" target="_blank">学术期刊</a></td>

                                </tr>
                                <tr>
                                    <td><a href="http://hongyan.cqupt.edu.cn/" target="_blank">红岩网校</a></td>
                                    <td><a href="http://xdh.cqupt.edu.cn" target="_blank"
                                           style="letter-spacing: 4.5px;">校董会</a></td>
                                    <td><a href="https://jyjjh.cqupt.edu.cn/association-manage/#/page/homepage"
                                           target="_blank" style="letter-spacing: 4.2px;">基金会</a></td>
                                    <td><a href="http://xylyh.cqupt.edu.cn/" target="_blank"
                                           style="letter-spacing: 3px;">校友联谊会</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://faculty.cqupt.edu.cn/" target="_blank">教师主页</a></td>
                                    <td><a href="https://mail.cqupt.edu.cn/" target="_blank">邮件系统</a></td>
                                    <td><a href="http://rsc.cqupt.edu.cn/" target="_blank">招贤纳士</a></td>
                                    <td><a href="https://gis.cqupt.edu.cn" target="_blank"
                                           style="letter-spacing: 3px;">可视化校园</a></td>


                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- 功能模块 -->
<div class="gongneng">
    <div class="w1">
        <div id="indexAppBox">
            <div class="boxList clearfix">
                <div class="boxTit pull-left">
                    <div class="tit">
                        <h3>用户应用</h3>

                    </div>
                </div>
                <div class="boxContent pull-left">
                    <ul class="clearfix">
                        <li class="pull-left">
                            <a href="login.jsp">
                                <img src="images/app4.gif">
                                <span>用户登录</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="<%=url%>">
                                <img src="images/app8.gif">
                                <span>个人信息</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="<%=url%>">
                                <img src="images/app3.gif">
                                <span>成绩查询</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="<%=url%>">
                                <img src="images/app1.gif">
                                <span>考勤查询</span>
                            </a>
                        </li>



                        <li class="pull-left">
                            <a href="http://www.cqupt.edu.cn/ggfw/zyxl.htm">
                                <img src="images/app15.gif">
                                <span>校历查询</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="http://www.cqupt.edu.cn/xywh/xsjz.htm">
                                <img src="images/app6.gif">
                                <span>学术讲座</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="http://www.cqupt.edu.cn/xywh/xyfg.htm">
                                <img src="images/app7.gif">
                                <span>校园风光</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="http://tuanwei.cqupt.edu.cn/">
                                <img src="images/app2.gif">
                                <span>学生活动</span>
                            </a>

                        </li>
                    </ul>
                    <a id="indexGetMore" href="#">MORE</a>
                </div>
            </div>





            <div class="boxList clearfix">
                <div class="boxTit pull-left">
                    <div class="tit">
                        <h3>教务中心</h3>

                    </div>
                </div>
                <div class="boxContent pull-left">
                    <ul class="clearfix">


                        <li class="pull-left">
                            <a href="<%=url2%>">
                                <img src="images/app9.gif">
                                <span>课程管理</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="<%=url2%>">
                                <img src="images/app3.gif">
                                <span>成绩管理</span>
                            </a>

                        </li>



                        <li class="pull-left">

                            <a href="<%=url2%>">
                                <img src="images/app1.gif">
                                <span>考勤管理</span>
                            </a>
                        </li>



                        <li class="pull-left">

                            <a href="<%=url2%>">
                                <img src="images/app5.gif">
                                <span>班级管理</span>
                            </a>
                        </li>
                    </ul>
                    <a id="indexGetMore" href="#">MORE</a>
                </div>
            </div>




            <div class="boxList clearfix">
                <div class="boxTit pull-left">
                    <div class="tit">
                        <h3>学籍管理</h3>

                    </div>
                </div>
                <div class="boxContent pull-left">
                    <ul class="clearfix">


                        <li class="pull-left">
                            <a href="<%=url%>">
                                <img src="images/app10.gif">
                                <span>学籍信息查询</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="<%=url2%>">
                            <img src="images/app11.gif">
                            <span>异动管理</span>
                        </li>
                    </ul>
                    <a id="indexGetMore" href="#">MORE</a>
                </div>
            </div>




            <div class="boxList clearfix">
                <div class="boxTit pull-left">
                    <div class="tit">
                        <h3>校园资源</h3>

                    </div>
                </div>
                <div class="boxContent pull-left">
                    <ul class="clearfix">


                        <li class="pull-left">
                            <a href="admission.jsp">
                                <img src="images/app12.gif">
                                <span>专业分数信息</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="magazine.jsp">
                                <img src="images/app16.gif">
                                <span>周刊专栏</span>
                            </a>

                        </li>



                        <li class="pull-left">
                            <a href="books.jsp">
                                <img src="images/app14.gif">
                                <span>电子图书资源</span>
                            </a>

                        </li>
                    </ul>
                    <a id="indexGetMore" href="#">MORE</a>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="page-footer">
    <div style="margin:0 auto;width:620px;">
        <div style="float:left;margin-top:10px;">
                <span>版权所有 | 重庆邮电大学 | 重庆市南岸区崇文路2号 | 400065 |<a href="http://www.beian.miit.gov.cn" target="_blank" style="color: #ff0000"></a>
                    渝ICP备：17002788号-1</span>
            <div style="width:300px;margin:0 auto; padding:20px 0;">
                <a target="_blank"
                   href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=50010802001309"
                   style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                    <img src="images/beian.jpg" style="float:left;" />
                    <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; " class="police">
                        渝公网安备
                        50010802001309号</p>
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

</body>

</html>