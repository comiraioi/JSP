<!-- 자바 객체 생성을 위해 import -->
<%@ page import="myPkg.SimpleBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
simpleBeanResult.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	String message = request.getParameter("message");
%>

message = <%=message%> <br>

<!-- 자바 객체 생성 -->
<%
	SimpleBean pb = new myPkg.SimpleBean();
	pb.setMsg(message);
	System.out.println(pb.getMsg());
%>

<!-- 자바 코드
myPkg.SimpleBean sb2 = new myPkg.SimpleBean();
sb2.setMsg("form에서 입력한 message");
sb2.getMsg();
-->
<!-- 액션태그로 JSP 객체 생성 -->
<!-- id=참조변수 class="객체" -->
<jsp:useBean id="sb2" class="myPkg.SimpleBean"/>
<!-- property=메서드명 name="참조변수" param="form에서 입력한 값" or value="값" -->
<jsp:setProperty property="msg" name="sb2" param="message"/>
메세지: <jsp:getProperty property="msg" name="sb2"/>

