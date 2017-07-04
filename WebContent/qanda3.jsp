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

<title>MY PAGE | 문의하기</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css">
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
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#refBtn").click(function(){			
			var no = $("input[name=no]").val();			
			$(location).attr("href","${path}/boardList.do?method=insert&no="+no);	
		});
		$("#uptBtn").click(function(){
			var pass = $("input[name=pass]").val();
			var inputPass = $("input[name=passChk]").val();
			if(pass==inputPass){
				$("form").attr("action","${path}/boardList.do?method=update");
				$("form").submit();
			}
			else{
				alert("비밀번호가 일치하지 않습니다.");
			}			
		});
		$("#delBtn").click(function(){			
			var pass = $("input[name=pass]").val();
			var inputPass = $("input[name=passChk]").val();
			if(pass==inputPass){
				$(location).attr("href","${path}/boardList.do?method=delete&no=${board.no}");
			}
			else{
				alert("비밀번호가 일치하지 않습니다.");
			}
		});
		$("#listBtn").click(function(){
			$(location).attr("href","${path}/boardList.do?method=list");
			
		});	
	
	});
</script>
</head>
<body>
	<!-- header 11-->
	<jsp:include page="navHeader.jsp"/>

	<section class="clearfix job-bg-mypage ad-profile-page">
		<div class="mypage-overlay"></div>
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
						<img src="upload/${resume.picName}" width="100%"
							onerror="this.src='upload/default.png'" class="img-responsive">
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
							<a href="#">${careerFavCount}<small>Favorites</small></a>
						</div>
					</div>								
				</div><!-- user-profile -->
						
				<ul class="user-menu">					
					<li><a href="${path}/account.do?method=uptProcGuest1">회원정보 수정</a></li>
					<li><a href="${path}/account.do?method=delProcGuest1">탈퇴</a></li>
					<li><a href="${path}/account.do?bookmark">관심기업</a></li>
					<li><a href="${path}/account.do?appliedjob">지원한 기업</a></li>
					<li class="active"><a href="${path}/account.do?qanda">Q&A</a></li>
				</ul>
			</div><!-- ad-profile -->

			<div class="profile job-profile">
				<div class="user-pro-section">
					<!-- profile-details -->
					<div class="question-answer section">
						<h2>글 상세</h2>
						<form method="post">
							<input type="hidden" name="refno" size="50" value="${board.no}"/>
							<table class="kdb-table">
								<colgroup>
									<col width="15%">
									<col width="35%">
									<col width="15%">
									<col width="35%">
								</colgroup>
								<tr>
									<th class="preColor kdbheader">글번호</th>
										<td><h4>${board.no}</h4><input type="hidden" name="no" size="50" value="${board.no}"/></td>
									<th class="preColor kdbheader">조회수</th>
										<td><h4>${board.readcount}</h4></td></tr>		
								<tr>
									<th class="preColor kdbheader">기업</th>
										<td>
											<c:forEach var="companyList" items="${companyList}">
												<c:choose>
													<c:when test="${companyList.companyid == board.companyid}">
														<h4>${companyList.companyname}</h4>															
													</c:when>														
												</c:choose>														
											</c:forEach>
										</td>											
									<th class="preColor kdbheader-pw">PASSWORD</th>
										<td>										
										<input type="password" name="pass"  value="${board.pass}" size="50" hidden/>
										<input type="password" name="passChk" size="50" class="form-control"/>
										</td>
								</tr>		
								<tr colspan="4">
									<th class="preColor kdbheader">제목</th>
										<td colspan="3"><input type="text" name="subject" value="${board.subject}" size="50" class="form-control"/></td>
								</tr>
								<tr>
									<th class="preColor kdbheader">작성자</th>
										<td>
										<input type="text" name="writer" value="${id}"  size="50" hidden/>
										<c:choose>
											<c:when test="${board.refno != 0}">
												<a class="form-control" style="color:black">인사담당자</a>
											</c:when>
											<c:otherwise>
												<a class="form-control" style="color:black">${id}</a>											
											</c:otherwise>
										</c:choose>
										</td>		
								    <th class="preColor kdbheader">이메일</th>
								    	<td><input type="text" name="email" size="50" value="${board.email}" class="form-control"/></td>
								</tr>
										
								<tr>
									<th class="preColor kdbheader">내용</th>
										<td colspan="3"><textarea name="content" cols="40" rows="10" class="form-control">${board.content}</textarea></td>
								</tr>		
								
								<tr align="right">
									<th colspan="4">
										<input type="button" id="listBtn" value="메인글" class="btn btn-hover-preset"/>			
										<input type="button" id="refBtn" value="답글달기" class="btn btn-hover-preset"/>
										<input type="button" id="uptBtn"  value="수정" class="btn btn-hover-preset"/>
										<input type="button" id="delBtn"  value="삭제" class="btn btn-hover-preset"/>
									</th>
								</tr>
							</table>
						</form>						
					</div>
					<!-- profile-details -->											
				</div>
				<!-- user-pro-edit -->
			</div>
		</div>
		<!-- container -->
	</section>
	<!-- ad-profile-page -->

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
	</footer>
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