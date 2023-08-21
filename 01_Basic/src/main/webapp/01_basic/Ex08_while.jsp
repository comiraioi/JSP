<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%
    	int i = 1;
    	int sum = 0;
    	while(i < 11){
    		sum += i;
    		i++;
    	}
    	out.print("<h3>1~10 합:"+sum+"</h3><br>");
    %>
   <h2>1~10 합 : <%=sum%> </h2>
   
   