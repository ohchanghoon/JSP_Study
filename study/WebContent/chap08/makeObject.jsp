<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id="member" class="study.MemberInfo" scope="request"/>

<%
	member.setId("madvirus");
	member.setName("오창훈");
%>

<jsp:forward page="/chap08/useObject.jsp"/>