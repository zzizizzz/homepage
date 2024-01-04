<%@page import="hr.dao.JobDao"%>
<%@page import="hr.vo.Job"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 요청 URL : http://localhost/sample/hr/job/add.jsp
	// 요청 파라미터(요청 메세지의 바디부)
	//  id=xxx&title=xxx&minSalary=xxx&maxSalary=xxx
	
	// 요청파라미터값 조회하기
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	int minSalary = Integer.valueOf(request.getParameter("minSalary"));
	int maxSalary = Integer.valueOf(request.getParameter("maxSalary"));
	
	//Job 객체를 생성해서 조회된 요청 파라미터 값을 저장하기
	Job job = new Job(); // 인포트확인
	job.setId(id);
	job.setTitle(title);
	job.setMinSalary(minSalary);
	job.setMaxSalary(maxSalary);
	
	//JOBS 테이블에 대한 CRUD 작업이 구현된 JobDao객체를 생성한다.
	JobDao jobDao = new JobDao(); //인포트 확인
	
	//신규 직종정보를 전달받아서 데이터 베이스에 저장시키는insertJob(Job jon)을 실행시킨다.
	jobDao.insertJob(job);
	
	// 모든 직종목록을 확인할수 있는 list.jsp를 재요청하게 하는 응답을 보낸다.
	response.sendRedirect("list.jsp"); // 목록을 다시 확인할수 있게 다시요청한다.
	
%>
</body>
