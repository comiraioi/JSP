<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

Ex04_form.jsp=>Ex04_result2.jsp <br>

<table border="1">
<%
	request.setCharacterEncoding("UTF-8");

	Enumeration<String> enu = request.getParameterNames();

	while(enu.hasMoreElements()){
		String element = enu.nextElement();
		System.out.println("element:"+element);
		/* element:name
		element:pw
		element:fruit
		element:sports */
		
		String[] value = request.getParameterValues(element);
%>
		<tr>
			<td><%=element %></td>
			<td>
				<%
					for(int i=0;i<value.length;i++){
						out.print(value[i]+" ");
					}
				%>
			</td>
		</tr>
<%			
		
		
	}//while
	
%>
</table>