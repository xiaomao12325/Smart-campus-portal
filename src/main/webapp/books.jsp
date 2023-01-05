<%@ page import="com.domain.Book" %>
<%@ page import="com.dao.ManDao" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 白衣渡江丶吕蒙
  Date: 2021/8/27
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>电子图书</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/base.css">
    <script src="js/jquery.mini.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
<form class="form-inline" action="SearchBook">
    <div class="form-group">
        <label for="exampleInputName2">图书名称</label>
        <input type="text" class="form-control" id="exampleInputName2" placeholder="图书名称" name="BookName">
    </div>
    <button type="submit" class="btn btn-default">查询</button>
</form>
<table class="table table-bordered">
    <tr>
        <td>图书编号</td>
        <td>图书名称</td>
        <td>图书作者</td>
        <td>图书类型</td>
        <td>图书链接</td>
        <td>出版社</td>
        <td>出版时间</td>
    </tr>
    <%
        String Id=(String)session.getAttribute("Id");
        String bn=(String)request.getAttribute("bn");
        ManDao md=new ManDao();
        List<Book> list=md.searchBook(bn);
        for(int i=0;i<list.size();i++){%>
    <tr>
        <td><%=list.get(i).getBookId()%></td>
        <td><%=list.get(i).getBookName()%></td>
        <td><%=list.get(i).getAuthor()%></td>
        <td><%=list.get(i).getBookType()%></td>
        <td><a href="<%=list.get(i).getBookLink()%>">链接</a></td>
        <td><%=list.get(i).getPublisher()%></td>
        <td><%=list.get(i).getPublishTime()%></td>
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