<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
deleteForm.jsp<br>
<h2>register 테이블 레코드 삭제</h2>
<form action="deleteProc.jsp" method="get">
삭제 계정 정보<br>
아이디: <input type="text" name="id"><br>
패스워드: <input type="password" name="passwd"><br><br>
<input type="submit" value="보내기">
</form>