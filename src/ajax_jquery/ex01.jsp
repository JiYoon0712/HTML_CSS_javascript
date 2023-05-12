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

<!-- (실무에서는 CDN 사용하지않는다. 다운로드 받아서 사용.) -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>

<h2>jQuery AJAX : GET - $(selector).load() </h2>

<form name="calcForm" >
	<input type="text" name="num1" id="num1">
	<select name="oper" id="oper">
		<option value="+">더하기</option>
		<option value="-">빼기</option>
		<option value="*">곱하기</option>
		<option value="/">나누기</option>
	</select>
	<input type="text" name="num2" id="num2">
	<button type="button" class="btnSend">결과</button>
</form>
<hr>
<div class="result-box"></div>

<script type="text/javascript">
$(function(){	// >> 상단에 있을 경우 기재. 아래에 작성할 경우 생략 가능 $(function(){})
	$(".btnSend").click(function(){
		/*
		let n1 = $("#num1").val();
		let n2 = $("#num2").val();
		let op = $("#oper").val();
		let query = "num1="+n1+"&num2="+n2+"&oper="+encodeURIComponent(op);
		*/
		
		let query = $("form[name=calcForm]").serialize();	// >> 직렬화. 사용하는 대신 form 태그가 없으면 안됨.
		console.log(query);
		let url = "ex01_ok.jsp?"+query;
		
		// AJAX - GET 방식
		$(".result-box").load(url);		// >> load는 보통 탭메뉴, 대화상자 사용시에 사용한다.
		
	});
});
</script>

</body>
</html>