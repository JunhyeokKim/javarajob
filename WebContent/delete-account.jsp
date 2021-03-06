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

<title>JAVARAJOB | MY PAGE | 탈퇴</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css?v=1">
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
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#passBtn").click(function(){
			var password = "${mem.password}";
			var str = $("#passContentBtn").val();
			
			if(password==str){
				$(location).attr("href","${path}/account.do?method=delProcGuest2");
			}else{
				alert("비밀번호 불일치합니다.");
			}
		})
	});
</script>
</head>
<body>
	<!-- header 11-->
	<jsp:include page="navHeader.jsp"/>

	<section class="job-bg-mypage page job-list-page container">
		<div class="list-view">
		<div class="container">
			<div class="breadcrumb-section">
				<ol class="breadcrumb">
					<li><a href="${path}/index.do">HOME</a></li>
					<li>MY PAGE</li>
					<li>탈퇴</li>
				</ol>						
				<h2 class="title">My Profile</h2>
			</div><!-- breadcrumb-section -->
			
			<div class="job-profile section">	
				<div class="user-profile">
					<div class="user-images">
						<img src="upload/${resume.picName}" width="100%"
							onerror="this.src='upload/default.png'" class="img-responsive">
					</div>
					<div class="user">
						<h2><a href="#">${id}</a> 님 안녕하세요!</h2>
						
						<h5>마지막 로그인 <%=accTime %></h5>
					</div>

					<div class="favorites-user">
						<div class="my-ads">
							<a href="#">${careerFavCount}<small>Favorite Job</small></a>
						</div>
						<div class="favorites">
							<a href="#">${careerFavCountCompany}<small>Favorite Corp.</small></a>
						</div>
					</div>								
				</div><!-- user-profile -->
						
				<div class="sublink">
					<jsp:include page="sublink.jsp"/>
				</div>
			</div><!-- ad-profile -->	

			<div class="profile job-profile">
				<div class="user-pro-section">
					<!-- profile-details -->
					<div class="profile-details section">
						<h2>탈퇴하기</h2>
						사용자 확인을 위해 비밀번호를 다시 입력해주십시오.
					</div>
					<!-- profile-details -->

					<!-- change-password -->
					<div class="change-password section">
						<!-- form -->
						<div class="form-group">
							<label>비밀 번호 확인</label> 
							<input type="password" class="form-control" id="passContentBtn"/>
						</div>
					</div>
					<!-- change-password -->
					<!-- preferences-settings -->
					<div class="preferences-settings section">
						<div class="buttons" align="center">
							<a class="btn" id="passBtn">탈퇴하기</a><br>
							<br>
							<p>개인정보보호법에 따라 개인정보는 탈퇴 즉시 삭제됩니다.</p>
						</div>
					</div>
					<!-- preferences-settings -->
				</div>
				<!-- user-pro-edit -->
			</div>
		</div>
		<!-- container -->
	</div>
		
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- footer -->
	</section>
	<!-- ad-profile-page -->

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