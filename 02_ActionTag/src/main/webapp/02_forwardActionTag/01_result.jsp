<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
01_result<br>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String age = request.getParameter("age");
	System.out.println("01_result.jsp: id2="+id+"/pw2="+password);
%>

아이디2: <%=id%><br>
비밀번호2: <%=password%><br>
나이: <%=age%>