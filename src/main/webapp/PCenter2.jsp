<%@ page import="com.dao.TeaDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.domain.CourseChangeInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.domain.StuAttendance" %><%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/23
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理中心</title>
    <link rel="stylesheet" href="css/PCenter.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <script src="js/jquery.mini.js"></script>

</head>

<body>
<%
    String Id=(String)session.getAttribute("Id");
    TeaDao td=new TeaDao();
    String[] Tea =td.get(Id);
    String[][] courses =td.searchCourse(Id);
    for(int i=0;i<30;i++){
        if(courses[i][2]!=""){
            courses[i][2]=Tea[0];
        }
    }
    List list=new ArrayList();
    for(int i=0;i<30;i++){
        if(courses[i][0]!=null){
            list.add(new String[]{courses[i][0], courses[i][1],courses[i][2],courses[i][3],courses[i][4]});
        }
    }
    for(int i=0;i<list.size();i++){
        System.out.println(list.get(i));
    }
%>
<!-- 顶部 -->
<div class="top">
    <div class="w">
        <div class="welcome">欢迎你，<%=Tea[0]%></div>
    </div>
</div>

<!-- 头部 -->
<div class="header">
    <div class="w">
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.jpg" alt=""></a>
        </div>
        <div class="search">
            <div class="searchk">
                <input type="text" placeholder="请输入关键词进行搜索..." >
                <a href="#" class="search_btn"></a>
            </div>
        </div>
    </div>
</div>

