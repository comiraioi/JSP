<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <table border="1" style="width: 80%; text-align: center;" >
    <%
    	for(int i=0; i<10; i++){
    		out.print("<tr>");
    		for(int j=2; j<10; j++){
    			
    			if(i == 0){
    				out.print("<th style = 'background-color: pink;'>" + j + "단</th>");
    			}else{
    				out.print("<td>" + j + "*" + i +"=" + j*i + "</td>");
    			}
    			
    		}
    		out.print("</tr>");
    	}
    %>
    </table>