<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="study.MemberInfo" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말</title>
</head>
<body>

<%= member.getName() %> (<%= member.getId() %>) 회원님
안녕하세욘

</body>
</html>