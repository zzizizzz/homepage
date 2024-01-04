<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		 요청 URL
		 	localhost/comm/logout.jsp
		 	
	*/
	
	/*
		로그아웃 시키기
		
		+ 요청메세지로 전달받은 세션아이디에 해당하는 세션객체를 찾아서
		  그 세션객체를 무효화시킨다.(폐기시킨다.)
		  
		+ HttpSession 객체를 폐기시키면 HttpSession객체에 저장되었던
		  모든 속성이 삭제된다.
	  	  즉 , login.jsp에서 인증된 사용자정보를 유지시키기 위해서 
		  HttpSession 객체에 "LOGIN_USER"라는 속성명을
		  저장한 속성(이름:"USER_USER", 값:LoginUser객체)도 삭제된다.
	*/
	
	// HttpSession 객체를 무효화 시킨다.
	session.invalidate();

	// index.jsp를 재요청하는 응답을 보낸다.
	response.sendRedirect("index.jsp");
%>