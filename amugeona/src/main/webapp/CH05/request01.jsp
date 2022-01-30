<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="text" name="passwd">
	<p> <input type="submit" value="전송"/>
	<br>
	<%
		Enumeration en=request.getHeaderNames();
		while(en.hasMoreElements()){
			String headerName=(String)en.nextElement();
			String headerValue=request.getHeader(headerName);
	%>
	<%=headerName %>:<%=headerValue %><br>
	<%
		}
	%>
	<%
		out.println("오늘의 날짜 및 시각"+"<br>");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>