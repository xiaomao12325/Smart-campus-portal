<%@ page import="com.domain.CourseChangeInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.ManDao" %><%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/27
  Time: 11:04
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
<%ManDao md=new ManDao();%>
<!-- 顶部 -->
<div class="top">
    <div class="w">
        <div class="welcome">欢迎你，管理员</div>
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
                <input type="text" placeholder="请输入关键词进行搜索..." id="">
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
                <li style="padding-left: 44px;"><a href="#">停调课审批</a></li>
                <li style="padding-left: 44px;"><a href="#">学籍信息修改</a></li>
                <li><a href="#">成绩管理</a></li>
                <li><a href="#">班级管理</a></li>
                <li><a href="#">考勤管理</a></li>
            </ul>
        </div>
    </div>
    <div class="info">
        <div class="i2">
            <div class="change1"><a href="javascript:void(0)">查看申请记录</a></div>
            <div class="change"><a href="javascript:void(0)">课表修改</a></div>
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
                                <th></th>
                            </tr>
                            <%
                                List<CourseChangeInfo> checkAC =md.CheckAC();
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
                        <button type="submit">同意</button>
                    </form>
                </div>
            </div>
            <div class="contes">
                <div>
                    <h1>课表修改</h1>
                    <span class="del">x</span>
                    <hr>
                    <form action="OptCourse" method="post">
                        <div><span>课程号：</span><input type="text" name="CourseId"></div>
                        <div><span>地点：</span><input type="text" name="Place"></div>
                        <div><span>时间：</span><input type="text" name="Time"></div>
                        <div><span>变更地点：</span><input type="text" name="ChangePlace"></div>
                        <div><span>变更时间：</span><input type="text" name="ChangeTime"></div>
                        <button type="submit" class="submit">确认提交</button>
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
                    <td style="font-weight:bold;">1、2节</td>
                    <td></td>
                    <td></td>
                    <td>
                        A13202A2130330011<br>A2130330-操作系统<br>地点：4513
                        <br>1-8周<br><span style="color:#0000FF">朱红军 必修 3.0学分</span><br>
                    </td>
                    <td></td>
                    <td>
                        A13202A2130330011<br>A2130330-操作系统<br>地点：4513
                        <br>1-4周<br><span style="color:#0000FF">朱红军 必修 3.0学分</span><br>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td style="font-weight:bold;">3、4节</td>
                    <td></td>
                    <td>
                        A13202B1220070061<br>B1220070-大学生职业发展与就业指导2<br>地点：2202
                        <br>1-8周<br><span style="color:#0000FF">涂佳 必修 1.0学分</span><br>
                    </td>
                    <td>
                        T00202A1090030026<br>A1090030-体育（俱乐部）-篮球初级<br>地点：九栋篮球场01
                        <br>1-8周<br><span style="color:#0000FF">王浩骅 必修 .5学分</span><br>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td style="font-weight:bold;">中午间歇</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td style="font-weight:bold;">5、6节</td>
                    <td>
                        A13202A2130330011<br>A2130330-操作系统<br>地点：4513
                        <br>1-8周<br><span style="color:#0000FF">朱红军 必修 3.0学分</span><br>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td></td>
                    <td></td>
                    <td>
                        <div class="kbTd" zc="00011110000000000000">
                            SK13202A2130330011<br>A2130330-操作系统<br>地点：计算机教室（一）(综合实验楼A401/A402)
                            <br>4-7周<br><span style="color:#0000FF">朱红军 必修 .0学分</span><br></div>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td style="font-weight:bold;">下午间歇</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td style="font-weight:bold;">9、10节</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="text-align:center">
                    <td style="font-weight:bold;">11、12节</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="i6">
        <div class="change"><a href="javascript:void(0)">修改资料</a></div>
        <div class="contes change-t">
            <div>
                <h1>修改资料</h1>
                <span class="del">x</span>
                <hr>
                <form action="OptStatus" method="post">
                    <div><span>学号：</span><input type="text" name="Id"></div>
                    <div><span>生源地：</span><input type="text" name="Origin"></div>
                    <div><span>录取批次：</span><input type="text" name="EnterBatch"></div>
                    <div><span>入学日期：</span><input type="text" placeholder="yyyy-MM-dd" name="AcademicYear"></div>
                    <div><span>统一验证码：</span><input type="text" name="UnifiedId"></div>
                    <div><span>学籍异动状态：</span><input type="text" name="StatusChange"></div>
                    <div><span>备注：</span><input type="text" name="Notes"></div>

                    <button type="submit" class="submit">确认提交</button>
                </form>
            </div>
        </div>
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
                    rowdata=rowdata+'<td><button data-key="'+obj3[i][5]+'">修改</button></td>';
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

    $(".reason form button").click(function () {
        $(".reason form input").val(my_day);
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
