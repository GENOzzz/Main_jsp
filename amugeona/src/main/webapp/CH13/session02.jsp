<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session02</title>
</head>
<body>
	<%
		String user_id=(String)session.getAttribute("userID");
		String user_pw=(String)session.getAttribute("userPW");
		out.println("설정된 세션의 속성값 [1]:"+user_id+"<br>");
		out.println("설정된 세션의 속성값 [2]:"+user_pw);
	%>
</body>
</html>