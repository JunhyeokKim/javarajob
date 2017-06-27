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
		<jsp:include page="navHeader.jsp"/>
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

			<div class="banner-form job-list-form">
			<div class="sch-bar">
				<form action="${path }/careerlist.do?method=sch" method="post">
					<!-- category-change -->
					<div class="dropdown category-dropdown">						
						<a data-toggle="dropdown" href="#" class="dropdown-quetype"><span class="change-text" id="quetype">통합 검색</span> <i class="fa fa-angle-down"></i></a>
						<input type="hidden" name="querytype" value="통합 검색"/>
						<ul class="dropdown-menu category-change">
							<li><a class="dropdown-quetype" href="#">통합 검색</a></li>
							<li><a class="dropdown-quetype" href="#">채용 공고</a></li>
							<li><a class="dropdown-quetype" href="#">기업명</a></li>
						</ul>								
					</div><!-- category-change -->
				
					<input type="text" id="search" name="query" class="form-control" placeholder="키워드, 기업 이름 검색" autocomplete="off">
					<button type="submit" class="btn btn-primary" value="Search" id="sch">검색</button>
					</div>
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
										<label for="type-0"><input type="checkbox" class="filter" id="type-0" value="0" > 전체(129)</label>
										<label for="type-1"><input type="checkbox" class="filter" name="companytype" id="type-1" value="1"> 대기업(22)</label>
										<label for="type-2"><input type="checkbox" class="filter" name="companytype" id="type-2" value="2"> 중소기업(11)</label>
										<label for="type-3"><input type="checkbox" class="filter" name="companytype" id="type-3" value="3"> 중견기업(5)</label>
										<label for="type-4"><input type="checkbox" class="filter" name="companytype" id="type-4" value="4"> 스타트업(40)</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="type-5"><input type="checkbox" class="filter" name="companytype" id="type-5" value="5"> 공공기관(40)</label></li>
													<li><label for="type-6"><input type="checkbox" class="filter"  name="companytype" id="type-6" value="6"> 외국계 기업(40)</label></li>
													<li><label for="type-7"><input type="checkbox" class="filter" name="companytype" id="type-7" value="7"> 기타(40)</label></li>
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
											<label for="field-0"><input type="checkbox" class="filter" id="field-0" value="0"> 전체</label>
											<label for="field-1"><input type="checkbox" class="filter" name="field" id="field-1" value="1">서버 개발자</label>
											<label for="field-2"><input type="checkbox" class="filter" name="field" id="field-2" value="2">웹 개발자</label>
											<label for="field-3"><input type="checkbox" class="filter" name="field" id="field-3" value="3">프론트엔드 개발자</label>
											<label for="field-4"><input type="checkbox" class="filter" name="field" id="field-4" value="4">데이터 엔지니어</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="field-5"><input type="checkbox" class="filter" name="field" id="field-5" value="5">안드로이드 개발자</label></li>
													<li><label for="field-6"><input type="checkbox" class="filter" name="field" id="field-6" value="6">자바 개발자</label></li>
													<li><label for="field-7"><input type="checkbox" class="filter" name="field" id="field-7" value="7">IOS 개발자</label></li>
													<li><label for="field-8"><input type="checkbox" class="filter" name="field" id="field-8" value="8">파이썬 개발자</label></li>
													<li><label for="field-9"><input type="checkbox" class="filter" name="field" id="field-9" value="9">C, C++ 개발자</label></li>
													<li><label for="field-10"><input type="checkbox" class="filter" name="field" id="field-10" value="10">Node.js 개발자</label></li>
													<li><label for="field-11"><input type="checkbox" class="filter" name="field" id="field-11" value="11">시스템, 네트워크 관리자</label></li>
													<li><label for="field-12"><input type="checkbox" class="filter" name="field" id="field-12" value="12">웹퍼블리셔</label></li>
													<li><label for="field-13"><input type="checkbox" class="filter" name="field" id="field-13" value="13">그래픽 엔지니어</label></li>
													<li><label for="field-14"><input type="checkbox" class="filter" name="field" id="field-14" value="14">보안 엔지니어</label></li>
													<li><label for="field-15"><input type="checkbox" class="filter" name="field" id="field-15" value="15">프로덕트 매니저</label></li>
													<li><label for="field-16"><input type="checkbox" class="filter" name="field"  id="field-16" value="16">QA, 테스트 엔지니어</label></li>
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
										<label for="location-17"><input type="checkbox" class="filter" id="location-17" value="17" >전국</label>
										<label for="location-1"><input type="checkbox" class="filter" name="location" id="location-1" value="1" >서울</label>
										<label for="location-2"><input type="checkbox" class="filter" name="location" id="location-2" value="2" >경기</label>
										<label for="location-3"><input type="checkbox" class="filter" name="location" id="location-3" value="3" >광주</label>
										<label for="location-4"><input type="checkbox" class="filter" name="location" id="location-4" value="4" >대구</label>
										<label for="location-5"><input type="checkbox" class="filter" name="location" id="location-5" value="5" >대전</label>
										<label for="location-6"><input type="checkbox" class="filter" name="location" id="location-6" value="6" >부산</label>
											<div class="see-more">
												<button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
												<ul class="more-category one">
													<li><label for="location-7"><input type="checkbox" class="filter" name="location" id="location-7" value="7" >울산</label></li>
													<li><label for="location-8"><input type="checkbox" class="filter" name="location" id="location-8" value="8" >인천</label></li>
													<li><label for="location-9"><input type="checkbox" class="filter" name="location" id="location-9" value="9" >강원</label></li>
													<li><label for="location-10"><input type="checkbox" class="filter" name="location" id="location-10" value="10" >경남</label></li>
													<li><label for="location-11"><input type="checkbox" class="filter" name="location" id="location-11" value="11" >경북</label></li>
													<li><label for="location-12"><input type="checkbox" class="filter" name="location" id="location-12" value="12" >전남</label></li>
													<li><label for="location-13"><input type="checkbox" class="filter" name="location" id="location-13" value="13" >전북</label></li>
													<li><label for="location-14"><input type="checkbox" class="filter" name="location" id="location-14" value="14" >충북</label></li>
													<li><label for="location-15"><input type="checkbox" class="filter" name="location" id="location-15" value="15" >충남</label></li>
													<li><label for="location-16"><input type="checkbox" class="filter" name="location" id="location-16" value="16" >제주</label></li>
													<li><label for="location-18"><input type="checkbox" class="filter" name="location" id="location-18" value="18" >세종</label></li>
													<li><label for="location-19"><input type="checkbox" class="filter" name="location" id="location-19" value="19" >기타해외</label></li>
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
											<label for="industry-0"><input type="checkbox" class="filter" id="industry-0" value="0"> 전체</label>
											<label for="industry-1"><input type="checkbox" class="filter" name="industry" id="industry-1" value="1">서비스업</label>
											<label for="industry-2"><input type="checkbox" class="filter" name="industry" id="industry-2" value="2">생산/제조</label>
											<label for="industry-3"><input type="checkbox" class="filter" name="industry" id="industry-3" value="3">IT/인터넷</label>
											<label for="industry-4"><input type="checkbox" class="filter" name="industry" id="industry-4" value="4">연구개발/설계</label>
											<label for="industry-5"><input type="checkbox" class="filter" name="industry" id="industry-5" value="5">전문/특수직</label>
											<label for="industry-6"><input type="checkbox" class="filter" name="industry" id="industry-6" value="6">미디어</label>
											<label for="industry-7"><input type="checkbox" class="filter" name="industry" id="industry-7" value="7">서비스</label>
											<label for="industry-8"><input type="checkbox" class="filter" name="industry" id="industry-8" value="8">건설</label>
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
											<label for="emptype-0"><input type="checkbox" class="filter" id="emptype-0">전체</label>
											<label for="emptype-1"><input type="checkbox" class="filter" name="employmenttype" id="emptype-1" value="1">정규직</label>
											<label for="emptype-2"><input type="checkbox" class="filter" name="employmenttype" id="emptype-2" value="2">계약직</label>
											<label for="emptype-3"><input type="checkbox" class="filter" name="employmenttype" id="emptype-3" value="3">병역특례</label>
											<label for="emptype-4"><input type="checkbox" class="filter" name="employmenttype" id="emptype-4" value="4">인턴직</label>
											<label for="emptype-5"><input type="checkbox" class="filter" name="employmenttype" id="emptype-5" value="5">시간제/일용직</label>
											<label for="emptype-9"><input type="checkbox" class="filter" name="employmenttype" id="emptype-9" value="6">프리랜서</label>
										</div><!-- panel-body -->
									</div>
								</div><!-- panel -->
								
							 </div><!-- panel-group -->
						</div>
					</div><!-- accordion-->
					</form>
					
					
					

					<!-- recommended-ads -->
					<div class="col-sm-8 col-md-7">				
						<div class="section job-list-item">
							<div class="featured-top">
								<h4>모든 채용 정보  (${totCareerCnt }), 현재 1 페이지(1-25)</h4>
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

							<c:forEach var="entry" varStatus="status" items="${companyMap }">
							<div class="job-ad-item">
								<div class="item-info">
									<div class="item-image-box">
										<div class="item-image">
											<a href="job-details.html"><img src="images/job/1.png" alt="Image" class="img-responsive"></a>
										</div><!-- item-image -->
									</div>
									<input type="hidden" name="companyid" value="${entry.value.companyid }"/>
									<div class="ad-info" style="width:80%">
										<h3><span><a class="call-ajax" id="call-ajax-${entry.value.companyid }">${entry.value.companyname }<input type="hidden" value="${entry.value.companyid }"/></a><a href="#items-${status.count}" data-toggle="collapse"> <i class="fa fa-plus" ></i></a></span></h3>
										<h5><a class="title">${entry.value.shortinfo }</a></h5>
										<div class="ad-meta">
										<div class="collapse in" id="items-${status.count }">
										<c:forEach var="career" items="${entry.value.careers }">
											<div class="position-item">
												<span><a onclick='$("#call-ajax-${entry.value.companyid}").trigger("click")'>${career.title }</a></span>
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>${career.location }</a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>${career.employmenttype }</a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>${career.salary }만원</a></li>
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
    <script src="js/main.js?ver=1"></script>
	<script src="js/switcher.js"></script>
	<script type="text/javascript">
		$('#type-0').click(function(){
			$('input[name=companytype]').trigger('click');
		});
		$('#field-0').click(function(){
			$('input[name=field]').trigger('click');
		});
		$('#location-17').click(function(){
			$('input[name=location]').trigger('click');
		});
		$('#industry-0').click(function(){
			$('input[name=industry]').trigger('click');
		});
		$('#emptype-0').click(function(){
			$('input[name=employmenttype]').trigger('click');
		});
		var companyTypes= ["${careerSch.companytype[0]}","${careerSch.companytype[1]}","${careerSch.companytype[2]}","${careerSch.companytype[3]}",
			"${careerSch.companytype[4]}","${careerSch.companytype[5]}","${careerSch.companytype[6]}"];
		console.log(companyTypes)
		var fields= ["${careerSch.field[0]}","${careerSch.field[1]}","${careerSch.field[2]}","${careerSch.field[3]}",
			"${careerSch.field[4]}","${careerSch.field[5]}","${careerSch.field[6]}"];
		
		/* $("input[name=companytype]").each(function(){
			for(var i=0; i<companyTypes.length; i++){
				if($(this).val()==companyTypes[i]){
					console.log("같음")
					$(this).attr("checked",true);
				}
			}
		})
		$("input[name=field]").each(function(){
			for(var i=0; i<fields.length; i++){
				if($(this).val()==fields[i])
					$(this).attr("checked",true);
			}
		}) */
		$(document).ready(function(){
			$("#quetype").text("${queType}")
			$("input[name=querytype]").val($("#quetype").text());
    		
			$(".dropdown-quetype").click(function(){
    		$("input[name=querytype]").val($(this).text());
    	})
    })
	
	</script>
  </body>
</html>