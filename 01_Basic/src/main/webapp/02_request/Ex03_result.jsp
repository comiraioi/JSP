<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
form.jsp => Ex03_result.jsp <br>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String age = request.getParameter("age"); // "33"+1 
	String gender = request.getParameter("gender"); 
	String hobby = request.getParameter("hobby"); 
	String color = request.getParameter("color"); 
	String abc = request.getParameter("abc"); 
%>
이름 : <%=name %><br>
나이 : <%=request.getParameter("age") %><br>
성별 : <%=gender %><br>
취미 : <%=hobby %><br>
색 : <%=color %><br>
abc : <%=abc %><br>
<%
	if(abc == null){
		out.print("abc는 없음");
	}

	if(gender.equals("m")){
		out.print("남자");
	}else{
		out.print("여자");
	}
	
	String selectedColor="";
	if(color.equals("blue")){
		selectedColor = "파란색";
		
	}else if(color.equals("red")){
		selectedColor = "빨간색";
		
	}else if(color.equals("green")){
		selectedColor = "초록색";
		
	}else{
		selectedColor = "노란색";
	}
%>

<!-- 선택한 색 : <img src="./../images/red.jpg"> -->
선택한 색 : <%=selectedColor %> <img src="./../images/<%=color %>.jpg"> <br>
선택한 색 : <%=selectedColor %> <img src="./../images/<%=color + ".jpg"%>"><br>
 







