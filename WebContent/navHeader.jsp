<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
	<!-- JS -->
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	  	<script type="text/javascript">
			$(document).ready(function(){
				$("#signOut").click(function(){
					$(location).attr("href","${path}/account.do?method=signOut");
				})
				
				$("#regBtn").click(function(){
					var validateCheck = validate();
					if(validateCheck) $("#registration").submit();
				})
			});
			
			// 정규표현식
			var reg_name= /^[가-힣]{2,20}$/;											// 이름. 한글만
			var reg_id= /^[a-z0-9]{3,20}$/;											// 영,숫자 3~20
			var reg_pw= /^(?=.*[a-zA-z])(?=.*[!@#$%^&*+=-])(?=.*[0-9]).{6,20}$/;	// 8~20자 한,영,특,숫
			var reg_phone= /^(01[016789]{1}-?([0-9]{3,4})-?([0-9]){4})$/;			// 핸드폰 번호
			
			function validate() {
				var name = $('input[name=name]').val();								// 이름
				var uid = $("#userIddd").val();										// id
				var password = $("#pass").val();									// password
				var phone = $("input[name=phone]").val();							// 핸드폰
				
				var checkk = false;													// return 값
				
				console.log("이름 : "+name);
				console.log("id : "+uid);
				console.log("pw : "+password);
				console.log("phone : "+phone);
	
				if(reg_name.test(name)==false){
					alert("잘못된 이름 형식입니다.");
					$(this).val("");
					$(this).focus();
				}else if(reg_id.test(uid)==false){
					alert("잘못된 ID 형식입니다.");
					$(this).val("");
					$(this).focus();
				}else if(reg_pw.test(password)==false){
					alert("잘못된 비밀번호 형식입니다.\n특수문자는 !,@,#,$,%,^,&,*,+,=,-만 가능합니다.");
					$(this).val("");
					$(this).focus();
				}else if(reg_phone.test(phone)==false){
					alert("잘못된 휴대전화 번호 형식입니다.");
					$(this).val("");
					$(this).focus();
				} else {
					checkk = true;
					console.log(checkk);
				}
				
				return checkk;
			}
			
	  	</script>
	<!-- JS -->
  	
	</head>
	<body>
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
					<a class="navbar-brand" href="${path}/index.do"><img class="img-responsive" src="images/logo.png" alt="Logo"></a>
				</div>
				<!-- /navbar-header -->
								
				<div class="navbar-left">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="${path}/index.do">Home</a></li>								
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">채용정보<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="${path }/careerlist.do?method=sch">List Type</a></li>
									<li><a href="${path }/calendar.do?method=init">Calendar Type</a></li>
								</ul>
							</li>							
							<c:if test="${not empty id}">
							<li><a href="${path}/resume.do?userId=${id}">이력서</a></li>
							<li><a href="${path}/self_intro.do?method=view&userId=${id}">자소서관리</a></li> 
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="${path}/account.do?method=uptProcGuest1">회원정보 수정</a></li>
									<li><a href="${path}/account.do?method=delProcGuest1">탈퇴</a></li>									
									<li><a href="${path}/account.do?bookmark">관심기업</a></li>
									<li><a href="${path}/account.do?appliedjob">지원한 기업</a></li>
									<li><a href="${path}/account.do?qanda">Q&A</a></li>									
								</ul>
							</li>
							</c:if>
						</ul>
					</div>
				</div><!-- navbar-left 18:00--> 
				<div class="nav-right">					
					<ul class="sign-in">
						<li>
							<a class="sign-in" data-toggle="modal" data-target="#myModal01"><i class="fa fa-search" aria-hidden="true"></i>Search</a> 			
						</li>					
						
						<!-- 로그인 -->
						<c:if test="${empty id}">
								<li>	
								  <!-- Trigger the modal with a button -->  
								  <a class="sign-in" data-toggle="modal" data-target="#myModal02">/ <i class="fa fa-check"></i>Sign in</a>
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
													<form method="post" action="${path}/account.do?method=signIn">
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
								  <a class="sign-in" data-toggle="modal" data-target="#myModal03"><i class="fa fa-book"></i>Register</a>
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
															
															<form method="post" id="registration" action="${path}/account.do?method=insProc">
																<div class="form-group">
																	<input type="text" class="form-control" placeholder="이름(한글 2 ~ 8 자)" name="name" />
																</div>
																<div class="form-group">
																	<input type="text" class="form-control" placeholder="ID(영문, 숫자 3 ~ 20 자)" name="id" id="userIddd" />
																</div>
																<div class="form-group">
																	<input type="password" class="form-control" placeholder="비밀번호(영문 대소문자, 숫자, 특수문자 8 ~ 20 자)" name="password" id="pass" />
																</div>														
																<div class="form-group">
																	<input type="email" class="form-control" placeholder="E-mail" name="email">
																</div>
																<div class="form-group">
																	<input type="text" class="form-control" placeholder="휴대전화 번호" name="phone">
																</div>
																<div class="form-group">
																	<input type="text" class="form-control" placeholder="주소 ex) 서울시 강남구" name="address">
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
																<button type="button" id="regBtn" class="btn">회원 가입</button>
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
							<li>
								<a class="sign-in">/ <i class="fa fa-user"></i>${id}</a>			
							</li>
							<li>
								<a class="sign-in" id="signOut"><i class="fa fa-remove"></i>Sign out</a>			
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

	</body>
</html>