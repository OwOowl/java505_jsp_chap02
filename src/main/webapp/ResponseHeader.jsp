<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
    <title>내장객체 response</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<%
  // SimpleDateFormat : 자바에서 사용하는 날짜 데이터를 사람이 알아보기 쉬운 형태로 변경하는 클래스
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
  long add_date = sdf.parse(request.getParameter("add_date")).getTime();
  int add_int = Integer.parseInt(request.getParameter("add_int"));
  String add_str = request.getParameter("add_str");

  response.addDateHeader("mybirthday", add_date);
  response.addIntHeader("myNumber", add_int);
  response.addIntHeader("myNUmber", 1004);
  response.addHeader("myName", add_str);
  response.addHeader("myName", "아이유");
%>

<h2>응답 헤더 정보 출력하기</h2>
<ul>
<%
  Collection<String> headerNames = response.getHeaderNames();
  for (String hName: headerNames) {
    String hValue = response.getHeader(hName);
%>
<li><%=hName%> : <%=hValue%></li>
<%
  }
%>
</ul>

<h2>myNumber만 출력하기</h2>
<ul>
<%
  // getHeaders의 경우 헤더에 저장된 첫 번째 값만 반환
  Collection<String> myNumber = response.getHeaders("myNumber");
  for(String myNum : myNumber) {
    out.print("<li>myNumber : " + myNum + "</li>");
  }
%>

<%--  addCookie(Cookie cookie) : 쿠키를 추가
      addDateHeader(String name, long date) : 설정한 헤더 이름에 날짜 및 시간을 추가
      addHeader(String name, String value) : 설정한 헤더 이름에 데이터를 추가
      addIntHeader(string name, int value) : 설정한 헤더 이름에 정수 데이터를 추가
      setDateHeader(String name, long date) : 설정한 헤더 이름의 날짜 및 시간을 수정
      setHeader(String name, String value) : 설정한 헤더 이름의 데이터를 수정
      setIntHeader(string name, int value) : 설정한 헤더 이름의 정수 데이터를 수정
      containsHeader(String name) : 설정한 헤더 이름이 존재하는지 확인
      getHeader(string name) : 설정한 헤더 이름의 데이터를 가져옴, 동일한 이름의 헤더가 있을 경우 첫 번째 값만 가져옴
      getHeaders(String name) : 설정한 헤더 이름의 데이터들을 배열의 형태로 가져옴
--%>
</ul>
</body>
</html>
