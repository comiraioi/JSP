<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	td{
		text-align: center;
	}
</style>    
<%
    String[] str = {"JSP","정말","재미","있다"};
%>  
<table border="1" width="300">
	<tr>
		<th>배열의 인덱스</th>
		<th>배열의 내용</th>
	</tr>
	<%
	for(int i=0;i<str.length;i++){
	%>
		<tr>
			<td><%=i %></td>
			<td><%=str[i] %></td>
		</tr>
	<%
	} //for
	 %>
	
</table>    
<br><br>


<table border="1" width="300">
	<tr>
		<th>배열의 인덱스</th>
		<th>배열의 내용</th>
	</tr>
	<%
  	for(int i=0; i<str.length; i++){
  		out.print("<tr><td>" + i + "</td>");
  		out.print("<td>" + str[i] + "</td></tr>");
  	}
  	%>
	
</table>    



