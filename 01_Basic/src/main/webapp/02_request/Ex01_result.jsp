<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
Ex01_form.jsp에서 요청 => Ex01_result.jsp<br>

<%
	//HttpServletRequest
	//HttpServletRequest request = new HttpServletRequest();
	String method = request.getMethod();
	String uri = request.getRequestURI();
	StringBuffer url = request.getRequestURL();
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>

method : <%=method %> <br>
uri : <%=uri %> <br>
url : <%=url %> <br>
name : <%=name %> <br>
age : <%=age %> <br>

<!-- 
request 객체 : 요청한 쪽의 정보를 갖고 있다.
get : Ex01_result.jsp?name=kim&age=33 
post : Ex01_result.jsp
 -->
<!-- 
class Person{
	String name;
	public void setName(String name){
		this.name = name;
	}
}

Person p = new Person();
p.name = "수지";
p.setName("아이유");

Date d = new Date();
d.toString()
 -->




