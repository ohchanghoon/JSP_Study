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
<title> �α��ο� ����</title>
</head>
<body>
�߸��� ���̵��Դϴ�.
</body>
</html>
<%
}
%>