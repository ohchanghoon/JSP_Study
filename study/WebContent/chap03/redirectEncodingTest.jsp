<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	String value = "�ڹ�";
	String encodedValue = URLEncoder.encode(value, "utf-8");
	response.sendRedirect("index.jsp?name=" + encodedValue);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>