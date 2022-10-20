<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
<form action="memberProcess.jsp" method="post">
  아이디 : <input type="text" name="id" value=""><br>
  비밀번호 : <input type="password" name="password" value=""><br>
  이름 : <input type="text" name="userName" value=""><br>
  전화번호 : <input type="text" name="tel" value=""><br>
  이메일 주소 :  <input type="email" name="email" value=""><br>
  집 주소 : <input type="text" name="addr" value=""><br>
  관심분야 :
  <input type="checkbox" name="favo" value="sports" checked>스포츠
  <input type="checkbox" name="favo" value="ent">연예
  <input type="checkbox" name="favo" value="pol">정치
  <input type="checkbox" name="favo" value="eco">경제
  <input type="checkbox" name="favo" value="game">게임
  <br>
  성별 :
  <input type="radio" name="gender" value="man" checked>남자
  <input type="radio" name="gender" value="woman">여자
  <br>
  <input type="submit" value="회원가입">
</form>
</body>
</html>
