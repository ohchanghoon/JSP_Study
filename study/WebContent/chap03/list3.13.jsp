<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>클라이언트 및 서버정보</title>
</head>
<body>

<b>클라이언트IP = <%= request.getRemoteAddr() %></b>
<br><br>
요청정보길이 = <%= request.getContentLength() %>
<br><br>
요청정보 인코딩 = <%= request.getCharacterEncoding() %>
<br><br>
요청정보 컨텐츠타입 = <%= request.getContentType() %>
<br><br>
요청정보 프로토콜 = <%= request.getProtocol() %>
<br><br>	
요청정보 전송방식 = <%= request.getMethod() %>
<br><br>
요청 URI = <%= request.getRequestURI() %>
<br><br>
컨텍스트 경로 = <%= request.getContextPath() %>
<br><br>
서버이름 = <%= request.getServerName() %>
<br><br>
서버포트 = <%= request.getServerPort() %>

</body>
</html>