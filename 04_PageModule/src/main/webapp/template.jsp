<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("contentPage");
%>

<table border="1" width="450" height="200">
	<tr>
		<td colspan="2" align="center">
			<jsp:include page="top.jsp"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="<%=contentPage+\"Left.jsp\"%>"/>
		</td>
		<td>
			<b><%=contentPage%> 정보 페이지입니다.</b><br>
			<jsp:include page="<%=contentPage+\".jsp\"%>"/>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<%@ include file="bottom.jsp" %>
		</td>
	</tr>
</table>