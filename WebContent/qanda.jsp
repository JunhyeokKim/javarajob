<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	Date time = new Date();
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String accTime = format.format(time);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Theme Region">
<meta name="description" content="">

<title>MY PAGE | 문의하기</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css">

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
	<!-- header 11-->
	<jsp:include page="navHeader.jsp"/>

	<section class="clearfix job-bg  ad-profile-page">
		<div class="container">
			<div class="breadcrumb-section">
				<ol class="breadcrumb">
					<li><a href="index.jsp">MY PAGE</a></li>
					<li>회원정보 수정</li>
				</ol>						
				<h2 class="title">My Profile</h2>
			</div><!-- breadcrumb-section -->
			
			<div class="job-profile section">	
				<div class="user-profile">
					<div class="user-images">
						<img src="images/user.jpg" alt="User Images" class="img-responsive">
					</div>
					<div class="user">
						<h2><a href="#">${id}</a> 님 안녕하세요!</h2>
						
						<h5>마지막 로그인 <%=accTime %></h5>
					</div>

					<div class="favorites-user">
						<div class="my-ads">
							<a href="applied-job.html">29<small>Apply Job</small></a>
						</div>
						<div class="favorites">
							<a href="bookmark.html">18<small>Favorites</small></a>
						</div>
					</div>								
				</div><!-- user-profile -->
						
				<ul class="user-menu">					
					<li><a href="${path}/account.do?method=uptProcGuest1">회원정보 수정</a></li>
					<li><a href="${path}/account.do?method=delProcGuest1">탈퇴</a></li>
					<li><a href="${path}/account.do?bookmark">관심기업</a></li>
					<li><a href="${path}/account.do?appliedjob">지원한 기업</a></li>
					<li class="active"><a href="${path}/account.do?qanda">Q&A</a></li>
				</ul>
			</div><!-- ad-profile -->

			<div class="profile job-profile">
				<div class="user-pro-section">
					<!-- profile-details -->
					<div class="question-answer section">
						<h2>문의 내용</h2>
						<table align="center" class="kdb-table" width="100%">
							<colgroup>
								<col width="20%">
								<col width="50%">
								<col width="20%">
								<col width="10%">
							</colgroup>
							<tr>
								<th>문의한 기업</th>
								<th>문의 내용</th>
								<th>등록일</th>
								<th>답변 여부</th>
							</tr>
							<tr>
								<td class="no-content" colspan="4">등록하신 문의가 없습니다.</td>
							</tr>
						</table>

					</div>
					<!-- profile-details -->

					<!-- 문의하기 btn -->
					<div class="new-question">
						<div class="buttons" align="center">
							<a href="#" class="btn">새 질문하기</a>
						</div>
					</div>
					<!-- 문의하기 btn -->
				</div>
				<!-- user-pro-edit -->
			</div>
		</div>
		<!-- container -->
	</section>
	<!-- ad-profile-page -->

	<!-- footer -->
	<footer id="footer" class="clearfix">

		<div class="footer-bottom clearfix text-center">
			<div class="container">
				<p>(주)앵커리어(대표: 박수상) | 개인정보보호관리자: 박수상 서울시 강남구 역삼로3길 13 건암빌딩 202호
					| 전화번호: 02-6264-7582 사업자등록 : 138-87-00058 | 직업정보제공사업 :
					J1200020160017 | 통신판매업 : 2016-서울강남-00784 Copyright Anchoreer Co.,
					Inc. All rights reserved.</p>
				<p>
					Copyright &copy; <a href="#">Jobs</a> 2017. Developed by <a
						href="http://themeregion.com/">ThemeRegion</a>
				</p>
			</div>
		</div>
		<!-- footer-bottom -->
	</footer>
	<!-- footer -->

	<!--/Preset Style Chooser-->
	<div class="style-chooser">
		<div class="style-chooser-inner">
			<a href="#" class="toggler"><i class="fa fa-cog fa-spin"></i></a>
			<h4>Presets</h4>
			<ul class="preset-list clearfix">
				<li class="preset1 active" data-preset="1"><a href="#"
					data-color="preset1"></a></li>
				<li class="preset2" data-preset="2"><a href="#"
					data-color="preset2"></a></li>
				<li class="preset3" data-preset="3"><a href="#"
					data-color="preset3"></a></li>
				<li class="preset4" data-preset="4"><a href="#"
					data-color="preset4"></a></li>
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