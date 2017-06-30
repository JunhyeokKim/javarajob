<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Theme Region">
<meta name="description" content="">

<title>채용공고 | JAVARAJOB!!</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">

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
<style>
#temp01 {
	padding-left: 10%;
	padding-right: 10%;
}

#temp02 {
	display: inline;
}
</style>
</head>
<body>
	<!-- header 11-->
	<jsp:include page="../navHeader.jsp"/>
	<!-- header -->
	<div class="banner-job">
		<div class="banner-overlay"></div>
		<div class="container text-center">
			<h1 class="title">The Easiest Way to Get Your New Job</h1>
			<h3>We offer 12000 jobs vacation right now</h3>
			<div class="section cta cta-two text-center">
				<div class="row">
					<div class="col-sm-4">
						<div class="single-cta">
							<div class="cta-icon icon-jobs">
								<img src="images/icon/31.png" alt="Icon" class="img-responsive">
							</div>
							<!-- cta-icon -->
							<h3>3,412</h3>
							<h4>Live Jobs</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
						</div>
					</div>
					<!-- single-cta -->

					<div class="col-sm-4">
						<div class="single-cta">
							<!-- cta-icon -->
							<div class="cta-icon icon-company">
								<img src="images/icon/32.png" alt="Icon" class="img-responsive">
							</div>
							<!-- cta-icon -->
							<h3>12,043</h3>
							<h4>Total Company</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
						</div>
					</div>
					<!-- single-cta -->

					<div class="col-sm-4">
						<div class="single-cta">
							<div class="cta-icon icon-candidate">
								<img src="images/icon/33.png" alt="Icon" class="img-responsive">
							</div>
							<!-- cta-icon -->
							<h3>5,798,298</h3>
							<h4>Total Candidate</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
						</div>
					</div>
					<!-- single-cta -->
				</div>
				<!-- row -->
			</div>
			<!-- cta -->


		</div>
		<!-- container -->
	</div>
	<!-- banner-section -->
	
	<div class="page">
		<br>
		
		<div class="row" id="temp01">
			<!--  -->
			<div class="col-sm-2">
				<div class="section category-items job-category-items  text-center">
					<a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/6.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Design</span>
							<span class="category-quantity">(76212)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/3.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Engineer</span>
							<span class="category-quantity">(212)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/5.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Develop</span>
							<span class="category-quantity">(1298)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/7.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Research</span>
							<span class="category-quantity">(1298)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/1.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Finance</span>
							<span class="category-quantity">(1298)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/2.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Training</span>
							<span class="category-quantity">(76212)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/3.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Engineer</span>
							<span class="category-quantity">(212)</span>
						</div>
					</a><br> <a href="job-list.jsp">
						<div class="category-icon">
							<img src="images/icon/5.png" alt="images" class="img-responsive"
								id="temp02"> <span class="category-title" id="temp02">Develop</span>
							<span class="category-quantity">(1298)</span>
						</div>
					</a><br>
				</div>
				<!-- category ad -->
			</div>
			<!-- 11 -->
			<div class="col-sm-10">
			
			
			
				
			
			<!-- recommended-ads -->
			<!-- class="col-sm-8 col-md-7" -->
					<div >				
						<div class="section job-list-item">
							<div class="featured-top">
								<h4>검색 결과 (65), 현재 1 페이지(1-25)</h4>
								<div class="dropdown pull-right">
									<div class="dropdown category-dropdown">
										<h5>정렬 기준:</h5>						
										<a data-toggle="dropdown" href="#"><span class="change-text">최근 등록 순</span><i class="fa fa-caret-square-o-down"></i></a>
										<ul class="dropdown-menu category-change">
											<li><a href="#">최근 등록 순 </a></li>
											<li><a href="#">인기 순</a></li>
										</ul>								
									</div><!-- category-change -->		
								</div>							
							</div><!-- featured-top -->	
							
							
							<c:forEach var="company" varStatus="status" items="${companyList }">
							<div class="job-ad-item text-center">
								<div class="item-info">
									<!-- item-image -->
									<!-- 
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/1.png" alt="Image" class="img-responsive"></a>
										</div>
									</div>
									 -->
									<input type="hidden" name="companyid" value="${company.companyid }"/>
									<div class="ad-info" style="width:80%">
									<!-- 
										<h3><span><a class="call-ajax">${company.companyname }<input type="hidden" value="${company.companyid }"/></a><a href="#items-${status.count}" data-toggle="collapse"> <i class="fa fa-plus" ></i></a></span></h3>
										<h5><a class="title">${company.shortinfo }</a></h5>
									 -->
										<div class="ad-meta">
										<div class="collapse in" id="items-${status.count }">
									 	
										<c:forEach var="career" items="${company.careers }">
											<div class="position-item">
												<span><a href="job-details.html"><h3>${career.title }</h3><h2>@${company.companyname }</h2></a></span>
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>${career.location }</a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>${career.employmenttype }</a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>${career.salary }만원</a></li>
												</ul>
											</div>
										</c:forEach>
										
										</div>
										</div><!-- ad-meta -->
									</div><!-- ad-info -->
								</div><!-- item-info -->
								<div class="col-xs-offset-2">								
								</div>
							</div>
							</c:forEach><!-- job-ad-item -->
							<div id="result" style="width:200px; heigh:200px">
							</div>
							
							

							<div class="ad-section text-center">
								<a href="#"><img src="images/ads/3.jpg" alt="Image" class="img-responsive"></a>
							</div><!-- ad-section --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item -->							
	
							
							<!-- pagination  -->
							<div class="text-center">
								<ul class="pagination ">
									<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
									<li><a href="#">1</a></li>
									<li class="active"><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">...</a></li>
									<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
								</ul>
							</div><!-- pagination  -->					
						</div>
					</div><!-- recommended-ads -->
			
			
			</div><!-- 11 -->
		</div>
	</div><!-- page -->
	
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
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