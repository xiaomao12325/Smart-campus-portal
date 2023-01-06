<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.dao.StuDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.domain.StuInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.domain.StuGrade" %>
<%@ page import="com.domain.StuAttendance" %>
<%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/11
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
<%--    <link rel="stylesheet" href="css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="css/PCenter.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <script src="js/jquery.mini.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<%
    String Id=(String)session.getAttribute("Id");
    StuDao sd=new StuDao();
    String[] Stu =sd.get(Id);
    String[][] courses =sd.searchCourse(Id);
%>
<!-- 顶部 -->
<div class="top">
    <div class="w">
        <div class="welcome">欢迎你，<%=Stu[1]%></div>
    </div>
</div>

<!-- 头部 -->
<div class="header">
    <div class="w">
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </div>
        <div class="search">
            <div class="searchk">
                <input type="text" placeholder="请输入关键词进行搜索..." id="search_index">
                <a href="SearchServlet" class="search_btn"></a>
            </div>
        </div>
    </div>
</div>

<!-- 导航栏 -->
<div class="nav w1">
    <div class="dropdown">
        <div class="dt">个人中心</div>
        <div class="dd">
            <ul>
                <li><a href="#">我的信息</a></li>
                <li><a href="#">我的课表</a></li>
                <li><a href="#">我的考勤</a></li>
                <li><a href="#">我的成绩</a></li>
                <li><a href="#">我的班级</a></li>
                <li><a href="#">我的学籍</a></li>
            </ul>
        </div>
    </div>
    <div class="info">
        <div class="i1">
            <div class="photo"><img src="images/userPhoto.jpg" alt=""></div>
            <table>
                <tr>
                    <th>姓名:</th>
                    <td><%=Stu[1]%></td>
                </tr>
                <tr>
                    <th>性别:</th>
                    <td><%=Stu[2]%></td>
                </tr>
                <tr>
                    <th>学号:</th>
                    <td><%=Id%></td>
                </tr>
                <tr>
                    <th>班级:</th>
                    <td><%=Stu[3]%></td>
                </tr>
                <tr>
                    <th>专业:</th>
                    <td><%=Stu[4]%></td>
                </tr>
                <tr>
                    <th>学院:</th>
                    <td><%=Stu[5]%></td>
                </tr>
            </table>
            <div class="change"><a href="javascript:void(0)">修改资料</a></div>
            <div class="contes">
                <div>
                    <h1>修改资料</h1>
                    <span class="del">x</span>
                    <hr>
                    <form action="Update" class="aaa">
                        <div>姓名：<input type="text" value="<%=Stu[1]%>" name="Name"></div>
                        <div>性别：<input type="text" value="<%=Stu[2]%>" name="Sex"></div>
                        <button type="submit" class="submit">确认提交</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="i2">
            <table>
                <thead>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-text-align:center;">星期一</td>
                    <td style="text-text-align:center;">星期二</td>
                    <td style="text-text-align:center;">星期三</td>
                    <td style="text-text-align:center;">星期四</td>
                    <td style="text-text-align:center;">星期五</td>
                    <td style="text-text-align:center;">星期六</td>
                    <td style="text-text-align:center;">星期日</td>
                </tr>
                </thead>
                <tbody>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">1-2节</td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[0][0]%><br>
                            <%=courses[0][1]%><br>
                            <%=courses[0][3]%><br>
                            <%=courses[0][4]%><br>
                            <span style="color:#0000FF"><%=courses[0][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[6][0]%><br>
                            <%=courses[6][1]%><br>
                            <%=courses[6][3]%><br>
                            <%=courses[6][4]%><br>
                            <span style="color:#0000FF"><%=courses[6][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[12][0]%><br>
                            <%=courses[12][1]%><br>
                            <%=courses[12][3]%><br>
                            <%=courses[12][4]%><br>
                            <span style="color:#0000FF"><%=courses[12][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[18][0]%><br>
                            <%=courses[18][1]%><br>
                            <%=courses[18][3]%><br>
                            <%=courses[18][4]%><br>
                            <span style="color:#0000FF"><%=courses[18][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[24][0]%><br>
                            <%=courses[24][1]%><br>
                            <%=courses[24][3]%><br>
                            <%=courses[24][4]%><br>
                            <span style="color:#0000FF"><%=courses[24][2]%></span><br>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">3-4节</td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[1][0]%><br>
                            <%=courses[1][1]%><br>
                            <%=courses[1][3]%><br>
                            <%=courses[1][4]%><br>
                            <span style="color:#0000FF"><%=courses[1][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[7][0]%><br>
                            <%=courses[7][1]%><br>
                            <%=courses[7][3]%><br>
                            <%=courses[7][4]%><br>
                            <span style="color:#0000FF"><%=courses[7][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[13][0]%><br>
                            <%=courses[13][1]%><br>
                            <%=courses[13][3]%><br>
                            <%=courses[13][4]%><br>
                            <span style="color:#0000FF"><%=courses[13][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[19][0]%><br>
                            <%=courses[19][1]%><br>
                            <%=courses[19][3]%><br>
                            <%=courses[19][4]%><br>
                            <span style="color:#0000FF"><%=courses[19][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[25][0]%><br>
                            <%=courses[25][1]%><br>
                            <%=courses[25][3]%><br>
                            <%=courses[25][4]%><br>
                            <span style="color:#0000FF"><%=courses[25][2]%></span><br>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">中午间歇</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">5-6节</td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[2][0]%><br>
                            <%=courses[2][1]%><br>
                            <%=courses[2][3]%><br>
                            <%=courses[2][4]%><br>
                            <span style="color:#0000FF"><%=courses[2][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[8][0]%><br>
                            <%=courses[8][1]%><br>
                            <%=courses[8][3]%><br>
                            <%=courses[8][4]%><br>
                            <span style="color:#0000FF"><%=courses[8][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[14][0]%><br>
                            <%=courses[14][1]%><br>
                            <%=courses[14][3]%><br>
                            <%=courses[14][4]%><br>
                            <span style="color:#0000FF"><%=courses[14][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[20][0]%><br>
                            <%=courses[20][1]%><br>
                            <%=courses[20][3]%><br>
                            <%=courses[20][4]%><br>
                            <span style="color:#0000FF"><%=courses[20][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                        <%=courses[26][0]%><br>
                        <%=courses[26][1]%><br>
                        <%=courses[26][3]%><br>
                        <%=courses[26][4]%><br>
                        <span style="color:#0000FF"><%=courses[26][2]%></span><br>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">7-8节</td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[3][0]%><br>
                            <%=courses[3][1]%><br>
                            <%=courses[3][3]%><br>
                            <%=courses[3][4]%><br>
                            <span style="color:#0000FF"><%=courses[3][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[9][0]%><br>
                            <%=courses[9][1]%><br>
                            <%=courses[9][3]%><br>
                            <%=courses[9][4]%><br>
                            <span style="color:#0000FF"><%=courses[9][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[15][0]%><br>
                            <%=courses[15][1]%><br>
                            <%=courses[15][3]%><br>
                            <%=courses[15][4]%><br>
                            <span style="color:#0000FF"><%=courses[15][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[21][0]%><br>
                            <%=courses[21][1]%><br>
                            <%=courses[21][3]%><br>
                            <%=courses[21][4]%><br>
                            <span style="color:#0000FF"><%=courses[21][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[27][0]%><br>
                            <%=courses[27][1]%><br>
                            <%=courses[27][3]%><br>
                            <%=courses[27][4]%><br>
                            <span style="color:#0000FF"><%=courses[27][2]%></span><br>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">下午间歇</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">9-10节</td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                        <%=courses[4][0]%><br>
                        <%=courses[4][1]%><br>
                        <%=courses[4][3]%><br>
                        <%=courses[4][4]%><br>
                        <span style="color:#0000FF"><%=courses[4][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[10][0]%><br>
                            <%=courses[10][1]%><br>
                            <%=courses[10][3]%><br>
                            <%=courses[10][4]%><br>
                            <span style="color:#0000FF"><%=courses[10][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[16][0]%><br>
                            <%=courses[16][1]%><br>
                            <%=courses[16][3]%><br>
                            <%=courses[16][4]%><br>
                            <span style="color:#0000FF"><%=courses[16][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[22][0]%><br>
                            <%=courses[22][1]%><br>
                            <%=courses[22][3]%><br>
                            <%=courses[22][4]%><br>
                            <span style="color:#0000FF"><%=courses[22][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[28][0]%><br>
                            <%=courses[28][1]%><br>
                            <%=courses[28][3]%><br>
                            <%=courses[28][4]%><br>
                            <span style="color:#0000FF"><%=courses[28][2]%></span><br>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-text-align:center">
                    <td style="font-weight:bold;">11-12节</td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[5][0]%><br>
                            <%=courses[5][1]%><br>
                            <%=courses[5][3]%><br>
                            <%=courses[5][4]%><br>
                            <span style="color:#0000FF"><%=courses[5][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[11][0]%><br>
                            <%=courses[11][1]%><br>
                            <%=courses[11][3]%><br>
                            <%=courses[11][4]%><br>
                            <span style="color:#0000FF"><%=courses[11][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[17][0]%><br>
                            <%=courses[17][1]%><br>
                            <%=courses[17][3]%><br>
                            <%=courses[17][4]%><br>
                            <span style="color:#0000FF"><%=courses[17][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[23][0]%><br>
                            <%=courses[23][1]%><br>
                            <%=courses[23][3]%><br>
                            <%=courses[23][4]%><br>
                            <span style="color:#0000FF"><%=courses[23][2]%></span><br>
                        </div>
                    </td>
                    <td>
                        <div class="kbTd" zc="11111111000000000000">
                            <%=courses[29][0]%><br>
                            <%=courses[29][1]%><br>
                            <%=courses[29][3]%><br>
                            <%=courses[29][4]%><br>
                            <span style="color:#0000FF"><%=courses[29][2]%></span><br>
                        </div>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
<%--            </form>--%>
        </div>
        <div class="i3">
            <div class="calendar">
                <div class="title">
                    <h1 class="green" id="calendar-title">Month</h1>
                    <h2 class="green small" id="calendar-year">Year</h2>
                    <a href="#" id="prev"></a>
                    <a href="#" id="next"></a>
                </div>
                <hr>
                <div class="body">
                    <div class="lightgrey body-list">
                        <ul>
                            <li>星期日</li>
                            <li>星期一</li>
                            <li>星期二</li>
                            <li>星期三</li>
                            <li>星期四</li>
                            <li>星期五</li>
                            <li>星期六</li>
                        </ul>
                    </div>
                    <div class="darkgrey body-list">
                        <ul id="days">
                        </ul>
                    </div>
                </div>
<%--                <div class="tip">--%>
<%--                    <div>已打卡<span class="tip_t"></span><br></div>--%>

<%--                    <div>未打卡<span class="tip_f"></span></div>--%>
<%--                </div>--%>
                <div class="reason" id="reason">
                    <form action="AttendanceServlet" method="post">
                        <p>备注：</p>
                        <textarea name="reason" id="" cols="24" rows="9" placeholder="请输入..."></textarea><br>
                        <input type="text" name="time" value="">
                        <button type="submit">提交</button>
                    </form>

                </div>
                <button class="checkkaoqin">查看我的考勤情况</button>

            </div>
            <div class="contes">
                <div >
                    <h1>考勤情况</h1>
                    <span class="del">x</span>
                    <hr>
                </div>
                <div>
                    <form action="StuAtt" method="post" style="width: 100%; height:100%">
                        <table border="1px solid #C0C0C0" style="width: 100%">
                            <tr>
                                <th>姓 名</th>
                                <th>学 号</th>
                                <th>打卡时间</th>
                                <th>备 注</th>
                            </tr>
                            <%
                                List<StuAttendance> StuAtt=sd.searchStuAtt(Id);
                                for (int i=0;i<StuAtt.size();i++){%>
                            <tr>
                                <td><%=Stu[1]%></td>
                                <td><%=Id%></td>
                                <td><%=StuAtt.get(i).getTime()%></td>
                                <td><%=StuAtt.get(i).getNotes()%></td>
                            </tr>
                            <%}
                            %>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <div class="i4">
            <%
                List<StuGrade> list=sd.searchGrade(Id);
            %>
            <div class="score">
                <table id="bzyTable">
                    <thead>
                    <tr>
                        <td rowspan="2">学年</td>
                        <td rowspan="2">课程编号</td>
                        <td rowspan="2">课程名称</td>
                        <td rowspan="2">成绩</td>
                    </tr>
                    </thead>

                        <%
                            for(int i=0;i<list.size();i++){%>
                    <tbody>
                        <tr>
                            <td rowspan="2"><%=list.get(i).getAcademicYear()%></td>
                            <td rowspan="2"><%=list.get(i).getCourseId()%></td>
                            <td rowspan="2"><%=list.get(i).getCourseName()%></td>
                            <td rowspan="2"><%=list.get(i).getScore()%></td>
                        </tr>
                    </tbody>
                        <%}
                        %>
                </table>
            </div>
        </div>
        <div class="i5">
            <form action="#">
                <h1>班级号: &nbsp;&nbsp;<%=Stu[3]%></h1>
                <h1>班级学生：</h1>
                <table class="table table-striped">
                    <tr>
                        <th>学号</th>
                        <th>名字</th>
                        <th>性别</th>
                        <th>专业</th>
                        <th>学院</th>
                    </tr>
                    <%
                        List<StuInfo> Class=sd.getStuAll(Id);
                        for(int i=0;i<Class.size();i++){%>
                        <tr>
                            <td><%=Class.get(i).getId()%></td>
                            <td><%=Class.get(i).getName()%></td>
                            <td><%=Class.get(i).getSex()%></td>
                            <td><%=Class.get(i).getProfession()%></td>
                            <td><%=Class.get(i).getAcademy()%></td>
                        </tr>
                        <%}
                        %>
                </table>
            </form>
        </div>
        <div class="i6">
            <%String[] status=sd.searchStatus(Id);%>
                <table class="table table-bordered">
                    <tr>
                        <th>生源地:</th>
                        <td><%=status[0]%></td>
                    </tr>
                    <tr>
                        <th>录取批次:</th>
                        <td><%=status[1]%></td>
                    </tr>
                    <tr>
                        <th>入学日期:</th>
                        <td><%=status[2]%></td>
                    </tr>
                    <tr>
                        <th>统一认证码:</th>
                        <td><%=status[3]%></td>
                    </tr>
                    <tr>
                        <th>学籍异动状态：</th>
                        <td><%=status[4]%></td>
                    </tr>
                    <tr>
                        <th>备注：</th>
                        <td>
                            <p><%=status[5]%></p>
                        </td>
                    </tr>
                </table>
        </div>
    </div>
</div>
<script>
    $(".checkkaoqin").click(function () {
        $(".contes").show();
    })
    $(".contes span").click(function () {
        $(".contes").hide();
    })
    $(".change a").click(function () {
        $(".contes").show();
    })
    $(function () {
        $(".dd ul li").click(function () {
            var index = $(this).index();
            $(".info>div").eq(index).show().siblings().hide();
            $(this).css("backgroundColor", "#c81623").siblings().css("backgroundColor", "#157b70");

        })
    })
    var month_olympic = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    var month_normal = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    var month_name = ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"];
    var holder = document.getElementById("days");
    var prev = document.getElementById("prev");
    var next = document.getElementById("next");
    var ctitle = document.getElementById("calendar-title");
    var cyear = document.getElementById("calendar-year");
    var my_date = new Date();
    var my_year = my_date.getFullYear();
    var my_month = my_date.getMonth();
    var my_months=my_month+1;
    var my_day = my_date.getDate();
    var my_hour = my_date.getHours();
    my_hour=my_hour<10?'0'+my_hour:my_hour;
    var my_minute = my_date.getMinutes();
    my_minute=my_minute<10?'0'+my_minute:my_minute;
    var my_second = my_date.getSeconds();
    my_second=my_second<10?'0'+my_second:my_second;

    $(".reason form button").click(function () {
        $(".reason form input").val(my_year+"-"+my_months+"-"+my_day+" "+my_hour+":"+my_minute+":"+my_second);
    })

    function dayStart(month, year) {
        var tmpDate = new Date(year, month, 1);
        return (tmpDate.getDay());
    }
    function daysMonth(month, year) {
        var tmp = year % 4;
        if (tmp == 0) {
            return (month_olympic[month]);
        } else {
            return (month_normal[month]);
        }
    }
    function refreshDate() {
        var str = "";
        var totalDay = daysMonth(my_month, my_year); //获取该月总天数
        var firstDay = dayStart(my_month, my_year); //获取该月第一天是星期几
        var myclass;
        for (var i = 1; i < firstDay; i++) {
            str += "<li></li>"; //为起始日之前的日期创建空白节点
        }
        for (var i = 1; i <= totalDay; i++) {
            if ((i < my_day && my_year == my_date.getFullYear() && my_month == my_date.getMonth()) || my_year < my_date.getFullYear() || (my_year == my_date.getFullYear() && my_month < my_date.getMonth())) {
                myclass = " class='lightgrey'"; //当该日期在今天之前时，以浅灰色字体显示
            } else if (i == my_day && my_year == my_date.getFullYear() && my_month == my_date.getMonth()) {
                myclass = " class='green greenbox'"; //当天日期以绿色背景突出显示
            } else {
                myclass = " class='darkgrey'"; //当该日期在今天之后时，以深灰字体显示
            }
            str += "<li" + myclass + ">" + i + "</li>"; //创建日期节点
        }
        holder.innerHTML = str; //设置日期显示
        ctitle.innerHTML = month_name[my_month]; //设置英文月份显示
        cyear.innerHTML = my_year; //设置年份显示
    }
    refreshDate();
    prev.onclick = function (e) {
        e.preventDefault();
        my_month--;
        if (my_month < 0) {
            my_year--;
            my_month = 11;
        }
        refreshDate();
    }
    next.onclick = function (e) {
        e.preventDefault();
        my_month++;
        if (my_month > 11) {
            my_year++;
            my_month = 0;
        }
        refreshDate();
    }
</script>
</body>
</html>