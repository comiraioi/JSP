<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
control.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");

	String products = request.getParameter("products");
	String pro = "";
	
	if(products.equals("1")){
		pro = "tv";
	}else if(products.equals("2")){
		pro = "dc";
	}else if(products.equals("3")){
		pro = "mp";
	}
	System.out.println(pro);
%>

<jsp:forward page="template.jsp">
	<jsp:param value="<%=pro%>" name="contentPage"/>
</jsp:forward>