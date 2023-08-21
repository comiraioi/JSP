<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 코드 -->
	하하하<br>
	<script type="text/javascript">
		/* 자바스크립트 코드 */
		document.write('abc');
	</script>
	<br>
	<%-- JSP 코드: 자바를 기반으로 동적으로 변화하는 데이터를 처리하고 표시 --%>
	<%-- 스크립트릿(Scriptlet) --%>
	<%
	/* 자바 코드 */
	String name = "홍길동";	//변수 name
	%>
	저의 이름은 <%= name %> 입니다.	<%-- 표현식(Expression) --%>
</body>
</html>