<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userid= request.getParameter("id");
		String password=request.getParameter("passwd");
		
		//if(userid.equals("관리자")&&password.equals("1234")){
			//response.sendRedirect("response01_success.jsp");
		//}else{
			//response.sendRedirect("response01_failed.jsp");
		//}
	%>
	<p> 아이디 : <%=userid %> <% out.println(userid); %>
	<p> 비밀번호 : <%=password %> <% out.println(password); %> <br>
	클라이언트 IP : <%=request.getRemoteAddr() %><br>
	요청정보 길이 : <%=request.getContentLength() %><br>
	요청정보 인코딩 : <%=request.getCharacterEncoding() %><br>
	요청 정보 콘텐츠 유형 : <%=request.getContentType() %><br>
	요청 정보 프로토콜 : <%=request.getProtocol() %><br>
	클라이언트 전송 방식 : <%=request.getMethod() %><br>
	요청 URI : <%=request.getRequestURI() %><br>
	콘텍스트 경로 : <%=request.getContextPath() %><br>
	서버이름 : <%=request.getServerName() %><br>
	서버 포트 : <%=request.getServerPort() %><br>
	쿼리문 : <%=request.getQueryString() %><br>
	
</body>
</html>