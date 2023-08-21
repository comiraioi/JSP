<%@page import="myPkg.MartBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- select.jsp에서 수정 클릭하면 해당 행의 num값 가지고 updateForm.jsp로 넘어옴 -->
updateProc.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	//String num = request.getParameter("num");
%>

<!-- MartDao의 생성자에서 1.드라이버 로드 2.계정 접속 실행 -->
<jsp:useBean id="mdao" class="myPkg.MartDao"/>

<jsp:useBean id="mb" class="myPkg.MartBean"/>
<jsp:setProperty property="*" name="mb"/>
<%
	/* not null인 id와 pw를 제외한 항목들을 입력하지 않았을 경우 표에 출력할 문자열 설정 */
	if(mb.getProduct() == null){
		mb.setProduct("선택 항목 없음");
	}else{	//checkbox 여러개 선택한 경우
		String[] prod = request.getParameterValues("product");
		String str = "";
		for(int i=0; i<prod.length; i++){
			str += prod[i]+"/";
		}
		mb.setProduct(str);
	}

	if(mb.getApprove() == null){
		mb.setApprove("결제 X");
	}

	if(mb.getAgree() == null){
		mb.setAgree("동의 안함");
	}else if(mb.getAgree().equals("on")){
		mb.setAgree("동의함");
	}	

	String msg;
	String url;
	
	int cnt = mdao.updateMart(mb); //메서드 호출
	
	if(cnt==1){
		msg = "update 성공";
		//response.sendRedirect("select.jsp");
		url = "select.jsp";
	}else{
		msg = "update 실패";
		url = "updateForm.jsp?num="+mb.getNum();
	}
%>

<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>


	