<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŭ���̾�Ʈ �� ��������</title>
</head>
<body>

<b>Ŭ���̾�ƮIP = <%= request.getRemoteAddr() %></b>
<br><br>
��û�������� = <%= request.getContentLength() %>
<br><br>
��û���� ���ڵ� = <%= request.getCharacterEncoding() %>
<br><br>
��û���� ������Ÿ�� = <%= request.getContentType() %>
<br><br>
��û���� �������� = <%= request.getProtocol() %>
<br><br>	
��û���� ���۹�� = <%= request.getMethod() %>
<br><br>
��û URI = <%= request.getRequestURI() %>
<br><br>
���ؽ�Ʈ ��� = <%= request.getContextPath() %>
<br><br>
�����̸� = <%= request.getServerName() %>
<br><br>
������Ʈ = <%= request.getServerPort() %>

</body>
</html>