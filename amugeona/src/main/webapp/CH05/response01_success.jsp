<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	로그인을 성공했습니다 !!
	<% 
		request.setCharacterEncoding("utf-8");
		String userid=request.getParameter("id");
		String password=request.getParameter("passwd");
	%>
	<p>아이디 : <% out.println(userid); %>
	<p>비밀번호 : <% out.println(password); %>
</body>
</html>