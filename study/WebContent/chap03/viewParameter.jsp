<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
%>

<html>
<head>
<meta charset="EUC-KR">
<title>요청 파라미터 출력</title>
</head>
<body>
	<b>request.getParameter() 메서드 사용</b><br>
name파라미터 = <%= request.getParameter("name") %><br>
address파라미터 = <%= request.getParameter("address") %>
<p><p><p><p><p><p>
<b>request.getParameterValues() 사용</b><br>
<%
	String[] values = request.getParameterValues("pet");
	if (values != null){
	for(int i=0; i<values.length; i++){
%>
	<%= values[i] %>
<%
	}
	}
%>
<p>
<b>request.getParameterNames() 메서드 사용</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<% 
	}
%>		
<p>
<b>request.getParameterMap() 메서드 사용</b><br>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null){
%>
name = <%= nameParam[0] %>
<%
	}
%>

</body>
</html>