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

<title>Jobs | Job Portal / Job Board HTML Template</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css?v=1">
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

</head>
<body>
	<!-- header 11-->
	<jsp:include page="navHeader.jsp"/>
	
	<!-- ajax -->
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
    </div><!-- ajax -->

	<section class="clearfix job-bg-mypage  ad-profile-page">
	<div class="mypage-overlay"></div>
		<div class="container">
			<div class="breadcrumb-section">
				<ol class="breadcrumb">
					<li><a href="index.jsp">HOME</a></li>
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
					<li class="active"><a href="${path}/account.do?bookmark">관심직무</a></li>
					<li><a href="${path}/account.do?appliedjob">지원한 기업</a></li>
					<li><a href="${path}/account.do?qanda">Q&A</a></li>
				</ul>
			</div><!-- ad-profile -->

			<div class="section trending-ads latest-jobs-ads">
				<h4>Bookmark</h4>
				
				<div><!-- career list 전체 -->
					<div class="section job-list-item">
						<div class="featured-top">
							<h4></h4>
							<div class="dropdown pull-right">
								<div class="dropdown category-dropdown">
									<h5>정렬 기준:</h5>
									<a data-toggle="dropdown" href="#"><span
										class="change-text">최근 등록 순</span><i
										class="fa fa-caret-square-o-down"></i></a>
									<ul class="dropdown-menu category-change">
										<li><a href="#">최근 등록 순 </a></li>
										<li><a href="#">인기 순</a></li>
									</ul>
								</div>
								<!-- category-change -->
							</div>
						</div><!-- featured-top -->
												
						<c:forEach var="career" varStatus="status" items="${careerList}"><!-- 회사 리스트 -->						
							<div class="job-ad-item">
								<!-- 한 줄 단위 전체 -->
								<div class="item-info">
									<div class="item-image-box"><!-- 이미지 -->
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/3.png"
												alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->		
									</div><!-- 이미지 -->
									<div class="ad-info"><!-- 회사내용 -->
										<span><a class="title call-ajax">${career.title}<input type="hidden" value="${career.companyid}" name="companyid" /></a>
											@ <a>${career.companyname}</a></span>
										<div class="ad-meta">
											<ul>
												<li>
													<a href="#"><i class="fa fa-map-marker"	aria-hidden="true"></i>
													<c:choose>
														<c:when test="${career.location==1}">서울</c:when>
														<c:when test="${career.location==2}">경기</c:when>
														<c:when test="${career.location==3}">광주</c:when>
														<c:when test="${career.location==4}">대구</c:when>
														<c:when test="${career.location==5}">대전</c:when>
														<c:when test="${career.location==6}">부산</c:when>
														<c:when test="${career.location==7}">울산</c:when>
														<c:when test="${career.location==8}">인천</c:when>
														<c:when test="${career.location==9}">강원</c:when>
														<c:when test="${career.location==10}">경남</c:when>
														<c:when test="${career.location==11}">경북</c:when>
														<c:when test="${career.location==12}">전남</c:when>
														<c:when test="${career.location==13}">전북</c:when>
														<c:when test="${career.location==14}">충북</c:when>
														<c:when test="${career.location==15}">충남</c:when>
														<c:when test="${career.location==16}">제주</c:when>
														<c:when test="${career.location==17}">전국</c:when>
														<c:when test="${career.location==18}">세종</c:when>
														<c:when test="${career.location==19}">기타해외</c:when>
													</c:choose>
													</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-check" aria-hidden="true"></i>													
													<c:choose>
														<c:when test="${career.companytype==1}">대기업</c:when>
														<c:when test="${career.companytype==2}">중소기업</c:when>
														<c:when test="${career.companytype==3}">중견기업</c:when>
														<c:when test="${career.companytype==4}">스타트업</c:when>
														<c:when test="${career.companytype==5}">공공기관</c:when>
														<c:when test="${career.companytype==6}">외국계 기업</c:when>
														<c:when test="${career.companytype==7}">기타</c:when>
													</c:choose>
													</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-industry" aria-hidden="true"></i>													
													<c:choose>
														<c:when test="${career.industry==1}">서비스업</c:when>
														<c:when test="${career.industry==2}">생산/제조</c:when>
														<c:when test="${career.industry==3}">IT/인터넷</c:when>
														<c:when test="${career.industry==4}">연구개발/설계</c:when>
														<c:when test="${career.industry==5}">전문/특수직</c:when>
														<c:when test="${career.industry==6}">미디어</c:when>
														<c:when test="${career.industry==7}">서비스</c:when>
														<c:when test="${career.industry==8}">건설</c:when>														
													</c:choose>
													</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>													
													<c:choose>
														<c:when test="${career.employmenttype==1}">정규직</c:when>
														<c:when test="${career.employmenttype==2}">계약직</c:when>
														<c:when test="${career.employmenttype==3}">병역특례</c:when>
														<c:when test="${career.employmenttype==4}">인턴직</c:when>
														<c:when test="${career.employmenttype==5}">시간제/일용직</c:when>
														<c:when test="${career.employmenttype==9}">프리랜서</c:when>																												
													</c:choose>
													</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-pencil"	aria-hidden="true"></i>													
													<c:choose>
														<c:when test="${career.field==1}">서버 개발자</c:when>
														<c:when test="${career.field==2}">웹 개발자</c:when>
														<c:when test="${career.field==3}">프론트엔드 개발자</c:when>
														<c:when test="${career.field==4}">데이터 엔지니어</c:when>
														<c:when test="${career.field==5}">안드로이드 개발자</c:when>
														<c:when test="${career.field==6}">자바 개발자</c:when>
														<c:when test="${career.field==7}">IOS 개발자</c:when>
														<c:when test="${career.field==8}">파이썬 개발자</c:when>
														<c:when test="${career.field==9}">C, C++ 개발자</c:when>
														<c:when test="${career.field==10}">Node.js 개발자</c:when>
														<c:when test="${career.field==11}">시스템, 네트워크 관리자</c:when>
														<c:when test="${career.field==12}">웹퍼블리셔</c:when>
														<c:when test="${career.field==13}">그래픽 엔지니어</c:when>
														<c:when test="${career.field==14}">보안 엔지니어</c:when>
														<c:when test="${career.field==15}">프로덕트 매니저</c:when>
														<c:when test="${career.field==16}">QA, 테스트 엔지니어</c:when>																												
													</c:choose>
													</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-money" aria-hidden="true"></i>
													<c:choose>
														<c:when test="${career.salary==0}">회사내규에 따름</c:when>
														<c:when test="${career.salary==1}">1,400 만원 이하</c:when>
														<c:when test="${career.salary==2}">1,400~1,600만원</c:when>
														<c:when test="${career.salary==3}">1,600~1,800만원</c:when>
														<c:when test="${career.salary==4}">1,800~2,000만원</c:when>
														<c:when test="${career.salary==5}">2,000~2,200만원</c:when>
														<c:when test="${career.salary==6}">2,200~2,400만원</c:when>
														<c:when test="${career.salary==7}">2,400~2,600만원</c:when>
														<c:when test="${career.salary==8}">2,600~2,800만원</c:when>
														<c:when test="${career.salary==9}">2,800~3,000만원</c:when>
														<c:when test="${career.salary==10}">3,000~3,200만원</c:when>
														<c:when test="${career.salary==11}">3,200~3,400만원</c:when>
														<c:when test="${career.salary==12}">3,400~3,600만원</c:when>
														<c:when test="${career.salary==13}">3,600~3,800만원</c:when>
														<c:when test="${career.salary==14}">3,800~4,000만원</c:when>
														<c:when test="${career.salary==15}">4,000~5,000만원</c:when>
														<c:when test="${career.salary==16}">5,000~6,000만원</c:when>
														<c:when test="${career.salary==17}">6,000~7,000만원</c:when>
														<c:when test="${career.salary==18}">7,000~8,000만원</c:when>
														<c:when test="${career.salary==19}">8,000~9,000만원</c:when>
														<c:when test="${career.salary==20}">9,000~1억원</c:when>
														<c:when test="${career.salary==21}">1억원 이상</c:when>
														<c:when test="${career.salary==99}">면접후 결정</c:when>
													</c:choose>
													</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
													<fmt:formatDate value="${career.postdate}"	pattern="yy-MM-dd" />~<fmt:formatDate value="${career.enddate}" pattern="yy-MM-dd" /></a>
												</li>
											</ul>
										</div>
									</div><!-- 회사내용 -->									
									<div class="close-icon"><!-- 오른쪽 상단 공간 -->										
										<div class="button">											
										</div>
									</div><!-- 오른쪽 상단 공간 -->									
								</div><!-- item-info -->								
							</div><!-- 한 줄 단위 전체 -->							
						</c:forEach><!-- 회사 리스트 -->
						
						<div class="ad-section text-center">
							<a href="#"><img src="images/ads/3.jpg" alt="Image"
								class="img-responsive"></a>
						</div>						
					</div>
				</div>
				<!-- career list 전체 -->
				
				
				
			</div>
			<!-- latest-jobs-ads -->
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
	</footer><!-- footer -->

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
	<script type="text/javascript">
	 $(".call-ajax").click(function(){		 
	 		var params="companyid="+$(this).find('input[type=hidden]').val();
	 		$.ajax({
	 		type:"POST",
	 		url:"${path}/careerlist.do?method=job-detail",
	 		data:params,
	 		success:function(args){
	 			$("#ajax-modal-detail").html(args);
	 			$("#modal-detail").modal("show");
	 			}
	 		})
	 })
    </script>
</body>
</html>