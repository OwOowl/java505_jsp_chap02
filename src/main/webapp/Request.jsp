<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>내장 객체 - request</title>
</head>
<body>
<%-- 폼태그 안에 존재하는 input 태그가 가지고 있는 데이터만 전송이 됨. --%>
<input type="text" id="userId" name="userId" placeholder="이름을 입력해주세요"><br>
<form action="process.jsp" method="post">
    <label for="user-name">이름 : </label>
    <input type="text" id="user-name" name="userName" placeholder="이름을 입력해주세요"><br>
    <button type="submit">전송</button>
</form>
</body>
</html>
