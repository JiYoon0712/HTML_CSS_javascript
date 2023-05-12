<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces = "true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
	request.setCharacterEncoding("utf-8");
	
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	String op = request.getParameter("oper");
	String result = "";
	
	switch(op){
	case "+" : result = String.format("%d + %d = %d", n1 , n2, n1+n2 ); break;
	case "-" : result = String.format("%d - %d = %d", n1 , n2, n1-n2 ); break;
	case "*" : result = String.format("%d * %d = %d", n1 , n2, n1*n2 ); break;
	case "/" : result = String.format("%d / %d = %d", n1 , n2, n1/n2 ); break;
	}
%>

<%=result %>
