<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
	MultipartRequest multi= new MultipartRequest(request,"c:/upload",5*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	
	Enumeration params = multi.getParameterNames();

	while(params.hasMoreElements()){
		String name=(String)params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = "+value+"<br>");
	}
	out. println("=================================<br>");
	
	Enumeration files=multi.getFileNames();
	
	while(files.hasMoreElements()){
		String name=(String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
	}
%>


<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>