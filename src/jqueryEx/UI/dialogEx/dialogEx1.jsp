<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<style type="text/css">
* { padding: 0; margin: 0; }
*, *::after, *::before { box-sizing: border-box; }

body {
	font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
	font-size: 14px;
	color: #222;
}

a { color: #222; text-decoration: none; cursor: pointer; }
a:active, a:hover { color: #f28011; text-decoration: underline; }

/* form-control */
.btn {
	color: #333;
	border: 1px solid #999;
	background-color: #fff;
	padding: 5px 10px;
	border-radius: 4px;
	font-weight: 500;
	cursor:pointer;
	font-size: 14px;
	font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
	vertical-align: baseline;
}
.btn:active, .btn:focus, .btn:hover {
	background-color: #f8f9fa;
	color:#333;
}
.btn[disabled], fieldset[disabled] .btn {
	pointer-events: none;
	cursor: default;
	opacity: .65;
}

.form-control {
	border: 1px solid #999; border-radius: 4px; background-color: #fff;
	padding: 5px 5px; 
	font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
	vertical-align: baseline;
}
.form-control[readonly] { background-color:#f8f9fa; }

textarea.form-control { height: 170px; resize : none; }

.form-select {
	border: 1px solid #999; border-radius: 4px; background-color: #fff;
	padding: 4px 5px; 
	font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
	vertical-align: baseline;
}
.form-select[readonly] { background-color:#f8f9fa; }

textarea:focus, input:focus { outline: none; }
input[type=checkbox], input[type=radio] { vertical-align: middle; }

/* table */
.table { width: 100%; border-spacing: 0; border-collapse: collapse; }
.table th, .table td { padding-top: 10px; padding-bottom: 10px; }

.table-border thead > tr { border-top: 2px solid #212529; border-bottom: 1px solid #ced4da; }
.table-border tbody > tr { border-bottom: 1px solid #ced4da; }
.table-border tfoot > tr { border-bottom: 1px solid #ced4da; }
.td-border td { border: 1px solid #ced4da; }

ul { list-style: none; }
li { padding: 0; }
p { line-height: 1.3; }

h2 { margin: 30px; }

.container { width: 700px; margin: 30px auto; }

p { margin-bottom: 5px; }
</style>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css" type="text/css"/>
<style type="text/css">
/* 모달대화상자 */
.ui-widget-header { /* 타이틀바 */
	background: none;
	border: none;
	border-bottom: 1px solid #ccc;
	border-radius: 0;
}
.ui-dialog .ui-dialog-title {
	padding-top: 5px; padding-bottom: 5px;
}
.ui-widget-content { /* 내용 */
   /* border: none; */
   border-color: #ccc; 
}
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.8.8/i18n/jquery.ui.datepicker-ko.js"></script>

<script type="text/javascript">
$(function(){
	$(".btn1").click(function(){
		$(".popup-dialog").dialog();
	});

	$(".btn2").click(function(){
		$(".search-dialog").dialog({
			title:"데이터 검색"
			,width:500
			,height:500
		});
	});

	$(".btn3").click(function(){
		$(".zip-dialog").dialog({
			title:"우편번호"
			,modal:true		// >> modal 설정
			,width:500
			,height:500
		});

	});

	$(".btn4").click(function(){
		$(".modal-dialog").dialog({
			title:"대화상자"
			,modal:true
			,open:function(){
				$(this).load("dialogContent.jsp");		// >> ajax 
			}
			,width:500
			,height:500
		});
	});
});

$(function(){
	$(".btn5").click(function(){
		$(".modal-dialog2").dialog({
			title:"예제"
			,width:500
			,height:500
			,modal:true
		});
	});
	
	$(".dialog-close").click(function(){
		$(".modal-dialog2").dialog("close");
	});
});

$(function(){
	$(".btn6").click(function(){
		$(".modal-dialog3").dialog({
			title:"예제"
			,width:500
			,height:"auto"
			,modal:true
			,open:function(){
				// $(this).css("background", "#ccc"); // 배경색
				/* $(this).parents(".ui-dialog:first").
				      find(".ui-dialog-titlebar-close").remove(); // x 없애기
				*/
				$(this).parents(".ui-dialog:first").
			      find(".ui-dialog-titlebar").remove(); // 타이틀 없애기
			}
		    //,show:"clip", hide:"clip"
		    ,show:"blind", hide:"explode"
			,buttons : {
				"확인":function(){
					 alert("확인버튼을 눌렀다.");
				}
		        ,"취소":function(){
					$(this).dialog("close");
		        }
			}
		});
	});
});
</script>

</head>
<body>

<h2>대화상자 예제</h2>

<div style="margin: 20px;">
	<button type="button" class="btn btn1">간단한 대화상자</button>
	<button type="button" class="btn btn2">모딜리스 대화상자</button>
	<button type="button" class="btn btn3">우편번호-모달 대화상자</button>
	<button type="button" class="btn btn4">모달 대화상자-AJAX</button>
	<button type="button" class="btn btn5">모달 대화상자-CLOSE</button>
	<button type="button" class="btn btn6">모달 대화상자-CSS 변경</button>
</div>
<hr>

<div class="popup-dialog" style="display: none;">
    <h3>간단한 대화상자</h3>
    <p>대화상자 입니다.</p>
</div>

<div class="search-dialog" style="display: none;">
    <h3>검색</h3>
    <p><input type="text"></p>
</div>

<div class="zip-dialog" style="display: none;">
    <h3>우편번호</h3>
    <p>동이름 : <input type="text"></p>
</div>

<div class="modal-dialog" style="display: none;"></div>

<div class="modal-dialog2" style="display: none;">
    <h3>대화상자</h3>
    <p><input type="text"></p>
    <p>
    	<button type="button" class="btn">확인</button>
    	<button type="button" class="btn dialog-close">취소</button>
    </p>
</div>

<div class="modal-dialog3" style="display: none;">
    <h3>대화상자</h3>
    <p>대화상자 입니다.</p>
</div>

</body>
</html>