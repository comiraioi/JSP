<%@ page import="myPkg.Ex05_Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex05_result.jsp<br>

<jsp:useBean id="bean" class="myPkg.Ex05_Bean"/>
<jsp:setProperty property="*" name="bean"/>

이름 : <jsp:getProperty property="name" name="bean"/> <br>
비번 : <jsp:getProperty property="password" name="bean"/> <br><br>

[과목별 점수]<br>
<%
	String[] subject = {"국어","영어","수학","과학","영어"};
	int[] score = bean.getScore();
	//out.print(score); //주소
	int sum = 0;
	for(int i=0;i<score.length;i++){
		//sum += Integer.parseInt(score[i]);
		sum += score[i];
		
%>
	 <%=subject[i] %>: <%=score[i] %> <br>
<% 		
	}// for
	
	out.print("합계:"+sum+"<br>");
%>
<br>

[걸그룹 정보]<br>
<% 
 String[] group2 = bean.getGroup();
 for(int i=0; i<group2.length; i++){
%>
  <%=group2[i]+" " %>
<% 
 }
%>
