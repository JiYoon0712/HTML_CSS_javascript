<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	String s = age >= 19 ? "성인" : "미성년자";
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>요청 결과</h3>

<p>
	<%= name %>님의 나이가 <%= age %>이므로 
	<span style="font-weight: bold"><%=s %></span> 입니다. 
</p>
</body>
</html>