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

    <title>JAVARAJOB | MY PAGE | 개인정보 수정</title>

   <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/icofont.css"> 
    <link rel="stylesheet" href="css/slidr.css">     
    <link rel="stylesheet" href="css/main.css?v=1">  
	<link id="preset" rel="stylesheet" href="css/presets/preset1.css">	
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/table_kdb.css">
    <style type="text/css">
    	.form-control{
    		color: black;
    	}
    </style>
	
	<!-- font -->
	<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700' rel='stylesheet' type='text/css'>

	<!-- icons -->
	<link rel="icon" href="images/ico/favicon.ico">	
    <link rel="apple-touch-icon" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon" sizes="57x57" href="images/ico/apple-touch-icon-57-precomposed.png">
    <!-- icons -->

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
					<li>회원정보 수정</li>
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
						<h2>회원정보 수정</h2>
						
						<form method="post" action="${path}/account.do?method=uptProcGuest2">
							<div class="form-group">
								<label>이름</label>
								<input type="text" class="form-control" value="${mem.name}" name="name"/>
							</div>
							
							<div class="form-group">
								<label>ID</label>
								<input type="text" class="form-control" value="${mem.id}" disabled="disabled"/>
							</div>

							<div class="form-group">
								<label>새 비밀번호</label>
								<input type="text" class="form-control" value="${mem.password}" name="password"/>
							</div>							
							
							<div class="form-group">
								<label>E-mail</label>
								<input type="text" class="form-control" value="${mem.email}" name="email"/>
							</div>

							<div class="form-group">
								<label>Phone</label>
								<input type="text" class="form-control" value="${mem.phone}" name="phone"/>
							</div>

							<div class="form-group">
								<label>주소</label>
								<input type="text" class="form-control" value="${mem.address}" name="address"/>
							</div>
							
							<div class="form-group">
								<label>관심분야</label>
								<input type="text" class="form-control" value="${mem.interest}" name="interest"/>
							</div>
							
							<div class="form-group">
								<label>가입일자</label>
								<input type="text" class="form-control" value="${mem.regdate}" disabled="disabled"/>
							</div>	
							<div align="center">
								<input type="submit" class="btn btn-hover-preset" value="저장"/>
							</div>
							</form>	
							<div class="preferences-settings section">
								<div class="buttons" align="center">									
								</div>												
							</div><!-- preferences-settings -->
									
					
					
					</div><!-- profile-details -->
					
					<!-- preferences-settings -->
					
				</div><!-- user-pro-edit -->
			</div>				
		</div><!-- container -->
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- footer -->
	
	</section><!-- ad-profile-page -->
	
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