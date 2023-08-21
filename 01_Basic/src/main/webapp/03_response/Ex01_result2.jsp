<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

Ex01_result2.jsp<br>

<%
	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");
	//콘솔창에 출력
	System.out.println("Ex01_result2.jsp msg: "+msg);
%>

<!-- 브라우저에 출력 -->
msg: <%=msg%>