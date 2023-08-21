<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
company_forward.jsp<br>

<jsp:forward page="template.jsp">
	<jsp:param value="company.jsp" name="contentPage"/>
</jsp:forward>

<!-- contentPage에 "company.jsp"를 담아서 template.jsp로 넘어감  -->