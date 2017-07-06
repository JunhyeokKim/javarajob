<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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

<title>JAVARAJOB | MY PAGE | 관심 기업</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css?v=2">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css?ver=1">

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
	<!-- header -->
	<jsp:include page="navHeader.jsp" />
	<!-- header -->
	
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
		<div class="container">
			<div class="breadcrumb-section">
				<ol class="breadcrumb">
					<li><a href="${path}/index.do">HOME</a></li>
					<li>MY PAGE</li>
					<li>관심 기업</li>
				</ol>
				<h2 class="title">My Profile</h2>
			</div>
			<!-- breadcrumb-section -->

			<div class="job-profile section">
				<div class="user-profile">
					<div class="user-images">
						<img src="upload/${resume.picName}" width="100%"
							onerror="this.src='upload/default.png'" class="img-responsive">
					</div>
					<div class="user">
						<h2>
							<a href="#">${id}</a> 님 안녕하세요!
						</h2>
						<h5>마지막 로그인 <%=accTime%></h5>
					</div>

					<div class="favorites-user">
						<div class="my-ads">
							<a href="#">${careerFavCount}<small>Favorite Job</small></a>
						</div>
						<div class="favorites">
							<a href="#">${careerFavCountCompany}<small>Favorite Corp.</small></a>
						</div>
					</div>
				</div>
				<!-- user-profile -->
				<div class="sublink">
					<jsp:include page="sublink.jsp"/>
				</div>
			</div>
			<!-- ad-profile -->

			<div class="section trending-ads latest-jobs-ads">
				<h2 style="color: black;">관심 기업</h2>
				<div class="section job-list-item">
					<div class="featured-top">
						<div class="dropdown pull-right">
							<div class="dropdown category-dropdown">
								<h5>정렬 기준:</h5>
								<a data-toggle="dropdown" href="#"><span class="change-text">최근
										등록 순</span><i class="fa fa-caret-square-o-down"></i></a>
								<ul class="dropdown-menu category-change">
									<li><a href="#">최근 등록 순 </a></li>
									<li><a href="#">인기 순</a></li>
								</ul>
							</div>
							<!-- category-change -->
						</div>
					</div>
					<!-- featured-top -->
					
					<c:forEach var="company" items="${companyList}" varStatus="status">
						<div class="job-ad-item">
							<div class="item-info">
								<div class="item-image-box">
									<div class="item-image">
										<a class="call-ajax">
											<img src="${company.imageurl }" onerror="this.src='images/job/company-default.png'" alt="logo-company"
												class="img-responsive logo-company">
											<input type="hidden" value="${company.companyid}" name="companyid" />
										</a>
									</div>
									<!-- item-image -->
								</div>

								<div class="ad-info">
									<span>
										<a class="call-ajax00 title" id="call-ajax-${company.companyid }">
											${company.companyname }
											<input type="hidden" value="${company.companyid }" />
										</a>
									</span>
									<h4>
										<a class="title">${company.shortinfo }</a>
									</h4>
									<div class="ad-meta">
										<div class="collapse in">
											<div class="position-item">
												<span><a onclick='$("#call-ajax-${entry.value.companyid}").trigger("click")'>${career.title }</a></span>
												<ul>
													<li>
														<a class="cursorCtrl">
															<i class="fa fa-map-marker" aria-hidden="true"></i>
															본사 위치 : ${company.location}
														</a>
													</li>
													<li>
														<a class="cursorCtrl">
															<i class="fa fa-money" aria-hidden="true"></i>
															매출 : ${company.annualsales} 원
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- ad-info -->
								<div class="close-icon">
									<a class="delete-bookmark">
										<i class="fa fa-window-close" aria-hidden="true"></i>
										<input type="hidden" class="companyid-dd" value="${company.companyid}" />
										<input type="hidden" class="companyname-dd" value="${company.companyname}" />
									</a>
								</div>
							</div>
							<!-- item-info -->
						</div>
						<!-- ad-item -->
					</c:forEach>
					<c:if test="${companyList.size() == 0 }">
						<div class="job-ad-item">
							<h1>현재 북마크한 기업이 없습니다.</h1>
						</div>
					</c:if>
				</div>
				<!-- latest-jobs-ads -->
			</div>
		</div>
		<!-- container -->
	</section>
	<!-- ad-profile-page -->

	<!-- footer -->
	<jsp:include page="footer.jsp"/>
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
	<script type="text/javascript">
		$(".call-ajax00").click(function(){		 
	 		var params="companyid="+$(this).find('input[class=hidden]').val();
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
		
		$(".delete-bookmark").click(function(){
			var compname = $(this).find('input[class=companyname-dd]').val();
			var companyid= $(this).find('input[class=companyid-dd]').val();
			if(confirm(compname+"를(을) 기업을 관심 기업에서 지우시겠습니까?")) {
				$(location).attr("href","${path}/account.do?deleteFavComp&companyid="+companyid);
			}
		})
	</script>
</body>
</html>