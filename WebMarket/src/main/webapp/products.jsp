<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<Context docBase="c:\upload" path="imgpath/" reloadable="true" ></Context>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet"
	href="./css/bootstrap.min.css">
<title>상품 목록</title>
<style>
.pImg {
	width : 270;
	height : 200;
	backgroun-size:cover;
}
.search{
	width : 20%;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%	
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts= dao.getAllProducts();
	%>
	<div id = "test" class="container">
		<div class="row" align="center">
			<%
				for(int i=0;i<listOfProducts.size();i++){
					Product product = listOfProducts.get(i);
					if(true){}
			%>
			<div class="col-md-4">
				<h3><%= product.getPname() %></h3>
				<img class="pImg" src="/imgpath/<%=product.getFilename()%>"/>
				<p><%= product.getDescription() %></p>
				<p><%= product.getUnitPrice() %>원 </p>
				<p>
					<a href="./product.jsp?id=<%=product.getProductId() %>" 
					class="btn btn-secondary" role="button">상세정보&raquo>;</a>
				</p>
			</div>
			<% } %>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>