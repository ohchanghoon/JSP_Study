<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie[] cookies = request.getCookies();
	if ( cookies != null && cookies.length > 0 ) {
		for ( int i = 0; i < cookies.length; i++ ) {
			if ( cookies[i].getName().equals("name")) {	// 쿠키 존재여부 확인
				Cookie cookie = new Cookie("name",	// 쿠키가 존재할 경우, 이름이 name인 쿠키객체를 새롭게 생성해서 응답 헤더에 추가
					URLEncoder.encode("JSP프로그래밍", "utf-8"));
				response.addCookie(cookie);
			}
		}
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 값 변경</title>
</head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>