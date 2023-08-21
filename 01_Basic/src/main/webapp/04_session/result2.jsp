<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

result2.jsp <br><br>
<%
	//result1의 정보가 담김
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String sports = request.getParameter("sports");
	String game = request.getParameter("game");
	
	Object obj = session.getAttribute("spw");
%>

아이디: <%= id %><br>
비밀번호: <%= pw %><br>
세션 아이디: <%=session.getAttribute("sid") %><br>
세션 비밀번호: <%=obj %><br>
스포츠: <%= sports %><br>
게임: <%= game %><br>

<%-- 출력 후 세션 무효화 
<% session.invalidate(); %> --%>