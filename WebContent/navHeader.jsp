<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<!-- JS -->
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#signOut").click(function() {
			$(location).attr("href", "${path}/account.do?method=signOut");
		})

		$("#regBtn").click(function() {
			var validateCheck = validate();
			if (validateCheck)
				$("#registration").submit();
		})
	});

	// 정규표현식
	var reg_name = /^[가-힣]{2,20}$/; // 이름. 한글만
	var reg_id = /^[a-z0-9]{3,20}$/; // 영,숫자 3~20
	var reg_pw = /^(?=.*[a-zA-z])(?=.*[!@#$%^&*+=-])(?=.*[0-9]).{6,20}$/; // 8~20자 한,영,특,숫
	var reg_phone = /^(01[016789]{1}-?([0-9]{3,4})-?([0-9]){4})$/; // 핸드폰 번호

	function validate() {
		var name = $('input[name=name]').val(); // 이름
		var uid = $("#userIddd").val(); // id
		var password1 = $("#pass1").val(); // password
		var password2 = $("#pass2").val(); // password
		var phone = $("input[name=phone]").val(); // 핸드폰

		var checkk = false; // return 값

		if (reg_name.test(name) == false) {
			alert("잘못된 이름 형식입니다.");
			$("input[name=name]").val("");
			$("input[name=name]").focus();
		} else if (reg_id.test(uid) == false) {
			alert("잘못된 ID 형식입니다.");
			$("#userIddd").val("");
			$("#userIddd").focus();
		} else if (reg_pw.test(password1) == false) {
			alert("잘못된 비밀번호 형식입니다.\n특수문자는 !,@,#,$,%,^,&,*,+,=,-만 가능합니다.");
			$("#pass1").val("");
			$("#pass1").focus();
		} else if (password1 != password2) {
			alert("비밀번호가 일치하지 않습니다.");
			$("#pass2").val("");
			$("#pass2").focus();
		} else if (reg_phone.test(phone) == false) {
			alert("잘못된 휴대전화 번호 형식입니다.");
			$(this).val("");
			$(this).focus();
		} else if ($("#isNewbieCheck").val() != "true") {
			alert("ID 중복 확인이 필요합니다.")
		} else {
			$("#pass").val($("#pass1").val());
			checkk = true;
		}
		return checkk;
	}

	function isNewbie() {
		var paramId = $("#userIddd").val();
		if (paramId == "") {
			alert("ID를 입력해주세요.");
			return;
		}

		// ajax
		$.ajax({
			type : "POST",
			data : "paramId=" + paramId,
			dataType : "text",
			url : "${path}/account.do?method=isNewbie",
			success : function(rData, textStatus, xhr) {
				var chkRst = rData;
				if (chkRst == 0) {
					alert("등록 가능 합니다.");
					$("#isNewbieCheck").val("true");
				} else {
					alert("이미 등록된 ID 입니다.");
					$("#isNewbieCheck").val("false");
				}
			},
			error : function(xhr, status, e) {
				alert(e);
			}
		})
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
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${path}/index.do"><img
						class="img-jlogo" src="images/logo.png" alt="Logo" height="20" ></a>
				</div>
				<!-- /navbar-header -->

				<div class="navbar-left">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="${path}/index.do">Home</a></li>
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown">채용정보<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="${path }/careerlist.do?method=sch">List
											Type</a></li>
									<li><a href="${path }/calendar.do?method=init">Calendar
											Type</a></li>
								</ul></li>
							<c:if test="${not empty id}">
								<li><a href="${path}/resume.do?userId=${id}">이력서</a></li>
								<li><a
									href="${path}/self_intro.do?method=view&userId=${id}">자소서관리</a></li>
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown">My Page<span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="${path}/account.do?method=uptProcGuest1">회원정보
												수정</a></li>
										<li><a href="${path}/account.do?method=delProcGuest1">탈퇴</a></li>
										<li><a href="${path}/account.do?bookmark">관심기업</a></li>
										<li><a href="${path}/account.do?appliedjob">지원한 기업</a></li>
										<li><a href="${path}/account.do?qanda">Q&A</a></li>
									</ul></li>
							</c:if>
						</ul>
					</div>
				</div>
				<!-- navbar-left 18:00-->
				<div class="nav-right">
					<ul class="sign-in">
						<li>
							<a class="sign-in" data-toggle="modal" data-target="#myModal01">
							<i class="fa fa-search" aria-hidden="true" ></i>Search</a>
						</li>

						<!-- 로그인 -->
						<c:if test="${empty id}">
							<li>
								<!-- Trigger the modal with a button -->
								<a class="sign-in" data-toggle="modal" data-target="#myModal02">/
								<i class="fa fa-check"></i>Sign in</a> <!-- Modal -->
								<div class="modal fade" id="myModal02" role="dialog">
									<div class="modal-dialog">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">x</button>
											</div>
											<div class="modal-body">
												<div class="row text-center">
													<h2 class="btn44">User Login</h2>
													<!-- user-login -->
														<div class="user-account">
															<!-- form -->
															<form method="post" action="${path}/account.do?method=signIn">
																<div class="form-group">
																	<input type="text" class="form-control"	placeholder="ID" name="id">
																</div>
																<div class="form-group">
																	<input type="password" class="form-control" placeholder="Password" name="password">
																</div>
																<button type="submit" class="btn">Login</button>
															</form>
															<!-- form -->
														</div>
														<!-- user-login -->
													<!-- row -->
												</div>
											</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div>
								<!-- Modal -->
							</li>
							<!-- 로그인 -->
							<li>
								<!-- Trigger the modal with a button -->
								<a class="sign-in" data-toggle="modal" data-target="#myModal03">
								<i class="fa fa-book"></i>Register</a> <!-- Modal -->
								<div class="modal fade" id="myModal03" role="dialog">
									<div class="modal-dialog">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">x</button>
											</div>
											<div class="modal-body">
												<div class="row text-center">
													<h2 class="btn44">Create An Account</h2>
													<!-- user-login -->
													<div class="user-account job-user-account">
														<div class="tab-content">
															<div role="tabpanel" class="tab-pane active"
																id="find-job">
																<!-- 회원가입 -->
																<form method="post" id="registration" action="${path}/account.do?method=insProc">
																	<input type="hidden" name="isNewbieCheck" id="isNewbieCheck" value="false" />
																	<input type="hidden" name="password" id="pass" value="" />
																	<table>
																		<colgroup>
																			<col width="90%">
																			<col width="10%">
																		</colgroup>
																		<tr>
																			<td colspan="2">
																				<div class="form-group">
																					<input type="text" class="form-control"
																						placeholder="이름(한글 2 ~ 8 자)" name="name" />
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<div class="form-group">
																					<input type="text" class="form-control"
																						placeholder="ID(영문, 숫자 3 ~ 20 자)" name="id"
																						id="userIddd" />
																				</div>
																			</td>
																			<td><input type="button"
																				class="form-control btn44" name="isNewbieCheckBtn"
																				id="isNewbieCheckBtn" value="중복 확인"
																				onclick="javascript:isNewbie();" /></td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<div class="form-group">
																					<input type="password" class="form-control"
																						placeholder="비밀번호(영문 대소문자, 숫자, 특수문자 8 ~ 20 자)"
																						id="pass1" />
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<div class="form-group">
																					<input type="password" class="form-control"
																						placeholder="비밀번호 확인" id="pass2" />
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<div class="form-group">
																					<input type="email" class="form-control"
																						placeholder="E-mail" name="email">
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<div class="form-group">
																					<input type="text" class="form-control"
																						placeholder="휴대전화 번호" name="phone">
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<div class="form-group">
																					<input type="text" class="form-control"
																						placeholder="주소 ex) 서울시 강남구" name="address">
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
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
																				</select>
																				<!-- select -->
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<div class="checkbox">
																					<label class="pull-left checked" for="signing"><input
																						type="checkbox" name="signing" id="signing">
																						정보제공 동의여부, 미동의시 가입불가 </label>
																				</div>
																				<!-- checkbox -->
																			<td>
																				<div align="right">
																					<button type="button" id="regBtn" class="btn">회원
																						가입</button>
																				</div>
																			</td>
																		</tr>
																	</table>
																</form>
															</div>
														</div>
													</div>
												</div>
												<!-- user-login -->

											</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div>
								<!-- Modal -->
							</li>
							<!-- 회원가입 -->
						</c:if>
						<c:if test="${not empty id}">
							<li><a class="sign-in">/ <i class="fa fa-user"></i>${id}</a></li>
							<li><a class="sign-in" id="signOut"><i class="fa fa-remove"></i>Sign out</a></li>
						</c:if>
					</ul>
				</div>
				<!-- sign-in -->

				<div class="modal fade" id="myModal01" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">x</button>
							</div>
							<div class="modal-body">
								<form action="${path }/careerlist.do?method=sch" method="post">
									<div class="row">
										<div class="col-mdd-17">
											<input type="text" class="form-control" name="query" placeholder="기업 또는 직종 검색">
										</div>
										<div class="col-mdd-2">
											<button type="submit" class="btn btn-primary" value="Search">Search</button>
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- Modal -->
			<!-- nav-right -->
		</nav>
		<!-- navbar -->
	</header>
	<!-- header -->

</body>
</html>