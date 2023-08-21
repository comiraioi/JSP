<%@page import="myPkg.EmplDao"%>
<%@page import="myPkg.EmplBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
	table{
		width: 60%;
		height: 100px;
		border: 1px solid black;
		text-align: center;
		margin: auto;
	}
	tr:first-child{
		background: yellow;
	}
</style>

select.jsp<br>
<%
	//EmplDao edao = new EmplDao();
	//클래스명에 에러가 뜨면 import 했는지 확인!
%>

<!-- EmplDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행 -->
<jsp:useBean id="edao" class="myPkg.EmplDao"/>

<%
	//한 행(EmplBean)을 관리하는 lists
	ArrayList<EmplBean> lists = edao.getAllEmpl();
%>

<table border="1">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>부서번호</th>
		<th>급여</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%
		//한 행씩 반복해서 전체 레코드 출력
		for(int i=0; i<lists.size(); i++){
	%>
			<tr>
				<td><%=lists.get(i).getNum()%></td>
				<td><%=lists.get(i).getName()%></td>
				<td><%=lists.get(i).getDeptno()%></td>
				<td><%=lists.get(i).getSalary()%></td>
				<!-- get방식으로 같은 행의 num값 가지고 링크로 넘어가기 -->
				<td><a href="updateForm.jsp?num=<%=lists.get(i).getNum()%>">수정</td>
				<td><a href="deleteProc.jsp?num=<%=lists.get(i).getNum()%>">삭제</td>
			</tr>
	<%
		}//for
	%>
</table><br>
<a href="insertProc">삽입</a>