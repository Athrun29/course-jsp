<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书签列表</title>
</head>
<body>
    <table style="text-align: left; width: 100%;" border="0">
        <div>
            <form method="get" action="./list">
                名称：<input type="text" name="query_name">
                <input type="submit" value="查询">
            </form>
            <form method="get" action="./del">
                编号：<input type="text" name="del_id">
                <input type="submit" value="删除">
            </form>
        </div>
        <tbody>
        <tr>
            <td style="background-color: rgb(51, 255, 255);">编号</td>
            <td style="background-color: rgb(51, 255, 255);">名称</td>
            <td style="background-color: rgb(51, 255, 255);">作者</td>
            <td style="background-color: rgb(51, 255, 255);">分类</td>
        </tr>
        <c:forEach var="bookmark" items="${requestScope.bookmarks}">
            <tr>
                <td>${bookmark.id}</td>
                <td>${bookmark.name}</td>
                <td>${bookmark.author}</td>
                <td>${bookmark.category}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table><br>
    <a href="./add.html">添加书签</a>&nbsp;&nbsp;&nbsp;
    <a href="./logout">退出登录</a><br>
</body>
</html>
