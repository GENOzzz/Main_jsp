<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	로그인을 실패했습니다.
	<a href="./request01.jsp">로그인 가기</a>
	<br>
	이 페이지는 5초마다 새로고침 됩니다.
	<%
		response.setIntHeader("Refresh",5);
	%>
	<p> <%=(new java.util.Date()) %>
</body>
</html>