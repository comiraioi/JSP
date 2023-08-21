<%@ page import="myPkg.Ex04_FruitsBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex04_result.jsp<br>

<%
request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String[] fruit = request.getParameterValues("fruit");
	
	out.print("이름: "+name+"<br>");
	out.print("비밀번호: "+password+"<br>");
	out.print("좋아하는 과일: ");
	for(int i=0; i<fruit.length; i++){
		out.print(fruit[i]+" ");
	}
%>
<hr>


<jsp:useBean id="fb" class="myPkg.Ex04_FruitsBean"/>
<jsp:setProperty property="name" name="fb" param="name"/>
<jsp:setProperty property="password" name="fb" param="password"/>
<jsp:setProperty property="fruit" name="fb" param="fruit"/>

이름: <jsp:getProperty property="name" name="fb"/><br>
비밀번호: <jsp:getProperty property="password" name="fb"/><br>
fruit 배열 주소: <jsp:getProperty property="fruit" name="fb"/><br>
좋아하는 과일:
<%
	String[] fruit2 = fb.getFruit();
	for(int i=0; i<fruit2.length; i++){
%>
		<%=fruit2[i]%>
<%
	}
%>


