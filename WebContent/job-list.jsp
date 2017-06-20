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
	    <link rel="stylesheet" href="css/responsive.css">
		
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
							<li><a href="details.html">이력서</a></li>
							<li><a href="resume.jsp">자소서관리</a></li> 
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="profile-details.html">회원정보 수정</a></li>
									<li><a href="bookmark.html">관심기업</a></li>
									<li><a href="applied-job.html">지원한 기업</a></li>
									<li><a href="delete-account.html">Q&A</a></li>									
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
                <div class="modal-body">
            <!-- breadcrumb -->
            <div class="job-details">
            <div class="breadcrumb-section">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="job-list.jsp">소프트웨어 개발자</a></li>
                    <li>UI & UX 디자인</li>
                </ol>
                <!-- breadcrumb -->
                <h2 class="title">광고차단 SW 개발</h2>
            </div>
                <div class="section job-ad-item">
                    <div class="item-info">
                        <div class="item-image-box">
                            <div class="item-image">
                                <img src="images/job/4.png" alt="Image" class="img-responsive">
                            </div>
                            <!-- item-image -->
                        </div>
                        <div class="ad-info">
                            <span><span><a href="#" class="title">네오 컨버전스</a></span></span>
                            <div class="ad-meta">
                                <p>언제 어디서나 즐거운 미디어 세상을 만드는 IPTV & Mobile</p>
                                <ul>
                                    <li><a href="#"><i class="fa fa-map-marker"
                                            aria-hidden="true"></i>서울 판교</a></li>
                                    <li><a href="#"><i class="fa fa-clock-o"
                                            aria-hidden="true"></i>정규직</a></li>
                                    <li><i class="fa fa-money" aria-hidden="true"></i>2,800 -
                                        5,500만원 / 경력</li>
                                    <li><a href="#"><i class="fa fa-tags"
                                            aria-hidden="true"></i>모바일서비스 ∙ 웹서비스 ∙ 마케팅 ∙ 소프트웨어 ∙ IT</a></li>
                                    <li><i class="fa fa-hourglass-start" aria-hidden="true"></i>마감
                                        기간: 2017-06-28</li>
                                </ul>
                            </div>
                            <!-- ad-meta -->
                        </div>
                        <!-- ad-info -->
                    </div>
                    <!-- item-info -->
                    <div class="social-media">
                        <div class="button">
                            <a href="#" class="btn btn-primary"><i
                                class="fa fa-briefcase" aria-hidden="true"></i>홈페이지</a> <a
                                href="#" class="btn btn-primary bookmark"><i
                                class="fa fa-bookmark-o" aria-hidden="true"></i>스크랩</a>
                        </div>
                        <ul class="share-social">
                            <li>공유하기</li>
                            <li><a href="#"><i class="fa fa-facebook-official"
                                    aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- job-ad-item -->

                <div class="job-details-info">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="section job-description description-info">
                                <div>
                                    <h1>기업 소개</h1>
                                    <p>
                                        <span class="description-detail">네오컨버전스(주)는 2010년 5월 "언제 어디서나 즐거운 콘텐츠"라는 비전 아래 다양한
                                            Mobile Phone 과 IPTV Settop-Box, Smart TV 등 에서 미디어 서비스 및 게임 등을
                                            즐길 수 있도록 연구 개발해 온 기술중심의 젊은 기업입니다. "언제 어디서나 즐거운 콘텐츠"라는 비젼은
                                            물리적으로 다양한 Device에 공간적으로 사용자가 어디에 있든 콘텐츠를 즐겁게 사용할 수 있도록 하자는
                                            것입니다. 당사는 꿈, 재미, 의미를 중요시하며, 구성원 모두가 노력하여 이 사회에 기여 할 수 있는 작지만
                                            큰 회사가 되고자 합니다. IPTV, Smart Phone 관련 다년간 기술 개발한 사람들이 모여 언제
                                            어디서나 콘텐츠를 즐기는 세상을 만들기 위해 노력하고 있습니다. IPTV 서비스 사업자용 IPTV 시스템 개발
                                            및 공급, 셋톱박스용 SW 개발을 비롯하여, 기존 IPTV를 모바일로 확장하는 N-Screen 서비스를 위한
                                            시스템 및 스마트폰용 SW를 개발하였으며, 케이블 방송 사업자용 N-Screen 서비스를 위한 시스템 및
                                            스마트폰용 SW 또한 개발하여 왔습니다. 많은 다양한 사람들이 여러 디바이스 스마트폰, 스마트패드, IPTV,
                                            스마트TV 를 통해 언제 어디서나 즐길 수 있는 게임 등을 비롯한 App 개발 및 기술 개발에도 힘쓰고
                                            있습니다. 또한, HTML5을 비롯하여 UX 개선을 위한 모션/음성 인식, 다양한 기기간 연동 및 제어를 위한
                                            Android Open Accessory 등 보다 편리하고 즐거운 세상을 만들어가기 위한 연구도 지속하고
                                            있습니다. 끊임없는 연구와 고객서비스의 품질향상을 통하여 '고객 만족'을 뛰어넘어 '고객감동'을 제공해
                                            드리고자 노력하고 있습니다. 나아가 고객이 필요로 하는 새로운 서비스를 발굴하고 개척하여 편리한 미디어 세상을
                                            실현하는 것이 저희 회사의 꿈이자 비전입니다. </span>
                                    </p>
                                </div>
                                <div class="responsibilities">
                                    <h1>Key Responsibilities:</h1>
                                    <span class="description-detail"><p>-Execute all visual design stages of website design from
                                        concept to final hand-off to development-Create print
                                        advertisements, social media advertisements, client collateral
                                        & digital resizes according to Client demands With direction
                                        of the Creative team, input into new design ideas for client
                                        branding-Update & keep all agency collateral materials,
                                        including keeping records of Client's logos, fonts, images,
                                        etc.</p></span>
                                </div>
                                <div class="positions">
                                <h4>채용 정보</h4>
                                    <div class="job-ad-item">
                                            <div class="ad-info">
                                                <div class="ad-meta">
                                                    <div class="position-item container">
                                                        <div class="position-title row" >
                                                            <span><a href="#item-body1" data-toggle="collapse">Android 개발자</a></span>
                                                        </div>
                                                            <div class="col-xs-12 col-sm-6">
                                                        <ul>
						                                    <li><a href="#"><i class="fa fa-map-marker"
						                                            aria-hidden="true"></i>서울 판교</a></li>
						                                    <li><a href="#"><i class="fa fa-clock-o"
						                                            aria-hidden="true"></i>정규직</a></li>
						                                    <li><i class="fa fa-money" aria-hidden="true"></i>2,800 -
						                                        5,500만원 / 경력</li>
						                                </ul>
						                                </div>
						                                <div class="social-media col-xs-12 col-sm-4">
                                                            <div class="button">
                                                                <a href="#" class="btn btn-primary"><i
                                                                    class="fa fa-briefcase" aria-hidden="true"></i>홈페이지 지원</a> <a
                                                                    href="#" class="btn btn-primary bookmark"><i
                                                                    class="fa fa-bookmark-o" aria-hidden="true"></i>스크랩</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div id="item-body1" class="collapse position-detail description-detail">
                                                            <h3>주요 업무</h3>
                                                            <p> - Angular.js 를 이용한 Web Application 개발 <br>
																- Node.js를 이용한 Web Application 개발 <br>
																- 클라우드 환경에서 node.js를 이용한 서버 개발<br></p>
                                                            <h3>자격 요건</h3>
                                                            <p>
																핵심 직무 역량<br>
																- 신입~경력 4년 이하<br> 
																- SpringFramework 기반의 웹어플리케이션 개발/운영 가능자<br> 
																- Oracle, PostgreSql, MongoDB 등 경험자 <br>
																- Javascript Framework Based 개발 경험자(위의 3가지 중 1개이상 해당시 지원자격 요건 성립)<br>
																우대 사항<br>
																- 컴퓨터 관련 전공자 (비전공자도 실력있다면 지원 가능)<br> 
																- Cloud를 활용한 개발/운영 경험자 <br>
																- 오픈소스를 활용한 개발 경험자 <br>
																- 장애인, 보훈대상자는 관련법에 근거하여 우대합니다.<br>
                                                            </p>
                                                        </div>
                                                    <div class="position-item container">
                                                        <div class="position-title row">
                                                            <span><a href="job-details.html">server 개발자</a></span>
                                                        </div>
                                                            <div class="col-xs-12 col-sm-6">
                                                        <ul>
						                                    <li><a href="#"><i class="fa fa-map-marker"
						                                            aria-hidden="true"></i>서울 판교</a></li>
						                                    <li><a href="#"><i class="fa fa-clock-o"
						                                            aria-hidden="true"></i>정규직</a></li>
						                                    <li><i class="fa fa-money" aria-hidden="true"></i>2,800 -
						                                        5,500만원 / 경력</li>
						                                </ul>
						                                </div>
						                                <div class="social-media col-xs-12 col-sm-4">
                                                            <div class="button">
                                                                <a href="#" class="btn btn-primary"><i
                                                                    class="fa fa-briefcase" aria-hidden="true"></i>홈페이지 지원</a> <a
                                                                    href="#" class="btn btn-primary bookmark"><i
                                                                    class="fa fa-bookmark-o" aria-hidden="true"></i>스크랩</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- ad-meta -->
                                            </div>
                                            <!-- ad-info -->
                                        <!-- item-info -->
                                    </div>
                                    <!-- job-ad-item -->
                                <div class="requirements">
                                    <h1>자격 요건</h1>
                                    <ul>
                                        <li>Bachelor's Degree</li>
                                        <li>2-5 years of relevant experience ( or equivalent
                                            educational experience)</li>
                                        <li>Experience developing in Wordpress and other web
                                            design platforms</li>
                                        <li>HTML, CSS and JavaScript experience a plus</li>
                                        <li>In depth knowledge & technical experience of
                                            Photoshop, Illustrator, InDesign, Adobe PDF, Keynote,
                                            PowerPoint, Microsoft Word & Excel</li>
                                        <li>Exceptional eye for design, deep understanding of
                                            creativity and ability to recognize fresh approaches to
                                            Advertising</li>
                                        <li>Must be fluent in Spanish; working written and spoken
                                            proficiency</li>
                                        <li>**All applicants must be eligible to work in the U.S.
                                            without sponsorship</li>
                                    </ul>
                                </div>
                            </div>
                                <div class="requirements">
                                    <h1>자격 요건</h1>
                                    <ul>
                                        <li>Bachelor's Degree</li>
                                        <li>2-5 years of relevant experience ( or equivalent
                                            educational experience)</li>
                                        <li>Experience developing in Wordpress and other web
                                            design platforms</li>
                                        <li>HTML, CSS and JavaScript experience a plus</li>
                                        <li>In depth knowledge & technical experience of
                                            Photoshop, Illustrator, InDesign, Adobe PDF, Keynote,
                                            PowerPoint, Microsoft Word & Excel</li>
                                        <li>Exceptional eye for design, deep understanding of
                                            creativity and ability to recognize fresh approaches to
                                            Advertising</li>
                                        <li>Must be fluent in Spanish; working written and spoken
                                            proficiency</li>
                                        <li>**All applicants must be eligible to work in the U.S.
                                            without sponsorship</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="section job-short-info">
                                <h1>Short Info</h1>
                                <ul>
                                    <li><span class="icon"><i class="fa fa-bolt"
                                            aria-hidden="true"></i></span>Posted: 1 day ago</li>
                                    <li><span class="icon"><i class="fa fa-user-plus"
                                            aria-hidden="true"></i></span> Job poster: <a href="#">Lance
                                            Ladaga</a></li>
                                    <li><span class="icon"><i class="fa fa-industry"
                                            aria-hidden="true"></i></span>Industry: <a href="#">Marketing
                                            and Advertising</a></li>
                                    <li><span class="icon"><i class="fa fa-line-chart"
                                            aria-hidden="true"></i></span>Experience: <a href="#">Entry
                                            level</a></li>
                                    <li><span class="icon"><i class="fa fa-key"
                                            aria-hidden="true"></i></span>Job function: Advertising,Design,
                                        Art/Creative</li>
                                </ul>
                            </div>
                            <div class="section company-info">
                                <h1>기업 정보</h1>
                                <ul>
                                    <li>기업명: <a href="#">Dropbox Inc</a></li>
                                    <li>웹사이트: <a href="#">www.dropbox.com</a></li>
                                    <li>본사: London, United Kingdom</li>
                                    <li>사원수: 2k Employee</li>
                                    <li>기업형태: <a href="#">www.dropbox.com</a></li>
                                    <li>산업군: <a href="#">Technology</a></li>
                                    <li>매출액: <a href="#">Technology</a></li>
                                    <li>연락처: +1234 567 8910</li>
                                    <li>Email: <a href="#">info@dropbox.com</a></li>
                                </ul>
                                <ul class="share-social">
                                    <li><a href="#"><i class="fa fa-facebook-official"
                                            aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter-square"
                                            aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus-square"
                                            aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin-square"
                                            aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- row -->
                </div>
                <!-- job-details-info -->
            </div>
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
						<a data-toggle="dropdown" href="#"><span class="change-text">채용 분야</span> <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu category-change">
							<li><a href="#">Customer Service</a></li>
							<li><a href="#">Software Engineer</a></li>
							<li><a href="#">Program Development</a></li>
							<li><a href="#">Project Manager</a></li>
							<li><a href="#">Graphics Designer</a></li>
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




							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/1.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>
									<div class="ad-info">
										<h3><span><a onclick='$("#modal-detail").modal("show")'>네오 컨버전스</a><a href="#items-1" data-toggle="collapse"> <i class="fa fa-plus" ></i></a></span></h3>
										<h5><a class="title">언제 어디서나 즐거운 세상을 만드는 IP internet 서비스</a></h5>
										<div class="ad-meta">
										<div class="collapse in" id="items-1">
											<div class="position-item">
												<span><a href="job-details.html">Android 개발자</a></span>
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>서울 판교</a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>정규직</a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>2,800 - 5,500만원 / 경력</a></li>
												</ul>
											</div>
											<div class="position-item">
												<span><a href="job-details.html">server 개발자</a></span>
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>서울 판교</a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>정규직</a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>2,800 - 5,500만원 / 경력</a></li>
												</ul>
											</div>
											</div>
										</div><!-- ad-meta -->
									</div><!-- ad-info -->
								</div><!-- item-info -->
								<div class="col-xs-offset-2">
								</div>
							</div><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item --><!-- job-ad-item -->	

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/10.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>
									<div class="ad-info">
										<span><a href="job-details.html" class="title">Program Development</a> @ <a href="#">Adidus</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->

							<div class="ad-section text-center">
								<a href="#"><img src="images/ads/3.jpg" alt="Image" class="img-responsive"></a>
							</div><!-- ad-section -->							

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/11.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">CTO</a> @ <a href="#">IBM</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/12.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">Human Resource Manager</a> @ <a href="#">BP</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/13.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">Industrial Manager</a> @ <a href="#">SaraLee</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/14.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">Software Engineer</a> @ <a href="#">Daman</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/15.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">Program Development</a> @ <a href="#">Helix</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->	

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/16.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">CTO</a> @ <a href="#">Dutrigo</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/17.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">Software Engineer</a> @ <a href="#">Costa Rica</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->	

							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/18.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>

									<div class="ad-info">
										<span><a href="job-details.html" class="title">Program Development</a> @ <a href="#">HSBC</a></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>San Francisco, CA, US </a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Full Time</a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>$25,000 - $35,000</a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div><!-- item-info -->
							</div><!-- job-ad-item -->							
	
							
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
  </body>
</html>