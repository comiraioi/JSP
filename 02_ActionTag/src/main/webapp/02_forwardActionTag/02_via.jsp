<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
02_via<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String url = color+".jsp";
%>

<jsp:forward page="<%=url%>"/>

<%-- page="../images/<%=color%>.jpg" --%>