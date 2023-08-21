<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex05_form.jsp<br><br>

<form action="Ex05_result.jsp" method="post">
	이름: <input type="text" name="name"><br>
	비번: <input type="text" name="password"><br><br>
	
	<%
	String[] subject = {"국어","영어","수학","과학","영어"};
	for(int i=0; i<subject.length; i++){
	%>
		<%=subject[i]%>: <input type="text" name="score"><br>
	<%
	}
	%>
	<br>
	
	좋아하는 걸그룹<br>
	<select name="group" multiple size="3">
		<option value="소녀시대">소녀시대</option>
		<option value="에이핑크">에이핑크</option>
		<option value="레드벨벳">레드벨벳</option>
		<option value="트와이스">트와이스</option>
		<option value="블랙핑크">블랙핑크</option>
		<option value="아이브">아이브</option>
	</select>
	<br><br>
	
	<input type="submit" value="전송">
	<input type="reset" value="취소">
</form>