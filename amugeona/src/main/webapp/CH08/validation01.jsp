<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
		function checkform(){
			var form = document.loginForm;

			for(var i=0;i<form.id.value.length;i++){
				var ch= form.id.value.charAt(i);
				if(!(ch>='a'&&ch<='z')){
					
					alert("아이디는 영문 소문자만 입력 가능합니다!");
					form.id.select();
					return;
				}
			}
			
			if(isNaN(form.passwd.value)){
				alert("비밀번호는 숫자만 입력 가능합니다!");
				form.passwd.select();
				return;
			}
			
			if(form.id.value==""){
				alert("아이디를 입력해주세요");
				form.id.focus();
				return false;
			}
			if(form.passwd.value==""){
				alert("비밀번호를 입력해주세요");
				form.passwd.focus();
				return false;
			}
			if(form.id.value.length<4||form.id.value.length>12){
				alert("아이디는 4~12자 이내로 입력 가능합니다.");
				form.id.select();
				return;
			}
			if(form.passwd.value.length<4){
				alert("비밀번호는 4자 이상으로 입력 가능합니다.");
				form.passwd.select();
				return;
			}
			
			alert("아이디 : "+document.loginForm.id.value+"\n"+
					"비밀번호 : " + document.loginForm.passwd.value);
			form.submit();
			
		}
</script>
<body>
	<form name="loginForm" action="validation01_process.jsp" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> <input type="button" value="전송" onclick="checkform()">
	</form>
</body>
</html>