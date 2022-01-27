<%@ page contentType="text/html; charset=utf-8"%>

<%!
	int pageCount = 0;

	void addCount(){
		pageCount++;
	}
%>

<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<H4>헤더 페이지 영역입니다</H4>
	<%
		addCount();
	%>
	<p>이 사이트 방문은 <%=pageCount %>번째입니다</p>
</body>
</html>