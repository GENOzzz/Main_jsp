<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id=request.getParameter("id");
		String passwd=request.getParameter("passwd");
		String name=request.getParameter("name");
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String phone3=request.getParameter("phone3");
		String sex=request.getParameter("sex");
		String [] hobby=request.getParameterValues("hobby");
		String comment=request.getParameter("comment");
	%>
	<p> ���̵�: <%=id %>
	<p>	��й�ȣ: <%=passwd %>
	<p> �̸�: <%=name %>
	<p> ����ó: <%=phone1 %>-<%=phone2 %>-<%=phone3 %>
	<p> ����: <%=sex %>
	<p> ���:<%
		if(hobby!=null){
			for(int i =0;i<hobby.length;i++){
				out.println(" "+hobby[i]);
			}
		}else{
			out.println("����");
		}
	%>
	<p> ���� �λ� : <%= comment %>
</body>
</html>