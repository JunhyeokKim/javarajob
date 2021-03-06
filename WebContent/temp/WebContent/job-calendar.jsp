<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
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
    <link rel='stylesheet' href='css/fullcalendar.css' />
	
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
					<a class="navbar-brand" href="index.html"><img class="img-responsive" src="images/logo.png" alt="Logo"></a>
				</div>
				<!-- /navbar-header -->
								
				<div class="navbar-left">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html">Home</a></li>
							<li class="dropdown active"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">채용정보<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="job-list.html">List Type</a></li>
									<li><a href="job-list2.html">Calendar Type</a></li>
								</ul>
							</li>
							<li><a href="details.html">이력서</a></li>
							<li><a href="resume.html">자소서관리</a></li> 
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
									<div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
										<div class="user-account job-user-account">
											<div class="tab-content">
												<div role="tabpanel" class="tab-pane active" id="find-job">
													<form action="#">
														<div class="form-group">
															<input type="text" class="form-control" placeholder="Name" >
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
															<input type="text" class="form-control" placeholder="Mobile Number">
														</div>
														<!-- select -->
														<select class="form-control">
															<option value="#">Select City</option>
															<option value="#">London UK</option>
															<option value="#">Newyork, USA</option>
															<option value="#">Seoul, Korea</option>
															<option value="#">Beijing, China</option>
														</select><!-- select -->
														<div class="checkbox">
															<label class="pull-left checked" for="signing"><input type="checkbox" name="signing" id="signing"> By signing up for an account you agree to our Terms and Conditions </label>
														</div><!-- checkbox -->	
														<button type="submit" class="btn">Registration</button>	
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
									</div><!-- row -->
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
		</nav><!-- navbar -->
	</header><!-- header -->
	
	<section class="job-bg page job-list-page">
		<div class="container-fluid">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>Engineer/Architects</li>
				</ol><!-- breadcrumb -->						
				<h2 class="title">Calendar</h2>
			</div>
			<div class="container-fluid section job-list-item">	
			<div class="row">
			<!--  TODO: filter 추가  -->
			</div>
					<div class="calendar-left hidden-xs">
						<div id="calendar-mini"></div>
					</div>
					<div class="calendar-right container-fluid">
            			<div id="calendar" style="height:500px"></div>
            		</div>
		</div><!-- container -->
		</div>
	</section><!-- main -->
	
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
	<script src='js/jquery.min.js'></script>
	<script src='js/moment.min.js'></script>
	<script src='js/locale/ko.js'></script>
	<script src='js/fullcalendar.js'></script>
	<script src='js/calendar.js'></script>
	
  </body>
</html>