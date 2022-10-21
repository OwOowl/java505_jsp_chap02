<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 9:47
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
<h2>1. 로그인 폼</h2>
<%
  String loginErr = request.getParameter("loginErr");
  if (loginErr != null) {
    out.print("<script>alert('로그인 실패');</script>");
  }
%>

<div class="container">
  <div class="row">
    <div class="col-sm-6 mx-auto">
      <div class="border-2 rounded">
        <form action="ResponseLogin.jsp" method="post">
          <div class="d-grid gap-3">
            <div class="form-floating">아이디 : </div>
            <input type="text" class="form-control" id="user-id" name="userId" placeholder="아이디를 입력하세요">
          </div>
          <div>
            <div class="form-floating">비밀번호 : </div>
            <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="비밀번호를 입력하세요">
          </div>
          <div class="d-grid gap-2">
            <button class="btn btn-primary" type="submit">로그인</button>
            <button class="btn btn-secondary" type="reset">로그인 취소</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
