<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session04</title>
</head>
<body>
	<h4>세션 삭제 전</h4>
	<%
		String user_id=(String)session.getAttribute("userID");
		String user_pw=(String)session.getAttribute("userPW");
		out.println("설정된 세션 userID:"+user_id+"<br>");
		out.println("설정된 세션 userPW:"+user_pw);
		
		session.removeAttribute("userID");
	%>
	<h4>세션 삭제 후</h4>
	<%
		user_id=(String)session.getAttribute("userID");
		user_pw=(String)session.getAttribute("userPW");
		out.println("설정된 세션 userID:"+user_id+"<br>");
		out.println("설정된 세션 userPW:"+user_pw);
	%>
	
</body>
</html>