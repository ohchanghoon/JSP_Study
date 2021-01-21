<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie[] cookies = request.getCookies();
	if ( cookies != null && cookies.length > 0 ) {
		for ( int i = 0; i < cookies.length; i++ ) {
			if ( cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name", "");
				cookie.setMaxAge(0);	// 유효시간 0으로 지정 후 응답 헤더에 추가하면 웹 브라우저가 관련 쿠키를 삭제하게된다
				response.addCookie(cookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
name 쿠키를 삭제합니다
</body>
</html>