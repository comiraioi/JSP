<%@page import="myPkg.MartDao"%>
<%@page import="myPkg.MartBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
updateForm.jsp<br>

<%
	String num = request.getParameter("num");

	String[] product = {"식품","의류","도서","가구"};
	String[] time = {"9시~11시","11시~1시","1시~5시","5시~9시"};
	String[] approve = {"카드","핸드폰"};
	
	//MartDao 객체 생성 > MartDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행
	MartDao mdao = new MartDao();
	//num을 매개변수로 메서드를 호출해 해당 행의 데이터를 MartBean 변수에 담음
	MartBean mb = mdao.getMartbyNum(num);
%>

<h2> 이마트 상품 구매 내역 </h2>
<FORM name="myform" METHOD="post" ACTION="updateProc.jsp">
<p>
<span>수정할 회원번호:</span> <input type="text" name="num" value="<%=num%>" readonly><br>
<span>아이디 :</span> <INPUT TYPE="text" NAME="id" value="<%=mb.getId()%>"><br>
<span>비번 :</span> <INPUT TYPE="text" NAME="pw" value="<%=mb.getPw()%>"><br>
<p> 
<span>구매상품:</span>
	<%
	for(int i=0; i<product.length; i++){
	%>
		<input type="checkbox" name="product" value="<%=product[i]%>" <%if(mb.getProduct().contains(product[i])){%>checked<%}%>>
		<%=product[i]%>
	<%
	}//for
	%>
<!-- <input type="checkbox" name="product" value="식품">식품
	<input type="checkbox" name="product" value="의류">의류
	<input type="checkbox" name="product" value="도서">도서
	<input type="checkbox" name="product" value="가구">가구 -->	
<p>

<span>배송시간 :</span> 
 	<SELECT NAME="time">
 		<OPTION VALUE="선택">선택</OPTION>
 		<%
		for(String t : time){
		%>
			<OPTION  VALUE="<%=t%>" <%if(mb.getTime().equals(t)){%>selected<%}%>>
				<%=t%>
			</OPTION>
		<%
		}//for
		%>
 	<!-- <OPTION  VALUE="9시~11시">9시~11시</OPTION>
		<OPTION VALUE="11시~1시">11시~1시</OPTION>
		<OPTION VALUE="1시~5시">1시~5시</OPTION>
		<OPTION VALUE="5시~9시">5시~9시</OPTION> -->	
	</SELECT>
<p>

<span>결제방법:</span>
<% for(String a : approve){ %>
	<%=a%> <INPUT TYPE="radio" NAME="approve" VALUE="<%=a%>" <%if(mb.getApprove().equals(a)){%>checked<%}%>>
<% }//for%>
<!-- 카드 <INPUT TYPE="radio" NAME="approve" VALUE="카드">
핸드폰 <INPUT TYPE="radio" NAME="approve" VALUE="핸드폰"> -->	
<p>
<span>결제 동의합니다. </span>  
<INPUT TYPE="checkbox" NAME="agree" id="agree" <%if(mb.getAgree().equals("동의함")){%>checked<%}%>> 
<p>

<INPUT TYPE="submit" value="수정하기" onClick="return check()">
</FORM>