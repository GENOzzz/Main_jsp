<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%--선언문 태그--%>
	<%! 
		int data = 50; 
	
		int sum(int a,int b){
			return a+b;
		}
		
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<%--스크립틀릿 태그--%>
	<% 
		out.println("01 Value of the variable is :"+data);
		out.println("<br>");
		out.println("02 2+3="+sum(2,3));
		out.println("<br>");
		out.println(makeItLower("Hello World"));
		out.println("<br>");
	%>
	<%
		int a=2;
		int b=3;
		int c=5;
		int sum=a+b;
		out.println("2+3="+sum);
		out.println("<br>");
	%>
	<%
		for(int i =0;i<=10;i++){
			if(i%2==0) out.println(i+"<br>");
		}
	%>
	<p>
		Today's date:
		<%--표현문 태그--%>
		<%=new java.util.Date() %>
	</p>
	
	<%=a+b+c%>
</body>
</html>