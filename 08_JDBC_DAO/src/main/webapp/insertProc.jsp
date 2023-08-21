<%@page import="myPkg.EmplBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
insertProc.jsp<br>

<!-- EmplDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행 -->
<jsp:useBean id="edao" class="myPkg.EmplDao"/>
<%
	//insertForm에서 입력한 3가지 입력받아 EmplBean 객체로 만들기
	request.setCharacterEncoding("UTF-8");
	/* 
	String name = request.getParameter("name");
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String salary = request.getParameter("salary"); */
	
	/* 자바코드
	EmplBean eb = new EmplBean();
	eb.setName(name);
	eb.setDeptno(deptno);
	eb.setSalary(Integer.parseInt(salary));*/
%>
<!-- JSP 코드 -->
<jsp:useBean id="eb" class="myPkg.EmplBean"/>
<jsp:setProperty property="*" name="eb"/>
<!--
<jsp:setProperty property="name" name="eb"/>
<jsp:setProperty property="deptno" name="eb"/>
<jsp:setProperty property="salary" name="eb"/>
-->

<% 
	String msg;
	String url;
	
	//int cnt = edao.insertEmpl(name,deptno,salary);	//메서드 호출
	int cnt = edao.insertEmpl(eb);
	if(cnt>0){
		msg = "insert 성공";
		url = "select.jsp";
	}else{
		msg = "insert 실패";
		url = "insertForm.jsp";
	}
%>

<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>


	