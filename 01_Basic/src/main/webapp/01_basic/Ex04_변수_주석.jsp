<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	String id = "kim"; // 전역변수
	public String getId(String id){
		return id;
	}
%>

<%
	String id = "park"; // 지역변수
	String comments = "주석문 연습";
%>
<%=	getId("choi")%> <br>
id : <%=id %> <br>

첫번째 comments : <%=comments %> <br>
두번째 comments : <%-- <%=comments %> --%> <br>
세번째 comments : <!-- <%=comments %>  --><br>


<%--     
선언문 <%! %> 메서드 정의
표현식 <%= %>  출력할떄
지시어 <%@ %> JSP 페이지의 설정 정보 import 
주석  
스크립트릿 <% %> 자바코드 구현
 --%>