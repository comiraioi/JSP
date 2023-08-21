<%@page import="myPkg.EmplBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- select.jsp에서 수정 클릭하면 해당 행의 num값 가지고 updateForm.jsp로 넘어옴 -->
updateProc.jsp<br>

<!-- EmplDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행 -->
<jsp:useBean id="edao" class="myPkg.EmplDao"/>
<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
%>
<!-- JSP 코드 -->
<jsp:useBean id="eb" class="myPkg.EmplBean"/>
<jsp:setProperty property="*" name="eb"/>
<% 
	String msg;
	String url;
	
	int cnt = edao.updateEmpl(eb); //메서드 호출
	
	if(cnt>0){
		msg = "update 성공";
		url = "select.jsp";
	}else{
		msg = "update 실패";
		url = "updateForm.jsp?num="+num;
	}
%>

<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>


	