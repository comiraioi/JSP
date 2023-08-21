<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
Ex04_result.jsp <br>

<%
	request.setCharacterEncoding("UTF-8");
	String a = request.getParameter("name");
	String b = request.getParameter("pw");
	String c = request.getParameter("fruit");
	String[] d = request.getParameterValues("fruit");
	//System.out.println("선택한 과일갯수:"+d.length); // 
	
	String[] a2 = request.getParameterValues("name");
	String[] sports = request.getParameterValues("sports");
%>

이름 : <%=a%> <br>
이름2 : <%=a2[0]%> <br>
비번 : <%=b%> <br>
과일 : <%=c%> <br>

<%
	if(d == null){
		out.print("선택한 과일이 없습니다.<br>");
	}else{
		for(int i=0;i<d.length;i++){
			out.print("<font color='red'>" + d[i] +"</font>");
		}
		
	}
%>

운동 : 
	<%
		if(sports == null){
			out.print("선택한 운동이 없습니다.");
		}else{
			for( String s : sports){
				out.print(s);	
			}
		}
	%>

<br>






