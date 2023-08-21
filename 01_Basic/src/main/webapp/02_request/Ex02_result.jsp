<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_result.jsp <br>

<%
	//String num1 = request.getParameter("num1");
	//String num2 = request.getParameter("num2");
	int num1 = Integer.parseInt(request.getParameter("num1")); // "3"=>3
	int num2 = Integer.parseInt(request.getParameter("num2")); // "4"=>4
	int count = 0;
	int mul = 1;
	while(count<num2){
		count++;
		mul = mul * num1;
	}
%>

<%=num1%><sup><%=num2%></sup> 결과 : <%=mul %><br>
<%=num1%><sub><%=num2%></sub> 결과 : <%=Math.pow(num1,num2) %><br>













