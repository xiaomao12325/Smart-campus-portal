
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
                    if(Id.startsWith("s")){
                        url="PCenter.jsp";
                        url2="#";
                    }
                    if(Id.startsWith("t")){
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
            <div class="logo"><img src="images/logo_red.png" width="1200" height="120" alt=""></div>
        </a>
         
    </div>
</div>
<!-- 信息栏 -->
<div class="infos w1">
    <div class="may-iframe ">
        <div>
            <div class="news">
                <div class="info-box">
                    <div class="title">
                        <h1><a>成理新闻</a></h1><a href="http://news.cdut.edu.cn/clyw.htm"
                                                                                class="more">更多</a>
                    </div>
                    <div class="content">
                        <div id="news_pic" class="pic" style="width: 395px;">
                            <a href="http://news.cdut.edu.cn/info/1003/44475.htm" class="more"><img src="images/大会.png" alt=""></a>
                            <div class="pic_detail">
                                <p>
                                    <a href="http://news.cdut.edu.cn/info/1003/44475.htm"
                                       target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;我校召开学习贯彻党的二十大...</a>
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp;&nbsp;为深入学习宣传贯彻党的二十大精神，11月18日下午，我校在主校区6C405召开学习贯彻党的二十大精神师生宣讲团成立仪式暨动员培训会。
                                </p>
                            </div>
                        </div>
                        <div class="list-box articl1" id="news" style="width: 267px;margin-left: 26px">
                            <div class="news1">
                                <a href="http://news.cdut.edu.cn/info/1003/44723.htm" title="踔厉奋发新启程  勇毅前行向未来--成都">
                                    <span class="words">踔厉奋发新启程  勇毅前行向未来--成都</span>
                                    <span class="time">2022-12-31</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://www.news.cn/politics/2022-12/31/c_1129248100.htm"
                                   title="【国之大者】国家主席习近平发表二0二...">
                                    <span class="words">【国之大者】国家主席习近平发表二0二...</span>
                                    <span class="time">2022-12-31</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://news.cdut.edu.cn/info/1003/44727.htm"title="校党委书记龚灏宣讲党的二十大精神">
                                    <span class="words">校党委书记龚灏宣讲党的二十大精神</span>
                                    <span class="time">2022-12-31</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://news.cdut.edu.cn/info/1003/44728.htm" title="校长刘清友宣讲党的二十大精神">
                                    <span class="words">校长刘清友宣讲党的二十大精神</span>
                                    <span class="time">2022-12-31</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://news.cdut.edu.cn/info/1003/44718.htm"
                                   title="李天斌教授当选俄罗斯自然科学院院士">
                                    <span class="words">李天斌教授当选俄罗斯自然科学院院士</span>
                                    <span class="time">2022-12-30</span>
                                </a>
                            </div>
                            <div class="news1">
                                <a href="http://news.cdut.edu.cn/info/1003/44732.htm"
                                   title="我校铀矿地质团队在国际学术期刊Lithos...">
                                    <span class="words">我校铀矿地质团队在国际学术期刊Lithos...</span>
                                    <span class="time">2023-1-3</span>
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
                                    <td width="70px"><a href="https://bsdt.cdut.edu.cn/EIP/nonlogin/homePage.htm"
                                                        target="_blank">服务大厅</a></td>
                                    <td width="70px"><a href="https://cas.paas.cdut.edu.cn/cas/login?service=https%3A%2F%2Fbsdt.cdut.edu.cn%2FEIP%2Fcaslogin.jsp">教务登陆</a>
                                    </td>
                                    <td width="83px"><a href="https://yjsgl.cdut.edu.cn/login"
                                                        style="letter-spacing: 3px;">研究生系统</a></td>
                                    <td><a href="http://cdut.fanya.chaoxing.com/portal">网络教学</a></td>

                                </tr>
                                <tr>
                                    <td><a href="http://www.service.cdut.edu.cn/">后勤服务</a></td>
                                    <td><a href="http://www.lib.cdut.edu.cn/"
                                           style="letter-spacing: 3px;">图书资源</a></td>
                                    <td><a href="http://www.cdut.edu.cn/kxyj/rwsk.htm"
                                           target="_blank">科学研究</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.cdut.edu.cn/szducs/szjk.htm">师资队伍</a></td>
                                    <td><a href="http://www.cdut.edu.cn/xygk/xxjj.htm">学校简介</a></td>
                                    <td><a href="https://www.720yun.com/t/69722wOdata?scene_id=302686"
                                           style="letter-spacing: 1px;">VR全景校园</a></td>


                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<div class="info w1">

        <div class="info2">
            <p>
                <span style="color:black;font-size:30px">通知公告/</span>
                <span style="color:red;font-size:30px">Notice</span>
            </p>
            <a href="http://news.cdut.edu.cn/info/1005/44738.htm">
                <span style="color:black;font-size:22px">关于2023年寒假放假及下学期开学时间安...<2023/01/04></span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1005/44690.htm">
                <span style="color:black;font-size:22px">关于2023部分节假日安排的通知<2023/01/04></span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1005/44681.htm">
                <span style="color:black;font-size:22px">调整学校食堂服务时间的通知<2022/12/26></span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1005/44678.htm">
                <span style="color:black;font-size:22px">关于申报教育部第九届高等学校科学...<2022/12/26></span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1005/44670.htm">
                <span style="color:black;font-size:22px">关于2023年全国硕士研究生招生考试...<2022/12/26></span><br><br>
            </a>


        </div>


        <div class="content1">
            <p>
                <span style="color:black;font-size:23px">媒体关注/</span>
                <span style="color:red;font-size:24px">Media</span>
            </p>
            <a href="http://t.m.china.com.cn/convert/c_s4I4xRM7.html">
                <span style="color:black;font-size:18px">中国网 喜讯！四川首个”海外领事保护...</span><br>
            </a>
            <a href="http://t.m.china.com.cn/convert/c_x6USLX4h.html">
                <span style="color:black;font-size:18px">中国网喜报！成都理工大学新获批3项国家...</span><br>
            </a>
            <a href="https://cbgc.scol.com.cn/news/3906715?from=androidapp&app_id=cbgc&localTimeStamp=1672247531852">
                <span style="color:black;font-size:18px">川观新闻、四川观察四川省首个海外领事...</span><br>
            </a>
            <a href="http://t.m.china.com.cn/convert/c_BATK9Uhh.html">
                <span style="color:black;font-size:18px">中国网 祝贺！ 成都理工大学古地理重建...</span><br>
            </a>
            <a href="http://paper.jyb.cn/zgjyb/html/2022-12/24/content_618322.htm?div=-1">
                <span style="color:black;font-size:18px">中国网 祝贺！ 成都理工大学马克思主义学院...</span><br>
            </a>
        </div>
    


        <div class="content1">
            <p>
                <span style="color:black;font-size:23px">学术活动/</span>
                <span style="color:red;font-size:24px">Academic</span>
            </p>
            <a href="http://news.cdut.edu.cn/info/1008/44650.htm">
                <span style="color:black;font-size:18px">关于召开四川省玄武岩纤维产业...</span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1008/44636.htm">
                <span style="color:black;font-size:18px">第一届山区土木工程学术论坛会议</span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1008/44616.htm">
                <span style="color:black;font-size:18px">地球物理学论坛: Microseismic...</span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1008/44610.htm">
                <span style="color:black;font-size:18px">【地球讲坛】系列学术讲座第...</span><br>
            </a>
            <a href="http://news.cdut.edu.cn/info/1008/44609.htm">
                <span style="color:black;font-size:18px">成都理工大学 碳中和背景下地...</span><br>
            </a></div></div>


            




        






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
                            <a href="http://www.aao.cdut.edu.cn/xlzx/jxrl.htm">
                                <img src="images/app15.gif">
                                <span>校历查询</span>
                            </a>

                        </li>





                        <li class="pull-left">
                            <a>
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
                            <a href="https://www.720yun.com/t/69722wOdata?scene_id=302686">
                                <img src="images/app7.gif">
                                <span>VR校园</span>
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
        
    </div>
</footer>

</body>

</html>
