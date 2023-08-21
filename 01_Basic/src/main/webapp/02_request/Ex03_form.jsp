<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	function check(){
		
		if(form.name.value == "") { 
			alert('이름을 입력하세요.');
			form.name.focus();
			return false; 
		}  
		
		if (form.age.value.length == 0) {
			alert("나이를 입력하세요.");
			form.age.focus();
			return false;
		}
		
		if(isNaN(form.age.value)){ 
			alert('나이는 숫자만 입력 가능합니다.');
			form.age.select();
			return false;
		}
	
		
		flag=false;
		
		for(i=0; i<form.gender.length;i++){
			if(form.gender[i].checked){
		    	flag=true;
		   	}
		 }
		 if(flag==false){
		 	alert("gender를 입력하세요");
		   	return false;
		 }
		 
	
		if(form.hobby.value==''){
			alert('선택 이외의 것을 선택하세요');
			return false;
		}
		
		if(form.color.value=='선택'){
			alert('선택 이외의 것을 선택하세요');
			return false;
		}
	
} // check
</script>

Ex03_form.jsp <br>
<form name="form" action="Ex03_result.jsp" method="post">
	이름 : <input type="text"  name="name"> <br><br>
	나이 : <input type="text"  name="age"> <br><br>
	성별 : 남자 <input type="radio" name="gender" value="m"> 
			여자 <input type="radio" name="gender" value="f"><br><br>
	취미 : 	
		<select name="hobby">
			<option value="">선택
			<option value="Java공부">Java공부
			<option value="뮤지컬 보기">뮤지컬 보기</option>
			<option value="영화 보기">영화 보기</option>
			<option value="드라마 보기">드라마 보기</option>
		</select><br><br>
	색 선택 : 	
		<select name="color">
			<option value="선택">선택
			<option value="blue">파랑색</option>
			<option value="green">초록색</option>
			<option value="red">빨강색</option>
			<option value="yellow">기타</option>
		</select><br><br>	
		
	<input type="submit" value="보내기" onClick="return check()">
</form>


