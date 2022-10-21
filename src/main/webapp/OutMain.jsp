<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>내장객체 - out</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
//  html 태그 추가하기
  out.print("출력되지 않는 텍스트");
//  버퍼에 저장된 내용 삭제
  out.clearBuffer();

//  html 태그 추가하기
  out.print("<h2>out 내장 객체</h2>");

  out.print("출력 버퍼 크기 : " + out.getBufferSize() + "<br>");
  out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>");

  out.flush();
  out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");

  out.print(1);
  out.print(false);
  out.print('가');

//    print(String str) : 설정된 값을 웹브라우저에 출력
//    println(String str) : 설정된 값을 웹브라우저에 출력, 줄바꿈 기능이 동작하지는 않음
//    newLine() : 중바꿈을 출력
//    getBufferSize() : 현재 출력 버퍼 사이즈를 가져옴
//    getRemaining() : 현재 남아있는 버퍼 사이즈를 가져옴
//    clear() : 현재 출력버퍼에 저장되어 있는 내용을 웹브라우저에 출력하지 않고 비움, 버퍼가 이미 flush 되었으면 IOException 발생
//    clearBuffer() : 현재 출력버퍼에 저장되어 있는 내용을 웹브라우저에 출력하지 않고 비움, 버퍼가 이미 flush 되었으면 IOException 발생하지 않음
//    flush() : 출력 버퍼에 저장된 내용을 즉시 웹브라우저로 출력
//    isAutoFlush() : 출력 버퍼가 채워졌을 경우의 동작을 결정
%>
</body>
</html>
