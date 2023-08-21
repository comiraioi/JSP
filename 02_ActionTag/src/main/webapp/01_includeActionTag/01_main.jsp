<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

01_main.jsp<br>
<jsp:include page="01_sub.jsp">
	<jsp:param value="kim" name="myname"/>
</jsp:include>

<!-- <namespace:태그명 page속성> -->
<!-- include ActionTag의 역할
	- param 태그로 myname 변수에 값 kim을 넣어 전달
	- 외부 파일 "01_sub.jsp"에서 실행한 결과를 가져옴 -->