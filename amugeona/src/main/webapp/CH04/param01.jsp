<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Param01</title>
</head>
<body>
	<h2>param 액션 태그</h2>
	<jsp:forward page="param01_date.jsp">
		<jsp:param name="id" value="admin"/>
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자")%>'/>
	</jsp:forward>
	<p>Java Server Page</p>
</body>
</html>