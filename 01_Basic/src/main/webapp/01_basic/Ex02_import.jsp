<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar, java.util.Date"%>
<%-- 모든 기능 호출 import="java.util.*" --%>
<%-- 
	<%@ import="java.util.Calendar"%>
	<%@ import="java.util.Date"%>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	오늘은
	<%
		/* Calendar 객체: protected 타입으로 import하지 않으면 패키지로 호출해야함
		java.util.Calendar cal = new java.util.Calendar();
		Calendar cal = new Calendar();
		*/
		Calendar cal = Calendar.getInstance();
		Date d = new Date();
	%>
	<%= cal.get(Calendar.YEAR) %> 년
	<%= cal.get(Calendar.MONTH)+1 %> 월
	<%= cal.get(Calendar.DATE) %> 일
	<br>
	오늘은 <%=d %> 입니다.
</body>
</html>