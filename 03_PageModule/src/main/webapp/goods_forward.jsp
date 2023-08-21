<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
goods_forward.jsp<br>

<jsp:forward page="template.jsp">
	<jsp:param value="goods.jsp" name="contentPage"/>
</jsp:forward>

<!-- contentPage에 "goods.jsp"를 담아서 template.jsp로 넘어감  -->