<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
template.jsp<br><br>

<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("contentPage");
%>

<!-- contentPage값이 변화함  -->

<table border="1" width="500" height="300">
	<tr>
		<td colspan="2">
			<jsp:include page="top.jsp"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="left.jsp"/>
		</td>
		<td>
			<jsp:include page="<%=contentPage%>"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<%@ include file="bottom.jsp" %>
		</td>
	</tr>
</table>