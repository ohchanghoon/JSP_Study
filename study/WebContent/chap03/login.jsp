<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("memberId");
	if (id != null && id.equals("madvirus")){
		response.sendRedirect("index.jsp");
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 로그인에 실패</title>
</head>
<body>
잘못된 아이디입니다.
</body>
</html>
<%
}
%>