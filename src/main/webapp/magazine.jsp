<%@ page import="com.dao.ManDao" %>
<%@ page import="com.domain.Magazine" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/27
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学术周刊</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/base.css">
    <script src="js/jquery.mini.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
<form class="form-inline" action="SearchMag">
        <div class="form-group">
            <label for="exampleInputName2">文章名</label>
            <input type="text" class="form-control" id="exampleInputName2" placeholder="文章名" name="ArticleName">
        </div>
        <button type="submit" class="btn btn-default">查询</button>
</form>
    <table class="table table-bordered">
        <tr>
            <td>文章名</td>
            <td>文章作者</td>
            <td>周刊名称</td>
            <td>周刊编号</td>
            <td>类型</td>
            <td>发布日期</td>
            <td>出版社</td>
            <td>级别</td>
            <td>链接</td>
        </tr>
        <%
            String Id=(String)session.getAttribute("Id");
            String an=(String)request.getAttribute("an");
            ManDao md=new ManDao();
            List<Magazine> list=md.searchMagazine(an);
            for(int i=0;i<list.size();i++){%>
        <tr>
            <td><%=list.get(i).getArticleName()%></td>
            <td><%=list.get(i).getAuthor()%></td>
            <td><%=list.get(i).getMName()%></td>
            <td><%=list.get(i).getMId()%></td>
            <td><%=list.get(i).getMType()%></td>
            <td><%=list.get(i).getPublishDate()%></td>
            <td><%=list.get(i).getPublisher()%></td>
            <td><%=list.get(i).getLevel()%></td>
            <td><a href="<%=list.get(i).getLink()%>">链接</a></td>
            <%if("admin".equals(Id)){%>
            <td><a href="">添加</a></td>
            <td><a href="">修改</a></td>
            <%}
            %>
        </tr>
        <%}
        %>
    </table>
</body>

</html>