<!-- 导航栏 -->
<div class="nav w1">
    <div class="dropdown">
        <div class="dt">管理中心</div>
        <div class="dd">
            <ul>
                <li><a href="#">我的信息</a></li>
                <li><a href="#">课程管理</a></li>
                <li><a href="#">考勤管理</a></li>
                <li><a href="#">成绩管理</a></li>
                <li><a href="#">班级管理</a></li>
                <li><a href="#">学籍管理</a></li>
                <li><a href="#">更多</a></li>
            </ul>
        </div>
    </div>
    <div class="info">
        <div class="i1">
            <div class="photo"><img src="images/userPhoto.jpg" alt=""></div>
            <table>
                <tr>
                    <th>姓名:</th>
                    <td><%=Tea[0]%></td>
                </tr>
                <tr>
                    <th>工号:</th>
                    <td><%=Id%></td>
                </tr>
                <tr>
                    <th>性别:</th>
                    <td><%=Tea[1]%></td>
                </tr>
                <tr>
                    <th>学院:</th>
                    <td><%=Tea[2]%></td>
                </tr>

            </table>
            <form action="#" class="alertform">

            </form>
            <div class="change"><a href="javascript:void(0)">修改资料</a></div>
            <div class="contes change-t">
                <div>
                    <h1>修改资料</h1>
                    <span class="del">x</span>
                    <hr>
                    <form action="Update" method="post">
                        <div>姓名：<input type="text" value="<%=Tea[0]%>" name="Name"></div>
                        <div>性别：<input type="text" value="<%=Tea[1]%>" name="Sex"></div>
                        <button type="submit" class="submit">确认提交</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="i2">
            <div class="change"><a href="javascript:void(0)">停调课申请</a></div>
            <div class="change1"><a href="javascript:void(0)">查看申请记录</a></div>
            <div class="contes">
                <div>
                    <h1>停调课申请</h1>
                    <span class="del">x</span>
                    <hr>
                    <form action="ApplyCourse" method="post">
                        <div><span>课程号：</span><input type="text" name="CourseId"></div>
                        <div><span>课程名：</span><input type="text" name="CourseName"></div>
                        <div><span>工号：</span><input type="text" value="<%=Id%>" name="Id"></div>
                        <div><span>地点：</span><input type="text" name="Place"></div>
                        <div><span>时间：</span><input type="text" name="Time"></div>
                        <div><span>变更地点：</span><input type="text" name="ChangePlace"></div>
                        <div><span>变更时间：</span><input type="text" name="ChangeTime"></div>
                        <div><span>备注：</span><input type="text" name="Notes"></div>
                        <button type="submit" class="submit">确认提交</button>
                    </form>
                </div>
            </div>
            <div class="contes1">
                <div>
                    <h1>停调课申请记录</h1>
                    <span class="del">x</span>
                    <hr>
                </div>
                <div class="contes1-table">
                    <form action="#">
                        <table>
                            <tr>
                                <th>课程号</th>
                                <th>课程名</th>
                                <th>工号</th>
                                <th>地点</th>
                                <th>时间</th>
                                <th>变更地点</th>
                                <th>变更时间</th>
                                <th>备注</th>
                            </tr>
                            <%
                                List<CourseChangeInfo> checkAC =td.CheckAC(Id);
                                for(int i=0;i<checkAC.size();i++){%>
                                    <tr>
                                        <th><%=checkAC.get(i).getCourseId()%></th>
                                        <th><%=checkAC.get(i).getCourseName()%></th>
                                        <th><%=checkAC.get(i).getId()%></th>
                                        <th><%=checkAC.get(i).getPlace()%></th>
                                        <th><%=checkAC.get(i).getTime()%></th>
                                        <th><%=checkAC.get(i).getChangePlace()%></th>
                                        <th><%=checkAC.get(i).getChangeTime()%></th>
                                        <th><%=checkAC.get(i).getNotes()%></th>
                                    </tr>
                                <%}
                                %>
                        </table>
                    </form>
                </div>
            </div>
            <table>
                <thead>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-align:center;">星期一</td>
                    <td style="text-align:center;">星期二</td>
                    <td style="text-align:center;">星期三</td>
                    <td style="text-align:center;">星期四</td>
                    <td style="text-align:center;">星期五</td>
                    <td style="text-align:center;">星期六</td>
                    <td style="text-align:center;">星期日</td>
                </tr>
                </thead>
                <tbody>
                <tr style="text-align:center">
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
            </div>
            <div class="search1 kaoqin">
                <h2>查看考勤情况</h2>
                <input type="text" placeholder="请输入班级号..." id="search_index" >
                <button type="submit">搜索</button>
            </div>
            <div class="per">
                <h1>总人数:&nbsp;<span class="kqdata"></span></h1>
                <h1>已打卡:&nbsp;&nbsp;<span class="kqdata"></span></h1>
                <h1>未打卡:&nbsp;&nbsp;<span class="kqdata"></span></h1>
            </div>
            <button class="checkkaoqin">查看班级考勤情况</button>
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
                                String ci=(String)request.getAttribute("ci");
                                List<StuAttendance> StuAtt=td.attInfo(ci);
                                for (int i=0;i<StuAtt.size();i++){%>
                            <tr>
                                <td><%=StuAtt.get(i).getName()%></td>
                                <td><%=StuAtt.get(i).getId()%></td>
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
            <div class="score">
                <div class="search1 insertScore">
                    <input type="text" placeholder="请输入课程号..." id="score">
                    <button type="submit">搜索</button>
                </div>
                <table id="stuscore">
                    <tr>
                        <td>学生姓名</td>
                        <td>学年</td>
                        <td>课程编号</td>
                        <td>课程名称</td>
                        <td>成绩</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="i5">
                <div class="search1 classinfo">
                <h1>班级号: &nbsp;&nbsp;<input type="text" id="classid">
                    <button type="submit">搜索</button>
                </h1>
                </div>
                <h1>班级学生：</h1>
                <table id="mytable">
                    <tr>
                        <th>学号</th>
                        <th>名字</th>
                        <th>性别</th>
                    </tr>
                </table>
        </div>
        <div class="i6">
                <table>
                    <tr>
                        <th>学号:</th>
                        <td>
                            <div class="search1 searchstatus">
                            <input type="text" style="height:30px" id="status">
                            <button type="submit" style="height:30px;width:30px;background-color:#fff;margin-left: -6px;">搜索</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>生源地:</th>
                        <td><span class="stadata"></span></td>
                    </tr>
                    <tr>
                        <th>录取批次:</th>
                        <td><span class="stadata"></span></td>
                    </tr>
                    <tr>
                        <th>入学日期:</th>
                        <td><span class="stadata"></span></td>
                    </tr>
                    <tr>
                        <th>统一认证码:</th>
                        <td><span class="stadata"></span></td>
                    </tr>
                    <tr>
                        <th>学籍异动状态：</th>
                        <td><span class="stadata"></span></td>
                    </tr>
                    <tr>
                        <th>备注：</th>
                        <td><span class="stadata"></span></td>
                    </tr>
                </table>
        </div>
    </div>
</div>
<script>
    $(function(){
        $(".kaoqin button").click(function (){
            var k=$("#search_index").val();
            $.get("/SearchAtt?k="+k,function (data) {
            var obj=JSON.parse(data);
            console.log(obj);
            var spans=$(".kqdata");
            $(spans[0]).html(obj.kcount);
            $(spans[1]).html(obj.kyes);
            $(spans[2]).html(obj.kno);
            })
        });
    });
    $(function(){
        $(".searchstatus button").click(function (){
            var StuId=$("#status").val();
            $.get("/SearchSta?StuId="+StuId,function (data) {
                var obj1=JSON.parse(data);
                console.log(obj1);
                var SD=$(".stadata");
                $(SD[0]).html(obj1.Origin);
                $(SD[1]).html(obj1.EB);
                $(SD[2]).html(obj1.AD);
                $(SD[3]).html(obj1.UI);
                $(SD[4]).html(obj1.CS);
                $(SD[5]).html(obj1.Note);
            })
        });
    });
    $(function(){
        $(".classinfo button").click(function (){
            var CI=$("#classid").val();
            $.get("/SearchClass?CI="+CI,function (data) {
                //console.log(data);
                var obj2=JSON.parse(data);
                var SC=$(".cidata");
                console.log(obj2);
                var rowdata="";
                $(".datarow").remove();
                for(i=0;i<obj2.length;i++){
                    rowdata='<tr class="datarow">';
                    rowdata=rowdata+"<td>"+obj2[i][0]+"</td>";
                    rowdata=rowdata+"<td>"+obj2[i][1]+"</td>";
                    rowdata=rowdata+"<td>"+obj2[i][2]+"</td>";
                    rowdata=rowdata+"</tr>";
                    $("#mytable").append(rowdata);
                }
            })
        });
    });
    $(function(){
        $(".insertScore button").click(function (){
            var IS=$("#score").val();
            $.get("/SearchScore?IS="+IS,function (data) {
                console.log(data);
                var obj3=JSON.parse(data);
                var SC=$(".sgdata");
                console.log(obj3);
                var rowdata="";
                $(".datarow2").remove();
                for(i=0;i<obj3.length;i++){
                    rowdata='<tr class="datarow2">';
                    rowdata=rowdata+"<td>"+obj3[i][0]+"</td>";
                    rowdata=rowdata+"<td>"+obj3[i][1]+"</td>";
                    rowdata=rowdata+"<td>"+obj3[i][2]+"</td>";
                    rowdata=rowdata+"<td>"+obj3[i][3]+"</td>";
                    rowdata=rowdata+'<td contenteditable id="d'+obj3[i][5]+'">'+obj3[i][4]+"</td>";
                    rowdata=rowdata+'<td><button data-key="'+obj3[i][5]+'">录入</button></td>';
                    rowdata=rowdata+"</tr>";
                    $("#stuscore").append(rowdata);
                }

                $("button[data-key]").click(function () {
                       var key=$(this).attr("data-key");
                       var score=$("#d"+key).html();
                       alert("ss:"+key+"_____"+score);
                       $.ajax({
                           type:"post",
                           url:"/InsertScore",
                           data:{
                               "Key":key,
                               "Score":score
                           }
                       })
                });

            })
        });
    });
    $(".checkkaoqin").click(function () {
        $(".contes").show();
    })
    $(".change a").click(function () {
        $(".contes").show();
    })
    $(".contes span").click(function () {
        $(".contes").hide();
    })
    $(".change1 a").click(function () {
        $(".contes1").show();
    })
    $(".contes1 span").click(function () {
        $(".contes1").hide();
    })
    $("#bzyTable .insert").click(function () {
        $(".grade").innerHTML = "";
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
    var my_months = my_month + 1;
    var my_day = my_date.getDate();
    $(".reason form button").click(function () {
        $(".reason form input").val(my_day);
        console.log(my_day);
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
