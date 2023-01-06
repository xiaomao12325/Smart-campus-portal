<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.dao.ManDao" %>
<%@ page import="com.dao.TeaDao" %>
<%@ page import="com.dao.StuDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.domain.AdmissionInfo" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/27
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>专业分数信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/PCenter.css">
    <script src="js/jquery.mini.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .contes form {
            position: absolute;
            top: 100px;
            left: 0px;
            font-size: 20px;
        }
        .aaa{
            font-size: 20px;
        }
        .contes1 input {
            border: 1px solid #666;
            height: 20px;
        }

    </style>
</head>

<body>
<form class="form-inline" action="SearchAdm">
    <div class="form-group">
        <label for="exampleInputName2">专业</label>
        <input type="text" class="form-control" id="exampleInputName2" placeholder="软件工程" name="Profession">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail2">学院</label>
        <input type="text" class="form-control" id="exampleInputEmail2" placeholder="软件工程学院" name="Academy">
    </div>
    <button type="submit" class="btn btn-default">查询</button>
    <%
    String Id=(String)session.getAttribute("Id");
    if("admin".equals(Id)){%>
    <button class="btn btn-default"><a href="#" class="change">添加</a></button>
    <button class="btn btn-default"><a href="#" class="change1">修改</a></button>
    <%}
    %>
</form>

<div class="contes">
    <div>
        <h1>添加</h1>
        <span class="del">x</span>
        <hr>
        <form action="AddAdm" class="aaa">
            <div>专业：<input type="text" name="Profession"></div>
            <div>学院：<input type="text" name="Academy"></div>
            <div>分数线：<input type="text" name="FractionalLine"></div>
            <div>专业信息：<input type="text" name="MajorInfo"></div>
            <button type="submit" class="submit">确认提交</button>
        </form>
    </div>
</div>
<div class="contes1">
    <div>
        <h1>修改</h1>
        <span class="del">x</span>
        <hr>
        <form action="OptAdm" class="aaa">
            <div>序号：<input type="text" name="Nk"></div>
            <div>专业：<input type="text" name="Profession"></div>
            <div>学院：<input type="text" name="Academy"></div>
            <div>分数线：<input type="text" name="FractionalLine"></div>
            <div>专业信息：<input type="text" name="MajorInfo"></div>
            <button type="submit" class="submit">确认提交</button>
        </form>
    </div>
</div>
<table class="table table-bordered">
    <tr>
        <td>序号</td>
        <td>分数线</td>
        <td>专业信息</td>
    </tr>
    <%
        String ac=(String)request.getAttribute("ac");
        String pr=(String)request.getAttribute("pr");
        ManDao md=new ManDao();
        List<AdmissionInfo> list=md.searchAdmission(ac,pr);
        for(int i=0;i<list.size();i++){%>
            <tr>
                <td><%=list.get(i).getNk()%></td>
                <td><%=list.get(i).getFractionalLine()%></td>
                <td><%=list.get(i).getMajorInfo()%></td>
            </tr>
        <%}
        %>
</table>
<script>
    $(".change ").click(function () {
        $(".contes").show();
    })
    $(".contes span").click(function () {
        $(".contes").hide();
    })
    $(".change1").click(function () {
        $(".contes1").show();
    })
    $(".contes1 span").click(function () {
        $(".contes1").hide();
    })
</script>
</body>

</html>
