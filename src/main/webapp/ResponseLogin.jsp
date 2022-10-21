<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>내장객체 - response</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</head>
<body>
<%
    String id = request.getParameter("userId");
    String pw = request.getParameter("userPw");

    if (id.equals("admin") && pw.equals("1234")) {
//        sendRedirect(url) 사용자 요청 시 다른 페이지로 강제 이동
        response.sendRedirect("ResponseWelcome.jsp");
    }
    else {
//        아이디 비밀번호가 일치하지 않을 때 get 방식으로 loginErr 속성값을 1로 변환.
        response.sendRedirect("ResponseMain.jsp?loginErr=1");
    }
%>
</body>
</html>
