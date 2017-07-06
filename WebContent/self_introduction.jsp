<%@
	page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Theme Region">
<meta name="description" content="">

<title>JAVARAJOB | MY PAGE | 자기소개서 관리</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/resume.css">
<link rel="stylesheet" href="css/main.css?v=1">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css">
<style type="text/css">
	.std-button{float:left;}
</style>
<!-- font -->
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!-- icons -->
<link rel="icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<!-- icons -->

<!-- form js -->
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		// ---------- 초기 값 설정 ---------- 
		var ext ="";
		$("#fileUp").val("");
		// ---------- 초기 값 설정 ----------
		
		// ---------- 전체 선택 ---------- 
		$("#allSel").click(function(){
			if($("#allSel").prop("checked")) {
				$("input[name=fileNames]").prop("checked", true);
			} else {
				$("input[name=fileNames]").prop("checked", false);
			}
		})
		// ---------- 전체 선택 ----------
		
		// ---------- upload ----------
		$("#uploadBtn").click(function(){
			if($("#fileUp").val() != ""){
				var endNum = document.getElementsByName("fileNames").length;
				var isNewFile = true;
				var count = 0;
				for(var i=0; i<endNum; i++){
					if($("#fileUp").val() == "C:\\fakepath\\"+document.getElementsByName("fileNames")[i].value){
						isNewFile = false;
					}
				}
				if(!isNewFile) {
					if(confirm("이미 같은 이름의 파일이 존재합니다. 덮어쓰겠습니까?")){
						isNewFile = true;
						count++;
					}
				}
				if(isNewFile){
					$("#isExt").val(ext);
					$("form").attr("action","${path}/self_intro.do?method=upload&count="+count);
					$("form").submit();
				}
			} else alert("등록된 파일이 없습니다.");
		})
		// ---------- upload ----------
		
		// ---------- delete ----------
		$("#delDocu").click(function(){
			if($("input:checkbox[name='fileNames']:checked").length != 0) {
				$("form").attr("action","${path}/self_intro.do?method=delete");
				$("form").submit();
			} else alert("선택된 파일이 없습니다.");
		})
		// ---------- delete ----------
		
		// ---------- download ----------
		$("#downDocu").click(function(){
			if($("input:checkbox[name='fileNames']:checked").length == 1) {
				var fileName = $("input:checkbox[name='fileNames']:checked").val();
				$("form").attr("action","${path}/self_intro.do?method=download&fileName="+fileName);
				$("form").submit();
			} else if($("input:checkbox[name='fileNames']:checked").length != 0) {
				alert("다운로드는 한 번에 한 파일만 가능합니다.");
			} else alert("선택된 파일이 없습니다.");
			
		})
		// ---------- download ----------
		
		// ---------- file select ----------
		$(".fileSelect").click(function(){
			$(":checkbox:eq(0)", this).trigger("click", "click"); 
		})
		// ---------- file select ----------
		
		// ---------- fakeBtn 및 확장자 check ----------
		$("#fileUp").change(function(){
			if($("#fileUp").val() != "") {
				// 파일찾기 btn 수정
				$("#fakeBtn").val("등록됨");
				$("#fakeBtn").css("background","gray");
				$("#fakeBtn").css("border","gray");
				
				// 확장자 check
				ext = $(this).val().split(".").pop().toLowerCase();
				switch(ext){
				case "ppt":
				case "pptx":
					ext = "ppt";
					break;
				case "doc":
				case "docx":
					ext = "doc";
					break;
				case "pdf":
				case "txt":
					break;
				default:
					alert("잘못된 확장자입니다.");
					$(this).val("");
				}
			}
		})
		// ---------- fakeBtn 및 확장자 check ----------
		
	})
</script>

<!-- form js -->

</head>
<body>
	<!-- header -->
	<jsp:include page="navHeader.jsp"/>
	<!-- header -->

	<section class="job-bg-self page  ad-profile-page">
		<form method="post" enctype="multipart/form-data">
			<div class="self-overlay"></div>
			<div class="container">
				<input type="hidden" name="userId" value="${id}" />
				<input type="hidden" id="isExt" name="ext" value="" />
				<div class="breadcrumb-section">
					<!-- breadcrumb -->
					<ol class="breadcrumb">
						<li><a href="${path}/index.do">HOME</a></li>
						<li>자소서관리</li>
					</ol><!-- breadcrumb -->
					<h2 class="title">자기소개서 List</h2>
					<div class="row">
						<div class="col-mdd-3">
							<div class="file_input_div">
								<div class="sid_button">
									<input type="button" class="btn" id="fakeBtn" value="파일 찾기" />
									<input type="file" id="fileUp" class="file_input_hidden" name="selfIntro" />
								</div>
							</div>
						</div>
						<div class="col-mdd-3">
							<div class="sid-button">
								<input type="button" class="btn" id="uploadBtn" value="저장하기" />
							</div>
						</div>
						<div class="col-mdd-3">
							<div class="sid-button">
								<input type="button" class="btn" id="delDocu" value="선택 삭제" />
							</div>
						</div>
						<div class="col-mdd-3">
							<div class="sid-button">
								<input type="button" class="btn" id="downDocu" value="다운로드" />
							</div>
						</div>
						<div class="col-mdd-20">
							총 ${documents.size()}개
						</div>
					</div>
				</div>
			
				<div class="resume-content">
					<div class="kdb-table self-introduction-upload-section">
						<table>
							<colgroup>
							<col width="5%">
							<col width="10%">
							<col width="10%">
							<col width="55%">
							<col width="20%">
							</colgroup>
							<tr class="preColor">
								<th>
									<input type="checkbox" id="allSel" style="width:30px;height:30px" />
								</th>
								<th>번호</th>
								<th colspan="2">파일 이름</th>
								<th>등록일</th>
							</tr>
							<c:forEach var="docu" items="${documents}" varStatus="sts">
								<tr class="docuContent fileSelect">
									<td>
										<input type="checkbox" name="fileNames" style="width:30px;height:30px" value="${docu.fileName}"/>
									</td>
									<td>
										${sts.count}
									</td>
									<td>
										<img src="images/ico/${docu.ext}.png" width="50" height="50">
									</td>
									<td>
										${docu.fileName}
									</td>
									<td>
										${docu.regDate}
									</td>
								</tr>
							</c:forEach>
							<c:if test="${documents.size() == 0}">
								<tr class="docuContent">
									<td colspan="5">등록된 파일이 없습니다.</td>
								</tr>
							</c:if>
						</table>
					</div>
					<!-- educational-background -->
				</div>
				<!-- resume-content -->
			</div>
			<!-- container -->
		</form>
	
	<!-- ad-profile-page -->

	<!-- footer -->
	<jsp:include page="footer.jsp"/>
	<!-- /footer -->
	</section>
	
	<!--/Preset Style Chooser-->
	<div class="style-chooser">
		<div class="style-chooser-inner">
			<a href="#" class="toggler"><i class="fa fa-cog fa-spin"></i></a>
			<h4>Presets</h4>
			<ul class="preset-list clearfix">
				<li class="preset1 active" data-preset="1"><a href="#" data-color="preset1"></a></li>
				<li class="preset2" data-preset="2"><a href="#" data-color="preset2"></a></li>
				<li class="preset3" data-preset="3"><a href="#" data-color="preset3"></a></li>
				<li class="preset4" data-preset="4"><a href="#" data-color="preset4"></a></li>
			</ul>
		</div>
	</div>
	<!--/End:Preset Style Chooser-->

	<!-- JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/main.js"></script>
	<script src="js/switcher.js"></script>
</body>
</html>