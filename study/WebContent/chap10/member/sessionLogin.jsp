<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if ( id.equals(password)) {
		session.setAttribute("MEMBERID", id);	// session 기본객체의 MEMBERID 속성을 사용해서 로그인 상태를 저장한다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>로그인에 성공했습니다.
</body>
</html>
<%
	} else { 	// 로그인 실패시
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>
