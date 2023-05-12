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

</style>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css" type="text/css"/>
<style type="text/css">
/* 대화상자 외부 스타일 */
.ui-widget-overlay {
	background: none;
	/* 
        background: #666666 url(images/ui-bg_diagonals-thick_20_666666_40x40.png) 50% 50% repeat; 
        opacity: .50;
        filter:Alpha(Opacity=50);
   */
	background: #CEFBC9;
}

/* 타이틀바 스타일*/
.ui-widget-header {
	background: none;
	/*background: #f6a828 url(images/ui-bg_gloss-wave_35_f6a828_500x100.png) 50% 50% repeat-x;*/
	border: 1px solid #FF5E00;
	background: #DAD9FF;
}

/* 대화상자 스타일*/
.ui-dialog {
	border: 1px solid #FF5E00;
}
.ui-dialog .ui-dialog-title {
	padding-top: 5px; padding-bottom: 5px;
}

/* 대화상자 내부 스타일 */
.ui-widget-content {
	background: #F6F6F6;
	/* background: #eeeeee url(images/ui-bg_highlight-soft_100_eeeeee_1x100.png) 50% top repeat-x;*/ 
}
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.8.8/i18n/jquery.ui.datepicker-ko.js"></script>

<script type="text/javascript">
$(function(){
	$(".btnDialog").click(function(){
		$(".modal-dialog").dialog({
			title:"대화상자"
			,modal:true
			,width:500, height:500
		});
	});
});
</script>
</head>
<body>

<h2>대화상자 예제</h2>

<div style="margin: 20px;">
	<button type="button" class="btn btnDialog">대화상자</button>
</div>
<hr>

<div class="modal-dialog" style="display: none;">
	<h3>대화상자</h3>
	<p>간단한 대화상자 입니다.</p>
</div>

</body>
</html>