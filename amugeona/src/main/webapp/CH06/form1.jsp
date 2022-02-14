<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form2_process.jsp" name="memeber" method="post">
		<p>아이디 : <input type="text" name="id"><input type="button" value="아이디 중복 검사">
		<p>이름 : <input type="text" name="name">
		<p>연락처 : 
		<select name="phone1">
		<option value="010">010</option>
		</select>
		-<input type="text" maxlength="4" size="4" name="phone2">
		-<input type="text" maxlength="4" size="4" name="phone3">
		<p>지역 : <select name="city" size="3">
			<option value="서울시">서울특별시</option>
			<option value="경기도">경기도</option>
			<option value="인천시">인천광역시</option>
			<option value="충청도">충청도</option>
			<option value="전라도">전라도</option>
			<option value="경상도">경상도</option>
		</select>
		<p>성별 : <input type="radio" name="sex" value="남성" checked>남성
		<input type="radio" name="sex" value="여성">여성
		<p>취미 : 독서<input type="checkbox" name="hobby" value="독서" checked>
		운동<input type="checkbox" name="hobby" value="운동" checked>
		영화<input type="checkbox" name="hobby" value="영화" checked>
		<p><textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea>
		<p><input type="submit" value="가입하기">
		<input type="reset" value="다시쓰기">
	</form>
</body>
</html>