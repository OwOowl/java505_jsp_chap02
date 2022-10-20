<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 정보</title>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String id = request.getParameter("id");
  String password = request.getParameter("password");
  String tel = request.getParameter("tel");
  String userName = request.getParameter("userName");
  String email = request.getParameter("email");
  String addr = request.getParameter("addr");
  String[] favo = request.getParameterValues("favo");
  String gender = request.getParameter("gender");

  String favoStr = "";

  for(int i =0; i < favo.length; i++) {
    favoStr += favo[i] + " ";
  }
%>
<h1>가입된 유저 정보</h1>
<ul>
  <li>아이디 : <%=id%></li>
  <li>비밀번호 : <%=password%></li>
  <li>이름 : <%=userName%></li>
  <li>전화번호 : <%=tel%></li>
  <li>이메일 주소 : <%=email%></li>
  <li>집 주소 : <%=addr%></li>
  <li>관심 분야 : <%=favoStr%></li>
  <li>성별 : <%=gender%></li>
</ul>
</body>
</html>
