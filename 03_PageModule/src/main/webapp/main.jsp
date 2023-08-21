<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
시작하는 페이지(main.jsp)<br>

<jsp:forward page="template.jsp">
	<jsp:param value="content.jsp" name="contentPage"/>
</jsp:forward>

<!-- 시작하자마자 contentPage에 "content.jsp"를 담아서 template.jsp로 넘어감  -->