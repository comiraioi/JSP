<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 선언문(Declaration): 전역 변수 및 메서드 선언 --%>
<%!
	/* multiply 메서드 정의 */
	public int multiply(int a, int b){
		int c = a*b;
		return c;
	}

	/* add 메서드 정의 */
	public int add(int a, int b){
		int c = a+b;
		return c;
	}
%>

<%-- 메서드 호출해서 표현식으로 출력 --%>
20*30 = <%= multiply(20,30) %>
<br>
<%
	//변수 선언
	int num1 = 70;
	int num2 = 10;
	int result = add(num1, num2);
%>
결과: <%= num1 %> + <%= num2 %> = <%= result %>