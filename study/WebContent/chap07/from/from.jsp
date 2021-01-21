<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	<jsp:forward> 액션태그를 실행하면
	생성했던 출력 결과는 모두 제거된다.
 -->

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>from.jsp 의 제목</title>
</head>
<body>


<jsp:forward page="/chap07/to/to.jsp"/>
이 페이지는 from.jsp가 생성한 것입니다.

</body>
</html>