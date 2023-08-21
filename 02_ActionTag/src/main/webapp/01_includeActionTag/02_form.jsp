<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

02_form.jsp<br>
<form :include page="02_result.jsp">
	<input type="text" name="name" value="kim">
	
	<jsp:param value="kim" name="myname"/>
</form>
</jsp:include>