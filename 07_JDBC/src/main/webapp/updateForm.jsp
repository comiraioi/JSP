<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
updateForm.jsp<br>
<h2>register 테이블 레코드 수정</h2>
<form action="updateProc.jsp" method="get">
수정할 계정 정보<br>
아이디: <input type="text" name="id"><br>
패스워드: <input type="password" name="passwd"><br><br>
수정할 이름: <input type="text" name="name"><br>
수정할 성별:
	<input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여<br>
수정할 email:
	<input type="text" name="uname"> @
	<select name="dname">
	<option value="google.com">google.com</option>
	<option value="naver.com">naver.com</option>
	<option value="daum.net">daum.net</option>
	<option value="yahoo.com">yahoo.com</option>
	</select>
<br><br>
<input type="submit" value="보내기">
</form>