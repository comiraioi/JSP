<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
blue.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	
	//request.getContextPath(): 현재 프로젝트의 경로
	String conPath = request.getContextPath();
	System.out.println("conPath: "+conPath);
%>

<br>
<%=name%>님이 선택한 색은 <%=color%>입니다.<br>
<img src="<%=conPath%>/images/<%=color%>.jpg">