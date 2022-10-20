<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="page_isErrorPage_error.jsp"%>
<!DOCTYPE html>
<%@ page import="java.util.Date" %>
    <%!
        String str1 = "JSP";
        String str2 = "안녕하세요..";
    %>
<html>
<head>
    <meta charset ="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>처음 만들어 보는 <%=str1%></h2> 스크립트요소(표현식)
<p>
    <%
        out.println(str2 + str1 + "입니다. 열공합시다.");
    %>
</p>
<p>Today is <%=new Date()%></p>
<%
    String str = null;
    out.println(str.toString()); // str 의 공백값을 문자열로 변경하여 오류발생
%>
</body>
</html>
