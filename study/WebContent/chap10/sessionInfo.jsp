<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session = "true" %>	<!-- 세션을 사용한다고 지정한다. 기본값이 true이므로 설정을 안해줘도 괜찮음. -->
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter =
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>
<body>

세션ID : <%= session.getId() %> <br>	<!-- 세션id 출력 -->
<%
	time.setTime(session.getCreationTime()); // 세션의 생성 시간을 Date 객체인 time에 저장한다.
%>

세션 생성시간 : <%= formatter.format(time) %> <br> <!-- 세션의 생성시간을 출력 -->
<%
	time.setTime(session.getLastAccessedTime());
%>

최근 접근시간 : <%= formatter.format(time) %>	<!-- 세션의 마지막 접근 시간을 출력 -->

</body>
</html>