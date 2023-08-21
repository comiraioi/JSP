<%@page import="myPkg.EmplDao"%>
<%@page import="myPkg.EmplBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- select.jsp에서 수정 클릭하면 해당 행의 num값 가지고 updateForm.jsp로 넘어옴 -->
<!-- updateProc.jsp에서 수정 실패하면 num값 가지고 updateForm.jsp로 넘어옴 -->
updateForm.jsp<br>
<%
	String num = request.getParameter("num");
	System.out.println("수정할 회원번호: "+num);
	
	//EmplDao 객체 생성 > EmplDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행
	EmplDao edao = new EmplDao();
	//num을 매개변수로 메서드를 호출해 해당 행의 데이터를 EmplBean 변수에 담음
	EmplBean eb = edao.getEmplbyNum(num);
	
	System.out.println(eb.getNum());
	System.out.println(eb.getName());
	System.out.println(eb.getDeptno());
	System.out.println(eb.getSalary());
%>
<form action="updateProc.jsp" method="post">
	<!-- type="hidden": 창에서 안보이지만 값 전달됨, disabled: 창에서 보이고 수정 못하지만 값 전달 x -->
	<!-- readonly: 창에서 보이고 수정 못하지만 값 전달됨 -->
	수정할 회원번호: <input type="text" name="num" value="<%=num%>" readonly><br>
	
	<h2>회원 정보 수정</h2>
	이름: <input type="text" name="name" value="<%=eb.getName()%>"><br>
	부서번호: 
	<select name="deptno">
		<%
			for(int i=1; i<=3; i++){
		%>
				<!-- for문을 돌면서 해당 회원의 부서번호가 i와 같으면 selected -->
				<option value="<%=i%>" <%if(eb.getDeptno()==i){%> selected <%} %>>
					<%=i%>
				</option>
		<%
			}//for
		%>
	</select><br>
	급여: <input type="text" name="salary" value="<%=eb.getSalary()%>"><br><br>
	
	<input type="submit" value="수정">
</form>