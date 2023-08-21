<%@ page import="myPkg.PersonBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
personResult.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
%>

이름1: <%=name%> <br>
나이1: <%=age%> <br>
주소1: <%=address%> <br>
번호1: <%=tel%> <br>

<!-- 자바 객체 생성 -->
<%
	PersonBean pb = new myPkg.PersonBean();

	pb.setName(name);
	pb.setAge(age);
	pb.setAddress(address);
	pb.setTel(tel);
	
	System.out.println(pb.getName());
	System.out.println(pb.getAge());
	System.out.println(pb.getAddress());
	System.out.println(pb.getTel());
%>
<br>
<!-- 액션태그로 JSP 객체 생성 -->
<jsp:useBean id="pb2" class="myPkg.PersonBean"/>
<jsp:setProperty property="name" name="pb2" param="name"/>
<jsp:setProperty property="age" name="pb2" param="age"/>
<jsp:setProperty property="address" name="pb2" param="address"/>
<jsp:setProperty property="tel" name="pb2" param="tel"/>
이름2: <jsp:getProperty property="name" name="pb2"/><br>
나이2: <jsp:getProperty property="age" name="pb2"/><br>
주소2: <jsp:getProperty property="address" name="pb2"/><br>
번호2: <jsp:getProperty property="tel" name="pb2"/>

<!-- 자바 코드
myPkg.PersonBean pb2 = new myPkg.PersonBean();
pb2.setName("form에서 입력");
pb2.setAge("form에서 입력");
pb2.setAddress("form에서 입력");
pb2.setTel("form에서 입력");
pb2.getName();
pb2.getAge();
pb2.getAddress();
pb2.getTel();
-->