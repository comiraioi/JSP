<%@page import="myPkg.EmplBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- select.jsp에서 삭제 클릭하면 해당 행의 num값 가지고 updateProc.jsp로 넘어옴 -->
deleteProc.jsp<br>

<!-- EmplDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행 -->
<jsp:useBean id="edao" class="myPkg.EmplDao"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
%>

<% 
	String msg;
	String url;
	
	int cnt = edao.deleteEmpl(num); //메서드 호출
	
	if(cnt>0){
		msg = "delete 성공";
	}else{
		msg = "delete 실패";
	}
%>

<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%="select.jsp"%>";
</script>


	