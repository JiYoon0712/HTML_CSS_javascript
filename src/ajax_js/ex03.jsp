<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces = "true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
</head>
<body>

<h3>AJAX - POST </h3>

<div>
	<input type="text" id="num1">
	<select id="oper">
		<option value="+">더하기</option>
		<option value="-">빼기</option>
		<option value="*">곱하기</option>
		<option value="/">나누기</option>
	</select>
	<input type="text" id="num2">
	<button type="button" onclick="sendOk();">결과</button>
</div>
<hr>

<div class="result-layout"></div>

<script type="text/javascript">
var httpReq = null;

function sendOk(){
	let n1 = document.querySelector("#num1").value;
	let n2 = document.querySelector("#num2").value;
	let op = document.querySelector("#oper").value;
	
	let url = "ex03_ok.jsp";
	let query = "num1="+n1+"&num2="+n2+"&oper="+encodeURIComponent(op);

	
	// AJAX 객체생성
	httpReq = new XMLHttpRequest();
	
	// 서버에서 처리하고 결과를 전송할 때 호출할 자바 스크립트 함수 지정
	httpReq.onreadystatechange = callback;
	
	// open - AJAX 요청
	httpReq.open("POST",url, true);
	// post 방식은 필수
	httpReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");	// >> post 방식일때 enctype 설정 
			
	// send
	httpReq.send(query);		
}

function callback(){
	console.log(httpReq.readyState, httpReq.status);
	
	if(httpReq.readyState === 4){	// 요청 상태 - 4 : 모든 응답 요청 완료
		if(httpReq.status === 200){	// 응답 상태 코드 : 200 - 성공
			printData();
		}
	}
}

function printData(){
	// Text
	let result = httpReq.responseText;
	
	document.querySelector(".result-layout").innerHTML = result;
}
</script>

</body>
</html>