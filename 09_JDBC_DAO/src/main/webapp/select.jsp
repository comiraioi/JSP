<%@page import="myPkg.MartDao"%>
<%@page import="myPkg.MartBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
	table{
		width: 80%;
		height: 100px;
		border: 1px solid black;
		text-align: center;
		margin: auto;
	}
	tr:first-child{
		height: 30px;
		background: silver;
	}
</style>

select.jsp<br><br>

<!-- MartDao 객체 생성: 생성자에서 1.드라이버 로드 2.계정 접속 실행 -->
<jsp:useBean id="mdao" class="myPkg.MartDao"/>

<%
	//MartDao mdao = new MartDao(); > MartDao 객체 생성
	//한 행(MartBean)을 관리하는 lists
	ArrayList<MartBean> lists = mdao.getAllMart();	//메서드 호출
%>

<table border="1">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>상품</th>
		<th>시간대</th>
		<th>결제</th>
		<th>동의</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%
		//확장 for문으로 한 행씩 반복해서 전체 레코드 출력
		for(MartBean mb : lists){	//for(int i=0; i<lists.size(); i++){
	%>
			<tr>
				<!-- lists.get(i).getNum() -->
				<td><%=mb.getNum()%></td>
				<td><%=mb.getId()%></td>
				<td><%=mb.getPw()%></td>
				<td><%=mb.getProduct()%></td>
				<td><%=mb.getTime()%></td>
				<td><%=mb.getApprove()%></td>
				<td><%=mb.getAgree()%></td>
				<!-- get방식으로 같은 행의 num값 가지고 링크로 넘어가기 -->
				<td><a href="updateForm.jsp?num=<%=mb.getNum()%>">수정</td>
				<td><a href="deleteProc.jsp?num=<%=mb.getNum()%>">삭제</td>
			</tr>
	<%
		}//for
	%>
</table>
<br>
<a href="insertForm.jsp" style="margin-left: 10%">삽입</a>