<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
Ex05_result_내이름.jsp <br>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id"); // value를 가져와라
	String pw = request.getParameter("pw");
	String[] product =request.getParameterValues("product");
	String time = request.getParameter("time");
	String approve = request.getParameter("approve");
	String agree = request.getParameter("agree");
	System.out.println("agree:"+agree);
%>

<table border="1">
	<tr>
		<td>id</td>
		<td><%=id %></td>
	</tr>
	<tr>
		<td>pw</td>
		<td><%=pw %></td>
	</tr>
	<tr>
		<td>products</td>
		<td>
			<%
			for(int i=0;i<product.length;i++){
				out.print(product[i]+ " ");
			}
			%>	
		</td>
	</tr>
	
	<tr>
		<td>time</td>
		<td><%=time %></td>
	</tr>
	<tr>
		<td>approve</td>
		<td><%=approve %></td>
	</tr>
	<tr>
		<td>approve</td>
		<td>
			<%
			if(agree == null){ //체크하면 on, 안하면 null	
				out.print("동의안함");
			}else{
				out.print("동의함");
			}
			%>
		</td>
	</tr>
</table>
<br>
<!-- 방법2 -->
<table border="1">
<%
	request.setCharacterEncoding("UTF-8");

	Enumeration<String> enu = request.getParameterNames();

	while(enu.hasMoreElements()){
		String element = enu.nextElement();		//element=이름들
		System.out.println("element:"+element);
		
		String[] values = request.getParameterValues(element);
%>
	<tr>
		<td><%=element %></td>
		<td>
		<%
			if(element.equals("agree")){
				for(int i=0; i<values.length; i++){
					if(values[0] == null){
						out.print("<td>동의안함</td>");
					}
					else{
						out.print("<td>동의함</td>");
					}
				}
			}else{
				for(String v : values){
					out.print(v);
				}
			}
		%>
		</td>
	</tr>
<%
	}//while
%>	
</table>