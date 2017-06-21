<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="author" content="Theme Region">
	   	<meta name="description" content="">
		<title>Jobs | Job Portal / Job Board HTML Template</title>
		 <!-- CSS -->
	    <link rel="stylesheet" href="css/bootstrap.min.css" >
	    <link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/icofont.css"> 
	    <link rel="stylesheet" href="css/slidr.css">     
	    <link rel="stylesheet" href="css/main.css">  
		<link id="preset" rel="stylesheet" href="css/presets/preset1.css">	
	    <link rel="stylesheet" href="css/responsive.css?version=1">
		
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
	
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    <!-- Template Developed By ThemeRegion -->
		
		
	</head>
	<body>
		<!-- header 11-->
	<header id="header" class="clearfix">
		<!-- navbar -->
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- navbar-header -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><img class="img-responsive" src="images/logo.png" alt="Logo"></a>
				</div>
				<!-- /navbar-header -->
								
				<div class="navbar-left">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">Home</a></li>								
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">채용정보<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="job-list.jsp">List Type</a></li>
									<li><a href="job-calendar.jsp">Calendar Type</a></li>
								</ul>
							</li>							
							<li><a href="${path}/resume.do">이력서</a></li>
							<li><a href="${path}/self_intro.do">자소서관리</a></li> 
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="${path}/mypage.do?modify">회원정보 수정</a></li>
									<li><a href="${path}/mypage.do?delete">탈퇴</a></li>
									<li><a href="${path}/mypage.do?bookmark">관심기업</a></li>
									<li><a href="${path}/mypage.do?applied">지원한 기업</a></li>
									<li><a href="${path}/mypage.do?qanda">Q&A</a>									
								</ul>
							</li>
						</ul>
					</div>
				</div><!-- navbar-left -->
				<div class="nav-right">					
					<ul class="sign-in">
						<li>
							<a class="sign-in" data-toggle="modal" data-target="#myModal01">Search /</a>			
						</li>					
						<li>	
						  <!-- Trigger the modal with a button -->  
						  <a class="sign-in" data-toggle="modal" data-target="#myModal02"><i class="fa fa-user"></i>Sign in</a>
						  	<!-- Modal -->
						  	<div class="modal fade" id="myModal02" role="dialog">
						    <div class="modal-dialog">
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						        	<button type="button" class="close" data-dismiss="modal">x</button>
						        </div>
						        <div class="modal-body">
									<div class="row text-center">
									<h2>User Login</h2>
									<!-- user-login -->			
									<div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
										<div class="user-account">											
											<!-- form -->
											<form action="#">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="Username" >
												</div>
												<div class="form-group">
													<input type="password" class="form-control" placeholder="Password" >
												</div>
												<button type="submit" href="#" class="btn">Login</button>
											</form><!-- form -->							
										</div><!-- user-login -->			
									</div><!-- row --> 
						        	</div>
						        </div>
						        <div class="modal-footer">          
						        </div>
						      </div>    
						    </div>
						  	</div><!-- Modal -->	
						</li><!-- 로그인 -->						
						<li>	
						  <!-- Trigger the modal with a button -->  
						  <a class="sign-in" data-toggle="modal" data-target="#myModal03">Register</a>
						  	<!-- Modal -->
						  	<div class="modal fade" id="myModal03" role="dialog">
						    <div class="modal-dialog">
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">x</button>
						        </div>
						        <div class="modal-body">
						    		<div class="row text-center">
									<h2>Create An Account</h2>
									<!-- user-login -->			
									
										<div class="user-account job-user-account">
											<div class="tab-content">
												<div role="tabpanel" class="tab-pane active" id="find-job">
													<!-- 회원가입 -->
													
													<form method="post" action="${path}/accountList.do?method=insProc">
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Name" name="name">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="ID" name="id">
														</div>
														<div class="form-group">
															<input type="password" class="form-control" placeholder="Password" name="password">
														</div>														
														<div class="form-group">
															<input type="email" class="form-control" placeholder="E-mail" name="email">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Mobile Number" name="phone">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Address" name="address">
														</div>
														<!-- select -->																
														<select class="form-control" name="interest">
															<option value="">관심분야</option>
															<option value="웹 개발">웹 개발</option>
															<option value="소프트웨어 엔지니어">소프트웨어 엔지니어</option>
															<option value="시스템 엔지니어">시스템 엔지니어</option>
															<option value="네트워크 / 보안 / 운영">네트워크 / 보안 / 운영</option>
															<option value="모바일웹 개발">모바일웹 개발</option>
															<option value="기획">기획</option>
															<option value="IT/솔루션 영업">IT/솔루션 영업</option>
															<option value="마케팅">마케팅</option>
															<option value="소프트웨어 아키텍트">소프트웨어 아키텍트</option>
														</select><!-- select -->
														<div class="checkbox">
															<label class="pull-left checked" for="signing"><input type="checkbox" name="signing" id="signing"> 정보제공 동의여부, 미동의시 가입불가 </label>
														</div><!-- checkbox -->	
														<div align="right">
														<button type="submit" class="btn">Registration</button>
														</div>	
													</form>
												</div>
												<div role="tabpanel" class="tab-pane" id="post-job">
													<form action="#">
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Employer Name" >
														</div>
														<div class="form-group">
															<input type="email" class="form-control" placeholder="Email Id">
														</div>
														<div class="form-group">
															<input type="password" class="form-control" placeholder="Password">
														</div>
														<div class="form-group">
															<input type="password" class="form-control" placeholder="Confirm Password">
														</div>
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Contact Number">
														</div>
														<div class="checkbox">
															<label class="pull-left checked" for="signing-2"><input type="checkbox" name="signing-2" id="signing-2">By signing up for an account you agree to our Terms and Conditions</label>
														</div><!-- checkbox -->	
														<button type="submit" class="btn">Registration</button>	
													</form>
												</div>
											</div>				
										</div>
									</div><!-- user-login -->		
									
						        </div>
						        <div class="modal-footer">          
						        </div>
						      </div>    
						    </div>
						  	</div>
							</div><!-- Modal -->		
						</li><!-- 회원가입 -->
					</ul><!-- sign-in -->					
							
						  	<div class="modal fade" id="myModal01" role="dialog">
						    <div class="modal-dialog">
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">						        	
						          <button type="button" class="close" data-dismiss="modal">x</button>
						        </div>
						        <div class="modal-body">
						        <form action="#">
						         <div class="row">
								    <div class="col-sm-4">
									    <div class="dropdown category-dropdown">						
											<a data-toggle="dropdown" href="#"><span class="change-text">Job Category</span> <i class="fa fa-angle-down"></i></a>
											<ul class="dropdown-menu category-change">
												<li><a href="#">Designer</a></li>
												<li><a href="#">Programming</a></li>
												<li><a href="#">SI</a></li>
												<li><a href="#">Data Science</a></li>
												<li><a href="#">Security</a></li>
											</ul>
										</div>
								    </div>
								    <div class="col-sm-4">
								    	<!-- language-dropdown -->
										<div class="dropdown category-dropdown language-dropdown">
											<a data-toggle="dropdown" href="#"><span class="change-text">Job Location</span> <i class="fa fa-angle-down"></i></a>
											<ul class="dropdown-menu category-change language-change">
												<li><a href="#">서울</a></li>
												<li><a href="#">경기</a></li>
												<li><a href="#">그 외</a></li>
											</ul>								
										</div><!-- language-dropdown -->
								    </div>
								    <div class="col-sm-4">
								    <!-- language-dropdown -->
									<div class="dropdown category-dropdown language-dropdown">
										<a data-toggle="dropdown" href="#"><span class="change-text">Language</span> <i class="fa fa-angle-down"></i></a>
										<ul class="dropdown-menu category-change language-change">
											<li><a href="#">JAVA</a></li>
											<li><a href="#">C</a></li>
											<li><a href="#">C++</a></li>
											<li><a href="#">Python</a></li>
											<li><a href="#">Ruby</a></li>
										</ul>								
									</div><!-- language-dropdown -->	
								    </div>
								  </div>
								  <div class="row">
								    <div class="col-sm-8">
								    	<input type="text" class="form-control" placeholder="Type your key word">
								    </div>
								    <div class="col-sm-4">
								    	<button type="submit" class="btn btn-primary" value="Search">Search</button>
								    </div>
								  </div>
						        </form>								
						        </div>
						        <div class="modal-footer">          
						        </div>
						     	</div>    
							    </div>
							  	</div>
								</div>		
								<!-- Modal -->			
				</div><!-- nav-right -->	
		</nav><!-- navbar -->
	</header><!-- header -->
	<div class="modal fade" id="modal-detail" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-fullsize" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">상세 정보</h4>
                </div>
                <div class="modal-body" id="ajax-modal-detail">
            <!-- breadcrumb -->
            <!-- job-details -->
        </div>
        <!-- container -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
	
	<section class="job-bg page job-list-page container">
		<div class="list-view">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>IT</li>
				</ol><!-- breadcrumb -->						
				<h2 class="title">소프트웨어 개발자</h2>
			</div>

			<div class="banner-form banner-form-full job-list-form">
				<form action="#" method="post" name="search-form">
					<!-- category-change -->
					<div class="dropdown category-dropdown">						
						<a data-toggle="dropdown" href="#"><span class="change-text">통합 검색</span> <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu category-change">
							<li><a href="#">채용 공고</a></li>
							<li><a href="#">기업명</a></li>
						</ul>								
					</div><!-- category-change -->
				
					<input type="text" id="search" class="form-control" placeholder="키워드, 기업 이름 검색" autocomplete="off">
					<button type="submit" class="btn btn-primary" value="Search">검색</button>
				</form>
			</div><!-- banner-form -->
	
			<div class="category-info">	
				<div class="row">
					<div class="col-md-3 col-sm-4">
						<div class="accordion">
							<!-- panel-group -->
							<div class="panel-group" id="accordion">
							 	
								<!-- panel -->
								<div class="panel panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<div  class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#accordion-one">
												<h4>기업 형태<span class="pull-right"><i class="fa fa-minus"></i></span></h4>
											</a>
										</div>
									</div><!-- panel-heading -->

									<div id="accordion-one" class="panel-collapse collapse in">
										<!-- panel-body -->
										<div class="panel-body">
											<ul>
												<li><a href="#">전체<span>(129)</span></a></li>
												<li><a href="#">대기업<span>(8342)</span></a></li>
												<li><a href="#">중소기업<span>(782)</span></a></li>
												<li><a href="#">중견기업<span>(5247)</span></a></li>
												<li><a href="#">외국계<span>(634)</span></a></li>
												<li><a href="#">스타트업<span>(453)</span></a></li>
											</ul>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><a href="#">국내 공공기관<span>(289)</span></a></li>
													<li><a href="#">병원<span>(289)</span></a></li>
													<li><a href="#">기타<span>(3829)</span></a></li>
												</ul>
											</div>

										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->

								<!-- panel -->
								<div class="panel panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<div  class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#accordion-two">
												<h4> 직종<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
											</a>
										</div>
									</div><!-- panel-heading -->

									<div id="accordion-two" class="panel-collapse collapse">
										<!-- panel-body -->
										<div class="panel-body">
											<label for="field-total"><input type="checkbox" name="field-total" id="field-total"> 전체</label>
											<label for="software-engineer"><input type="checkbox" name="software-engineer" id="software-engineer"> 소프트웨어엔지니어</label>
											<label for="web-developer"><input type="checkbox" name="web-developer" id="web-developer"> 웹개발</label>
											<label for="system-engineer"><input type="checkbox" name="system-engineer" id="system-engineer"> 시스템엔지니어</label>
											<label for="network-operation"><input type="checkbox" name="network-operation" id="network-operation"> 네트워크보안/운영</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="game-development"><input type="checkbox" name="game-development" id="game-development"> 게임 개발</label></li>
													<li><label for="planning"><input type="checkbox" name="planning" id="planning"> 기획</label></li>
													<li><label for="mobile-application-development"><input type="checkbox" name="mobile-application-development" id="mobile-application-development"> 모바일앱개발</label></li>
													<li><label for="sales"><input type="checkbox" name="sales" id="sales"> 영업기획/관리지원</label></li>
													<li><label for="field-etc"><input type="checkbox" name="field-etc" id="field-etc"> 기타</label></li>
												</ul>
											</div>
											
											
										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->
								
								<!-- panel -->
								<div class="panel panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<div  class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#accordion-three">
												<h4> 지역<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
											</a>
										</div>
									</div><!-- panel-heading -->

									<div id="accordion-three" class="panel-collapse collapse">
										<!-- panel-body -->
										<div class="panel-body">
										<input type="text" placeholder="상세 지역명을 입력하세요" class="form-control">
											<label for="location-total"><input type="checkbox" name="location-total" id="location-total"> 전체</label>
											<label for="seoul"><input type="checkbox" name="seoul" id="seoul"> 서울</label>
											<label for="gyongi"><input type="checkbox" name="gyongi" id="gyongi"> 경기</label>
											<label for="incheon"><input type="checkbox" name=incheon id="incheon"> 인천</label>
											<label for="chungnam"><input type="checkbox" name="chungnam" id="chungnam"> 충남</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="daegu"><input type="checkbox" name="daegu" id="daegu"> 대구</label></li>
													<li><label for="busan"><input type="checkbox" name="busan" id="busan"> 부산</label></li>
													<li><label for="daejeon"><input type="checkbox" name="daejeon" id="daejeon"> 대전</label></li>
													<li><label for="gyeongbuk"><input type="checkbox" name="gyeongbuk" id="gyeongbuk"> 경북</label></li>
													<li><label for="gyeongnam"><input type="checkbox" name="gyeongnam" id="gyeongnam"> 경남</label></li>
													<li><label for="gangwon"><input type="checkbox" name="gangwon" id="gangwon"> 강원</label></li>
													<li><label for="location-etc"><input type="checkbox" name="location-etc" id="location-etc"> 기타</label></li>
												</ul>
											</div>
											
											
										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->
								
								<div class="panel panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<div  class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#accordion-four">
												<h4> 산업군<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
											</a>
										</div>
									</div><!-- panel-heading -->

									<div id="accordion-four" class="panel-collapse collapse">
										<!-- panel-body -->
										<div class="panel-body">
											<label for="industry-total"><input type="checkbox" name="industry-total" id="industry-total"> 전체</label>
											<label for="solution/si/erp/crm"><input type="checkbox" name="solution/si/erp/crm" id="solution/si/erp/crm">솔루션/SI/ERP/CRM</label>
											<label for="machinary/auto"><input type="checkbox" name="machinary/auto" id="machinary/auto"> 기계/설비/자동차</label>
											<label for="sales"><input type="checkbox" name="sales" id="sales"> 판매유통</label>
											<label for="game"><input type="checkbox" name="game" id="game"> 게임</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="portal/internet/content"><input type="checkbox" name="portal/internet/content" id="portal/internet/content"> 포털/인터넷/컨텐츠</label></li>
													<li><label for="electronic"><input type="checkbox" name="electronic" id="electronic"> 전기/전자/제어</label></li>
													<li><label for="chemical/energy"><input type="checkbox" name="chemical/energy" id="chemical/energy"> 석유/화학/에너지</label></li>
													<li><label for="lab/research"><input type="checkbox" name="lab/research" id="lab/research"> 연구소/컨설팅/조사</label></li>
													<li><label for="ad"><input type="checkbox" name="ad" id="ad"> 광고/홍보/전시</label></li>
													<li><label for="semiconductor"><input type="checkbox" name="semiconductor" id="semiconductor"> 반도체/광학/디스플레이</label></li>
													<li><label for="industry-etc"><input type="checkbox" name="industry-etc" id="industry-etc"> 기타</label></li>
												</ul>
											</div>
											
											
										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->
								
								<div class="panel panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<div  class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#accordion-five">
												<h4> 고용형태<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
											</a>
										</div>
									</div><!-- panel-heading -->

									<div id="accordion-five" class="panel-collapse collapse">
										<!-- panel-body -->
										<div class="panel-body">
											<label for="hiretype-total"><input type="checkbox" name="hiretype-total" id="hiretype-total"> 전체</label>
											<label for="full-time"><input type="checkbox" name="full-time" id="full-time">정규직</label>
											<label for="part-time"><input type="checkbox" name="part-time" id="part-time"> 계약직</label>
											<label for="intern"><input type="checkbox" name="intern" id="intern"> 인턴</label>
											<label for="freelancer"><input type="checkbox" name="freelancer" id="freelancer"> 프리랜서</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="arbeit"><input type="checkbox" name="arbeit" id="arbeit"> 아르바이트</label></li>
													<li><label for="hiretype-etc"><input type="checkbox" name="hiretype-etc" id="hiretype-etc"> 기타</label></li>
												</ul>
											</div>
											
											
										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->
								
								<!-- panel -->
								<div class="panel panel-default panel-faq">
									<!-- panel-heading -->
									<div class="panel-heading">
										<div class="panel-title"></div>
										<a data-toggle="collapse" data-parent="#accordion" href="#accordion-six">
											<h4>기업<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
										</a>
									</div><!-- panel-heading -->

									<div id="accordion-six" class="panel-collapse collapse">
										<!-- panel-body -->
										<div class="panel-body">
											<input type="text" placeholder="Search Company" class="form-control">
											<label for="apple"><input type="checkbox" name="apple" id="apple"> Apple</label>
											<label for="dropbox"><input type="checkbox" name="dropbox" id="dropbox"> Dropbox</label>
											<label for="micromax"><input type="checkbox" name="micromax" id="micromax"> Micromax</label>
											<label for="nokia"><input type="checkbox" name="nokia" id="nokia"> Nokia</label>
											<label for="microsoft"><input type="checkbox" name="microsoft" id="microsoft"> Microsoft</label>
											<label for="samsung"><input type="checkbox" name="samsung" id="samsung"> Samsung</label>
											<div class="see-more">
												<button type="button" class="show-more two"><i class="fa fa-plus-square-o" aria-hidden="true"></i>See More</button>
												<div class="more-category two">
													<label for="blackBerry"><input type="checkbox" name="blackBerry" id="blackBerry">BlackBerry</label>
													<label for="motorola"><input type="checkbox" name="motorola" id="motorola">Motorola</label>
													<label for="lenovo"><input type="checkbox" name="lenovo" id="lenovo">Lenovo</label>
												</div>
											</div>											
										</div><!-- panel-body -->
									</div>
								</div> <!-- panel -->
							 </div><!-- panel-group -->
						</div>
					</div><!-- accordion-->
					
					
					

					<!-- recommended-ads -->
					<div class="col-sm-8 col-md-7">				
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
							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/1.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>
									<input type="hidden" name="companyid" value="${company.companyid }"/>
									<div class="ad-info" style="width:80%">
										<h3><span><a onclick='$("#modal-detail").modal("show")'>${company.companyname }</a><a href="#items-${status.count}" data-toggle="collapse"> <i class="fa fa-plus" ></i></a></span></h3>
										<h5><a class="title">${company.info }</a></h5>
										<div class="ad-meta">
										<div class="collapse in" id="items-${status.count }">
										<c:forEach var="career" items="${company.careers }">
											<div class="position-item">
												<span><a href="job-details.html">${career.title }</a></span>
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>서울 판교</a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>정규직</a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>2,800 - 5,500만원 / 경력</a></li>
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
							<button id="test">클릭!!</button>
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

					<div class="col-md-2 hidden-xs hidden-sm">
						<div class="advertisement text-center">
							<a href="#"><img src="images/ads/1.jpg" alt="" class="img-responsive"></a>
						</div>
					</div>
				</div>
			</div>
		</div><!-- container -->
	</section><!-- main -->
	
	
	
	<!-- footer -->
	<footer id="footer" class="clearfix">      

        <div class="footer-bottom clearfix text-center">
            <div class="container">
                <p>(주)앵커리어(대표: 박수상) | 개인정보보호관리자: 박수상
    서울시 강남구 역삼로3길 13 건암빌딩 202호 | 전화번호: 02-6264-7582
사업자등록 : 138-87-00058 | 직업정보제공사업 : J1200020160017 | 통신판매업 : 2016-서울강남-00784
Copyright Anchoreer Co., Inc. All rights reserved.</p>
                <p>Copyright &copy; <a href="#">Jobs</a> 2017. Developed by <a href="http://themeregion.com/">ThemeRegion</a></p>
            </div>
        </div><!-- footer-bottom -->
    </footer><!-- footer -->
	
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
	 <script type="text/javascript">
    $(document).ready(function(){
    	$("#test").click(function(){
    		var url="${path}/job-list.do?method=job-detail";
    		var params="companyid="+$("input[name=companyid]").val();
    		$.ajax({
    		type:"POST",
    		url:"${path}/job-list.do?method=job-detail",
    		data:params,
    		success:function(args){
    			$("#ajax-modal-detail").html(args);
    		}
    		}
    		)
    	})
    })
    </script>
  </body>
</html>