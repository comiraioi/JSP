<%@ page import="myPkg.MembersBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Result_이수진.jsp<br>
<h3>당신이 입력한 정보입니다.</h3>
<hr>
<!-- form에서 입력한 값 가져오기 -->
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	String mclass = request.getParameter("mclass");
	String mc = "";
	if(mclass.equals("1")){
		mc = "비회원";
	}else if(mclass.equals("2")){
		mc = "정회원";
	}else if(mclass.equals("3")){
		mc = "우수회원";
	}else if(mclass.equals("4")){
		mc = "관리자";
	}
	
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
%>

<!-- 자바 객체 생성 -->
<%
	MembersBean mb = new MembersBean();

	mb.setId(id);
	mb.setPw(pw);
	mb.setName(name);
	mb.setMclass(mc);
	mb.setPhone1(phone1);
	mb.setPhone2(phone2);
	mb.setPhone3(phone3);
%>
[Java]<br>
아이디: <%=mb.getId()%><br>
비밀번호: <%=mb.getPw()%><br>
이름: <%=mb.getName()%><br>
회원구분: <%=mb.getMclass()%><br>
전화번호: <%=mb.getPhone1()%>-<%=mb.getPhone2()%>-<%=mb.getPhone3()%><br>

<hr width="300px" align="left" style="border-style:dotted">

<!-- JSP 객체 생성 -->
<jsp:useBean id="mb2" class="myPkg.MembersBean"/>
<jsp:setProperty property="id" name="mb2" param="id"/>
<jsp:setProperty property="pw" name="mb2" param="pw"/>
<jsp:setProperty property="name" name="mb2" param="name"/>
<jsp:setProperty property="mclass" name="mb2" value="<%=mc%>"/>
<jsp:setProperty property="phone1" name="mb2" param="phone1"/>
<jsp:setProperty property="phone2" name="mb2" param="phone2"/>
<jsp:setProperty property="phone3" name="mb2" param="phone3"/>

[JSP]<br>
아이디: <jsp:getProperty property="id" name="mb2"/><br>
비밀번호: <jsp:getProperty property="pw" name="mb2"/><br>
이름: <jsp:getProperty property="name" name="mb2"/><br>
회원구분: <jsp:getProperty property="mclass" name="mb2"/><br>
전화번호: <jsp:getProperty property="phone1" name="mb2"/>-<jsp:getProperty property="phone2" name="mb2"/>-<jsp:getProperty property="phone3" name="mb2"/>

<!-- 자바 코드
myPkg.MembersBean mb2 = new myPkg.MembersBean();
	
mb2.setId("form에서 입력한 id");
mb2.setPw("form에서 입력한 pw");
mb2.setName("form에서 입력한 name");
mb2.setMclass("form에서 입력한 mclass");
mb2.setPhone1("form에서 입력한 phone1");
mb2.setPhone2("form에서 입력한 phone2");
mb2.setPhone3("form에서 입력한 phone3");
mb2.getId();
mb2.mb.getPw();
mb2.getName();
mb2.mb.getMclass();
mb2.getPhone1();
mb2.getPhone2();
mb2.getPhone3();
-->