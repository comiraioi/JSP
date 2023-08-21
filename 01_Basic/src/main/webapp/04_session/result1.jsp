<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

result1.jsp <br><br>
<%
	//form의 정보가 담김
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//넘기고 싶은 값 세션 설정
	session.setAttribute("sid",id);	//속성명, 값 (sid=id)
	session.setAttribute("spw",pw);
	
	//세션 유지 시간 설정
	session.setMaxInactiveInterval(10);		//10초
%>

<form method="post" action="result2.jsp">
	<!--  form에서 넘어온 아이디, 패스워드 보임
	아이디: <input type="text" name="id" value="<%= id %>"><br>
	비밀번호: <input type="text" name="pw" value="<%= pw %>"><br> -->
	
	<!-- hidden: form에서 넘어온 아이디, 패스워드 숨기기 
	아이디: <input type="hidden" name="<%= id %>"><br>
	비밀번호: <input type="hidden" name="<%= pw %>"><br> -->
	
	스포츠<br>
	<input type="radio" name="sports" value="농구">농구
	<input type="radio" name="sports" value="야구">야구
	<input type="radio" name="sports" value="복싱">복싱
	<input type="radio" name="sports" value="스키">스키
	<br>
	게임<br>
	<select name="game">
		<option value="LoL">LoL</option>
		<option value="오버워치">오버워치</option>
		<option value="젤다의전설">젤다의전설</option>
		<option value="슈퍼마리오">슈퍼마리오</option>
	</select>
	<br><br>
	<input type="submit" value="로그인">
</form>