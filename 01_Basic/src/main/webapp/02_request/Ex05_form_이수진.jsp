<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		//alert(1);
	});
	
	function check() {
		//alert(3);
		
		if($('input[name=id]').val()==""){
			alert("아이디를 입력하세요.");
			$('input[name=id]').focus();
			return false;
		}
		
		if($('input[name=pw]').val() == ''){
			alert('pw를 입력해야합니다.');
			$('input[name=pw]').focus();
			return false;
		}
		
		if($('input[name=product]:checked').length==0){
			alert('product를 선택하세요.');
			$('input[name=product]').focus();
			return false;	
		}
		
		//if($('select[name=time]').val() == "선택") {
		if($('select option:selected').val()=="선택"){
			alert('배송시간을 선택하세요.');
			return false;
		}
		
		if ($('input[name=approve]:checked').length == 0) {
			alert('결제방법을 선택해 주세요.');
			return false;
		}
		
		//if($('input[name=agree]:checked').size()==0){
		/* if(!($('#agree').is(':checked'))){
    		alert('결제 동의를 해주세요');
    		return false;
    	} */
	}
</script>

Ex05_form_내이름.jsp <br>

<h2> 상품 구매 내역 </h2>
<FORM name="myform" METHOD="post" ACTION="Ex05_result_이수진.jsp" onSubmit="return check()">

 <span>아이디 :</span> <INPUT TYPE="text" NAME="id"><br>
 <span>비번 :</span> <INPUT TYPE="text" NAME="pw"><br>
  <p> 
 
<span>구매상품:</span>
	<input type="checkbox" name="product" value="식품">식품
	<input type="checkbox" name="product" value="의류">의류
	<input type="checkbox" name="product" value="도서">도서
	<input type="checkbox" name="product" value="가구">가구
<p>

<span>배송시간 :</span> 
 	<SELECT NAME="time">
 		<OPTION VALUE="선택">선택</OPTION>
		<OPTION VALUE="9시~11시">9시~11시</OPTION>
		<OPTION VALUE="11시~1시">11시~1시</OPTION>
		<OPTION VALUE="1시~5시">1시~5시</OPTION>
		<OPTION VALUE="5시~9시">5시~9시</OPTION>
	</SELECT>
<p>

<span>결제방법:</span>
카드 <INPUT TYPE="radio" NAME="approve" VALUE="카드">
핸드폰 <INPUT TYPE="radio" NAME="approve" VALUE="핸드폰">
<p>
<span>결제 동의합니다. </span>  
<INPUT TYPE="checkbox" NAME="agree" id="agree"> <!-- value="동의~" 써도 됨-->
<p>

<INPUT TYPE="submit" value="보내기">
<INPUT TYPE="reset" value="취소">
</FORM>