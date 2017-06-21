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

    <title>MY PAGE | 개인정보 수정</title>

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
							<li ><a href="index.jsp">Home</a></li>
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">채용정보<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="job-list.html">List Type</a></li>
									<li><a href="job-list2.html">Calendar Type</a></li>
								</ul>
							</li>
							<li><a href="details.html">이력서</a></li>
							<li><a href="resume.html">자소서관리</a></li> 
							<li class="dropdown active"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="${path}/accountList.do?method=uptProcGuest1">회원정보 수정</a></li>
									<li><a href="${path}/accountList.do?method=delProcGuest1">탈퇴</a></li>
									<li><a href="bookmark.html">관심기업</a></li>
									<li><a href="applied-job.html">지원한 기업</a></li>
									<li><a href="qanda.html">Q&A</a></li>									
								</ul>
							</li>
						</ul>
					</div>
				</div><!-- navbar-left -->
				<div class="nav-right">					
					<ul class="sign-in">
						<li>
							<a class="sign-in" data-toggle="modal" data-target="#myModal01">Search</a> 			
						</li>					
						
						<!-- 로그인 -->
						<c:if test="${empty id}">
								<li>	
								  <!-- Trigger the modal with a button -->  
								  <a class="sign-in" data-toggle="modal" data-target="#myModal02">/ Sign in</a>
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
													<form method="post" action="${path}/accountList.do?method=signIn">
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Username" name="id">
														</div>
														<div class="form-group">
															<input type="password" class="form-control" placeholder="Password" name="password">
														</div>
														<button type="submit" class="btn">Login</button>
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
						</c:if>
						<c:if test="${not empty id}">
							<br><li>
								<a class="sign-in"><i class="fa fa-user"></i>${id}</a>			
							</li>
							<li>
								<a class="sign-in" id="signOut">Sign out</a>			
							</li>	
						</c:if>
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
					<li class="active"><a href="profile-details.jsp">회원정보 수정</a></li>
					<li><a href="${path}/accountList.do?method=delProcGuest1">탈퇴</a></li>
					<li><a href="bookmark.html">관심기업</a></li>
					<li><a href="applied-job.html">지원한 기업</a></li>
					<li><a href="qanda.html">Q&A</a></li>
				</ul>
			</div><!-- ad-profile -->	

			<div class="profile job-profile">
				<div class="user-pro-section">
					<!-- profile-details -->
					<div class="profile-details section">
						<h2>회원정보 수정</h2>
						
						<form method="post" action="${path}/accountList.do?method=uptProcGuest2">
							<div class="form-group">
								<label>이름</label>
								<a class="form-control"><h5>${mem.name}</h5></a>
							</div>
							
							<div class="form-group">
								<label>ID</label>
								<a class="form-control"><h5>${mem.id}</h5></a><input type="hidden" value="${mem.id}" name="id"/>
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
								<a class="form-control"><h5>${mem.regdate}</h5></a>
							</div>	
							<input type="submit" value="저장"/>
							</form>	
							<div class="preferences-settings section">
								<div class="buttons" align="center">									
									
									<!-- 
									<a href="#" class="btn">저장</a>
									<a href="#" class="btn cancle">취소</a>
									 -->
								</div>												
							</div><!-- preferences-settings -->
									
					
					
					</div><!-- profile-details -->
					
					<!-- preferences-settings -->
					
				</div><!-- user-pro-edit -->
			</div>				
		</div><!-- container -->
	</section><!-- ad-profile-page -->
	
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