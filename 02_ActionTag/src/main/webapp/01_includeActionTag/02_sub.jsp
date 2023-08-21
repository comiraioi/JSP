<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

02_sub.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String age = request.getParameter("age");
%>

이름: <%= name %><br>
비밀번호: <%= pw %><br>
나이: <%= age %><br>