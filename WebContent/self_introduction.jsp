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


<!-- External CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/dropzone.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/resume.css">
<link rel="stylesheet" href="css/main.css?v=1">
<link rel="stylesheet" href="css/table_kdb.css">

<style type="text/css">
	.std-button{float:left;}
	.dropzone-file {
		position:absolute;
		top:0px;
		right:0px; 
		z-index:50;
	}
	.dropzone-checkbox {
		position:absolute;
		top:0px;
		left:0px; 
		z-index:50;
		width:20px;
		height:20px;
		margin:0px;
	}
	.dropzone-down {
	position:absolute;
	top:70%;
	left:25%;
	width:50%;
	height:20%;
	z-index:50;
	padding:0;
	display: none;
	}
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

</head>
<body>
	<!-- header -->
	<jsp:include page="navHeader.jsp"/>
	<!-- header -->

	<section class="job-bg-self page  ad-profile-page">
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
							<div class="sid-button">
								<input type="button" class="btn" id="delDocu" value="선택 항목 삭제" />
							</div>
						</div>
					</div>
				</div>
			
				<div class="resume-content">
					<!-- Change /upload-target to your upload address -->
					<form method="post" action="/upload-target" class="dropzone" enctype="multipart/form-data" id="drop-area" style="min-height:500px; border-style: dashed; border-radius: 15px;">
					<div>
						<h3 align="center">파일을 추가해주세요(drag or click!)</h3>
					</div>
					</form>
				</div>
				<!-- resume-content -->
			</div>
			<!-- container -->
	
	<!-- ad-profile-page -->

	<!-- footer -->
	<jsp:include page="footer.jsp"/>
	<!-- /footer -->
	</section>
	
	

	<!-- JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/main.js"></script>
	<script src="js/switcher.js"></script>
	<!-- form js -->
	<script src="${path}/com/jquery-1.10.2.js"></script>
	<script src="${path }/js/dropzone.js"></script>
	<script src="${path }/js/self-introduction.js"></script>
	<!-- form js -->
</body>
</html>