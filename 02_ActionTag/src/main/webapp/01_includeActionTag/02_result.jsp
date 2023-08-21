<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

02_result.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
%>

이름: <%=name%><br>
비밀번호: <%=pw%>

<!-- param이 없으면 태그 한개로 끝내기 
<jsp:include page="02_sub.jsp">
	<jsp:param value="<%=name%>" name="name"/>
	<jsp:param value="<%=pw%>" name="pw"/>
</jsp:include>	-->

<jsp: include page="02_sub.jsp">
	<jsp:param value="30" name="age"/>
	<jsp:param value="<%=name+\"회원님\"%>" name="name"/>
</jsp:>
	
<!-- include 액션태그에서는 request 객체를 공유함 -->