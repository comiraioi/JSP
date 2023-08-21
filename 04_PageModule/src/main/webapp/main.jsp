<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
main.jsp
<h3>템플릿 페이지 - 메인 페이지</h3>
<form method="get" action="control.jsp">
<table border="1" width="300" height="200">
	<tr>
		<td colspan="2" align="center">
			제품을 선택해주세요
		</td>
	</tr>
	<tr>
		<td align="center">
			제품
		</td>
		<td>
			<input type="radio" name="products" value="1">텔레비젼<br>
			<input type="radio" name="products" value="2">카메라<br>
			<input type="radio" name="products" value="3">MP3 플레이어
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>