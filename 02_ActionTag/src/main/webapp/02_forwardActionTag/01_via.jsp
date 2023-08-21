<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
01_via<br>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	System.out.println("01_via.jsp: id1="+id+"/pw1="+password);
%>

아이디1: <%=id%><br>
비밀번호1: <%=password%>

<jsp:forward page="01_result.jsp">
	<jsp:param name="age" value="30"/>
	<jsp:param name="id" value="<%=id+\"회원님\"%>"/>
</jsp:forward>


<!-- forward 액션태그
	- 출력되지 않는 거쳐가는 페이지 만듦 (=response.sendRedirect)
	- request 객체를 공유함, 결과화면과 주소가 같지 않음
	(c.f response.sendRedirect: request 객체 공유X, 결과화면과 주소가 같음)
-->