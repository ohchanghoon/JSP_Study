<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키목록</title>
</head>
<body>
쿠키목록 <br>

<%
	Cookie[] cookies = request.getCookies();
	if ( cookies != null && cookies.length > 0 ) {
		for ( int i = 0; i < cookies.length; i++) {
%>
	<%= cookies[i].getName() %> =
	<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %> <br>	<!-- 인코딩해서 값을 저장했으므로, 디코딩하여 값을 읽는다. -->
<%
		}
	} else {
%>
쿠키가 존재하지 않습니다.
<%
	}
%>
</body>
</html>