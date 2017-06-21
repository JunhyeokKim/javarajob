<%@
	page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Theme Region">
<meta name="description" content="">

<title>| 이력서 |</title>

<!-- CSS -->
<link rel="stylesheet" href="css/resume.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css">

<!-- font -->
<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!-- icons -->
<link rel="icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon" sizes="57x57" href="images/ico/apple-touch-icon-57-precomposed.png">

<!-- form js -->
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".export-pdf").click(function(){
			$("form").submit();
		})
	})
</script>
</head>
<body>
	<!-- header -->
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
					<a class="navbar-brand" href="index.jsp"><img
						class="img-responsive" src="images/logo.png" alt="Logo"></a>
				</div>
				<!-- /navbar-header -->

				<div class="navbar-left">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>								
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">채용정보<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="job-list.jsp">List Type</a></li>
									<li><a href="job-list2.html">Calendar Type</a></li>
								</ul>
							</li>							
							<li class="active"><a href="${path}/resume.do">이력서</a></li>
							<li><a href="${path}/self_introduction.do">자소서관리</a></li>  
							<li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
								<ul class="dropdown-menu">									
									<li><a href="profile-details.html">회원정보 수정</a></li>
									<li><a href="delete-account.html">탈퇴</a></li>
									<li><a href="bookmark.html">관심기업</a></li>
									<li><a href="applied-job.html">지원한 기업</a></li>
									<li><a href="qanda.jsp">Q&A</a></li>									
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<!-- navbar-left -->

				<!-- nav-right -->
				<div class="nav-right">
					<ul class="sign-in">
						<li><i class="fa fa-user"></i></li>
						<li><a href="signin.html">Sign In</a></li>
						<li><a href="signup.html">Register</a></li>
					</ul>
					<!-- sign-in -->

					<a href="post.html" class="btn">Post Your Job</a>
				</div>
				<!-- nav-right -->
			</div>
			<!-- container -->
		</nav>
		<!-- navbar -->
	</header>
	<!-- header -->
	<form method="post" >
	<div class="main-tab ng-scope" >
		<div class="spec-ctrl ng-scope">
			<div class="spec-container">
				<div class="section-container spec-saver">
					<div class="section-title">
						이력서
						<div class="export-pdf">저장하기</div>
					</div>
					<div class="section-content new ng-scope" >
						<div class="specs edit-spec ng-scope basic-information" >
							<div class="subtitle ng-scope" >
								<div class="ng-binding must">기본 정보</div>
								<span class="ng-scope">(필수입력)</span>
							</div>
							<div class="content ng-scope" >
								<div class="category-wrapper ng-scope" data-category="0">
									<div class="category-repeater" data-category-number="">
										<div class="image">
											<div class="image-area">
												<!-- 증명사진 공간 -->
												<img class="ng-scope">
											</div>
											<div class="image-buttons">
												<div class="btn button-blue button-bordered ng-scope">
												 	이미지 올리기
												</div>
											</div>
										</div>
										<table class="basic-information-table">
											<colgroup>
												<col width="125px">
												<col width="130px">
												<col width="100px">
												<col width="0px">
												<col width="140px">
												<col width="80px">
												<col width="50px">
												<col width="95px">
											</colgroup>
											<tbody>
												<tr>
													<th>이름</th>
													<td><input type="text" class="small-input-text ng-pristine ng-untouched ng-valid"
														name="name"></td>
													<th>생년월일</th>
													<td colspan="3">
														<select	class="ng-pristine ng-untouched ng-valid" name="birthYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<option	value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
															</c:forEach>
														</select>
														<select class="ng-pristine ng-untouched ng-valid"  name="birthMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<option	value="${mon}" class="ng-binding ng-scope">${mon}</option>
															</c:forEach>
														</select>
														<select class="ng-pristine ng-untouched ng-valid" name="birthDay">
															<option value="">-</option>
															<c:forEach var="day" begin="1" end="31" step="1">
																<option	value="${day}" class="ng-binding ng-scope">${day}</option>
															</c:forEach>
														</select>
													</td>
													<th>성별</th>
													<td>
														<select	class="ng-pristine ng-untouched ng-valid" name="gender">
															<option value="">-</option>
															<option value="0">남자</option>
															<option value="1">여자</option>
														</select>
													</td>
												</tr>
												<tr>
													<th>전화번호</th>
													<td colspan="3">
														<input type="text" class="ng-pristine ng-untouched ng-valid" name="hTel">
													</td>
													<th>휴대폰번호</th>
													<td colspan="3">
														<input type="text" class="ng-pristine ng-untouched ng-valid" name="cTel">
													</td>
												</tr>
												<tr>
													<th>이메일</th>
													<td colspan="3">
														<input type="text" class="ng-pristine ng-untouched ng-valid" name="email">
													</td>
													<th>SNS</th>
													<td colspan="3">
														<input type="text" class="ng-pristine ng-untouched ng-valid" name="sns">
													</td>
												</tr>
												<tr>
													<th>주소</th>
													<td colspan="7">
														<input type="text" class="basic-info-addr ng-pristine ng-untouched ng-valid" name="address">
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 기본정보 -->
						
						<!-- 우대사항 -->
						<div class="specs edit-spec ng-scope advantage">
							<div class="subtitle ng-scope">
								<div class="ng-binding must">취업우대사항</div>
								<span class="ng-scope">(필수입력)</span>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="9">
									<div class="category-repeater" data-category-number="">
										<table class="advantage-table">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>보훈사항</th>
													<td colspan="3">
														<input type="radio" name="vete" value="true" class="ng-pristine ng-untouched ng-valid" />대상
														<input type="radio" name="vete" value="false" class="ng-pristine ng-untouched ng-valid" />비대상
													</td>
												</tr>
												<tr>
													<th>장애여부</th>
													<td colspan="3">
														<input type="radio" name="handi" value="true" class="ng-pristine ng-untouched ng-valid" />대상
														<input type="radio" name="handi" value="false" class="ng-pristine ng-untouched ng-valid" />비대상
													</td>
												</tr>
												<tr>
													<th>병역구분</th>
													<td>
														<input type="radio" name="milit" class="ng-pristine ng-untouched ng-valid" value="0" />군필
														<input type="radio" name="milit" class="ng-pristine ng-untouched ng-valid" value="1" />미필
														<input type="radio" name="milit" class="ng-pristine ng-untouched ng-valid" value="2" />면제
													</td>
													<th>복무기간</th>
													<td>
														<select class="ng-pristine ng-untouched ng-valid" name="militIniYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
															</c:forEach>
														</select>
														<select class="ng-pristine ng-untouched ng-valid" name="militIniMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
															</c:forEach>
														</select>
														<span class="duration-wave-mark"> ~ </span>
														<select class="ng-pristine ng-untouched ng-valid" name="militFinYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
															</c:forEach>
														</select>
														<select class="ng-pristine ng-untouched ng-valid" name="militFinMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
															</c:forEach>
														</select>
													</td>
												</tr>
												<tr>
													<th>군별</th>
													<td>
														<input type="text" class="ng-pristine ng-untouched ng-valid" name="militKind" />
													</td>
													<th>계급</th>
													<td>
														<input type="text" class="ng-pristine ng-untouched ng-valid" name="militRank" />
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 우대사항 -->
						
						<!-- 고등학교 -->
						<div class="specs edit-spec ng-scope highschool">
							<div class="subtitle ng-scope">
								<div class="ng-binding must">고등학교</div>
								<span class="ng-scope">(필수입력)</span>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="1">
									<table data-category-number="" class="ng-scope highschool-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>기간</th>
												<td colspan="3">
													<select	class="ng-pristine ng-untouched ng-valid" name="highIniYear">
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
												</select>
												<select class="ng-pristine ng-untouched ng-valid" name="highIniMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
												</select>
												<span class="duration-wave-mark"> ~ </span>
												<select class="ng-pristine ng-untouched ng-valid" name="highFinYear">
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
												</select>
												<select class="ng-pristine ng-untouched ng-valid" name="highFinMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
												</select>
											</tr>
											<tr>
												<th>학교명</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="highName">
												</td>
												<th>분류</th>
												<td>
													<select class="select-to-save ng-pristine ng-untouched ng-valid" name="highKind">
														<option value="">-</option>
														<option value="0">문과</option>
														<option value="1">이과</option>
														<option value="2">전문(실업)계</option>
														<option value="3">예체능</option>
													</select>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						
						<!-- 대학교 등록 -->
						<div class="specs edit-spec ng-scope university">
							<div class="subtitle ng-scope">
								<div class="ng-binding">대학교</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="2">
									<table data-category-number="" class="ng-scope university-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="240px">
											<col width="100px">
											<col width="130px">
											<col width="100px">
											<col width="190px">
										</colgroup>
										<tbody>
											<tr>
												<th>기간</th>
												<td colspan="5">
													<select	class="ng-pristine ng-untouched ng-valid" name="univIniYear">
														<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
															</c:forEach>
														</select>
														<select class="ng-pristine ng-untouched ng-valid" name="univIniMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
															</c:forEach>
													</select>
													<span class="duration-wave-mark"> ~ </span>
													<select class="ng-pristine ng-untouched ng-valid" name="univFinYear">
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="68" step="1">
															<option value="${2022-year}" class="ng-binding ng-scope">${2022-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="univFinMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
												</td>
											</tr>
											<tr>
												<th>학교명</th>
												<td>
													<input type="text" class="basic-info-addr ng-pristine ng-untouched ng-valid"
														name="univName" />
												</td>
												<th>분류</th>
												<td>
													<select class="ng-pristine ng-untouched ng-valid" name="univKind" >
														<option value="">-</option>
														<option value="0">2년제</option>
														<option value="1">3년제</option>
														<option value="2">4년제</option>
													</select>
												</td>
												<th>학점</th>
												<td>
													<input class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" name="univScore" value="0" /> &nbsp;/&nbsp;
													<select class="ng-pristine ng-untouched ng-valid" >
														<option value="?" selected="selected"></option>
														<option value="string:0" label="4.0">4.0</option>
														<option value="string:1" label="4.3">4.3</option>
														<option value="string:2" label="4.5">4.5</option>
														<option value="string:3" label="5.0">5.0</option>
														<option value="string:4" label="7.0">7.0</option>
														<option value="string:5" label="100">100</option>
													</select>
												</td><!-- 학점 select. -->
											</tr>
											<tr>
												<th>주전공</th>
												<td colspan="5">
													<input type="text" class="basic-info-addr" name="univMajor" />
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 대학교 등록 -->
						
						<!-- 대학원 등록 -->
						<div class="specs edit-spec ng-scope graduate-school">
							<div class="subtitle ng-scope">
								<div class="ng-binding">대학원</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="3">
									<table data-category-number="" class="ng-scope graduate-school-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="240px">
											<col width="100px">
											<col width="150px">
											<col width="80px">
											<col width="190px">
										</colgroup>
										<tbody>
											<tr>
												<th>기간</th>
												<td colspan="5">
													<select class="ng-pristine ng-untouched ng-valid" name="graduIniYear" >
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="graduIniMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
													<span class="duration-wave-mark"> ~ </span>
													<select class="ng-pristine ng-untouched ng-valid" name="graduFinYear">
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="68" step="1">
															<option value="${2022-year}" class="ng-binding ng-scope">${2022-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="graduFinMon" >														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
												</td>
											</tr>
											<tr>
												<th>학교명</th>
												<td><input type="text" class="basic-info-addr" name="graduName" /></td>
												<th>분류</th>
												<td>
													<select class="ng-pristine ng-untouched ng-valid" name="graduKind" >
														<option value="">-</option>
														<option value="3">석사과정</option>
														<option value="4">박사과정</option>
														<option value="5">석박사통합과정</option>
													</select>
												</td>
												<th>학점</th>
												<td>
													<input class="gradu-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" name="graduscore" value="0" /> &nbsp;/&nbsp;
													<select class="ng-pristine ng-untouched ng-valid" >
														<option value="?" selected="selected"></option>
														<option value="string:0" label="4.0">4.0</option>
														<option value="string:1" label="4.3">4.3</option>
														<option value="string:2" label="4.5">4.5</option>
														<option value="string:3" label="5.0">5.0</option>
														<option value="string:4" label="7.0">7.0</option>
														<option value="string:5" label="100">100</option>
													</select>
												</td><!-- 대학원 학점 -->
											</tr>
											<tr>
												<th>주전공</th>
												<td colspan="5">
													<input type="text" class="basic-info-addr" name="graduMajor" />
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 대학원 등록 -->
						
						<!-- 자격증 -->
						<div class="specs edit-spec ng-scope certificate">
							<div class="subtitle ng-scope">
								<div class="ng-binding">자격/면허</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="4">
									<table data-category-number="" class="ng-scope certificate-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>이름</th>
												<td colspan="3">
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="licenName" >
												</td>
											</tr>
											<tr>
												<th>발행처/기관</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="licenInsti" />
												</td>
												<th>등급</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="licenGrad" />
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 자격증 -->
						
						<!-- 경력 -->
						<div class="specs edit-spec ng-scope career">
							<div class="subtitle ng-scope">
								<div class="ng-binding">경력</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="5">
									<table data-category-number="" class="ng-scope career-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>회사명</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="jobName" />
												</td>
												<th>기간</th>
												<td>
													<select class="ng-pristine ng-untouched ng-valid" name="jobIniYear" >
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="jobIniMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
													<span class="duration-wave-mark"> ~ </span>
													<select class="ng-pristine ng-untouched ng-valid" name="jobFinYear" >
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="jobFinMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
												</td>
											</tr>
											<tr>
												<th>직급</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="jobRank" >
												</td>
												<th>부서</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="jobDept" >
												</td>
											</tr>
											<tr class="assignment">
												<th>담당업무</th>
												<td colspan="3">
													<textarea class="ng-pristine ng-untouched ng-valid" name="jobContent" >
													</textarea>
												</td>
											</tr>
											<tr class="resignation">
												<th>퇴사사유</th>
												<td colspan="3">
													<textarea class="ng-pristine ng-untouched ng-valid" name="jobFire" >
													</textarea>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 경력 -->
						
						<!-- 어학 -->
						<div class="specs edit-spec ng-scope language">
							<div class="subtitle ng-scope">
								<div class="ng-binding">어학</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="6">
									<table data-category-number="" class="ng-scope language-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>외국어명</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="langName" />
												</td>
												<th>시험명</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="langTest" />
												</td>
											</tr>
											<tr>
												<th>점수/등급</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="langScore" />
												</td>
												<th>취득일</th>
												<td>
													<select class="ng-pristine ng-untouched ng-valid" name="langDateYear">
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="langDateMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="langDateDay">
														<option value="">-</option>
														<c:forEach var="day" begin="1" end="31" step="1">
															<option value="${day}" class="ng-binding ng-scope">${day}</option>
														</c:forEach>
													</select>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 어학 -->
						
						<!-- 수상경력 -->
						<div class="specs edit-spec ng-scope award">
							<div class="subtitle ng-scope">
								<div class="ng-binding">수상경력</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="7">
									<table data-category-number="" class="ng-scope award-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>수상명</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="awardName" />
												</td>
												<th>수상내용</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="awardContent" />
												</td>
											</tr>
											<tr>
												<th>수여기관</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="awardInsti" />
												</td>
												<th>수상일</th>
												<td>
													<select class="ng-pristine ng-untouched ng-valid" name="awardDateYear">
														<option value="">-</option>
														<c:forEach var="year" begin="0" end="63" step="1">
															<option value="${2017-year}" class="ng-binding ng-scope">${2017-year}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="awardDateMon">
														<option value="">-</option>
														<c:forEach var="mon" begin="1" end="12" step="1">
															<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
														</c:forEach>
													</select>
													<select class="ng-pristine ng-untouched ng-valid" name="awardDateDay">
														<option value="">-</option>
														<c:forEach var="day" begin="1" end="31" step="1">
															<option value="${day}" class="ng-binding ng-scope">${day}</option>
														</c:forEach>
													</select>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 수상경력 -->
						
						<!-- 해외연수 -->
						<div class="specs edit-spec ng-scope abroad">
							<div class="subtitle ng-scope">
								<div class="ng-binding">해외연수</div>
							</div>
							<div class="content ng-scope">
								<div class="category-wrapper ng-scope" data-category="8">
									<table data-category-number="" class="ng-scope abroad-table category-repeater">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>국가</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="abroadNation" />
												</td>
												<th>기관</th>
												<td>
													<input type="text" class="ng-pristine ng-untouched ng-valid" name="abroadInsti" />
												</td>
											</tr>
											<tr class="objective">
												<th>목적 및 내용</th>
												<td colspan="3">
													<textarea class="ng-pristine ng-untouched ng-valid" name="abroadCont">
													</textarea>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 해외연수 -->
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
	
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
	<footer id="footer" class="clearfix">
		<div class="footer-bottom clearfix text-center">
			<div class="container">
				<p>(주)앵커리어(대표: 박수상) | 개인정보보호관리자: 박수상 서울시 강남구 역삼로3길 13 건암빌딩 202호
					| 전화번호: 02-6264-7582 사업자등록 : 138-87-00058 | 직업정보제공사업 :
					J1200020160017 | 통신판매업 : 2016-서울강남-00784 Copyright Anchoreer Co.,
					Inc. All rights reserved.</p>
				<p>
					Copyright &copy; <a href="#">Jobs</a>
					2017. Developed by <a href="http://themeregion.com/">ThemeRegion</a>
				</p>
			</div>
		</div>
		<!-- footer-bottom -->
	</footer>
	<!-- /footer -->
	<!-- JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/main.js"></script>
	<script src="js/switcher.js"></script>
</body>
</html>