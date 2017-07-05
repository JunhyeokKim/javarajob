<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Theme Region">
<meta name="description" content="">

<title>JAVARAJOB | 일자리를 찾는 가장 쉬운 방법</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css?v=3">
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

<!-- CSS -->
<style>
#temp01 {
	padding-left: 10%;
	padding-right: 10%;
}

#temp02 {
	display: inline;
}
</style>
<!-- CSS -->

</head>
<body>
	<!-- header -->
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
	
	
	<!-- header -->
	<div class="banner-job">
		<div class="banner-overlay"></div>
		<div class="container text-center">
			<h1 class="title">당신이 일자리를 찾는 가장 쉬운 방법</h1>
			<h2>JAVARAJOB</h2>
			<div class="section cta cta-two text-center">
				<div class="row">
					<div class="col-sm-4">
						<div class="single-cta">
							<div class="cta-icon icon-jobs">
								<img src="images/icon/31.png" alt="Icon" class="img-responsive">
							</div>
							<!-- cta-icon -->
							<h3 id="careercount"></h3>
							<h4>Live Jobs</h4>
							<p>JAVARAJOB은 어느 사이트보다 많은 일자리를 제공합니다</p>
						</div>
					</div>
					<!-- single-cta -->

					<div class="col-sm-4">
						<div class="single-cta">
							<!-- cta-icon -->
							<div class="cta-icon icon-company">
								<img src="images/icon/32.png" alt="Icon" class="img-responsive">
							</div>
							<!-- cta-icon -->
							<h3 id="companycount"></h3>
							<h4>Total Company</h4>
							<p>JAVARAJOB은 방대하고 다양한 기업정보를 제공합니다</p>
						</div>
					</div>
					<!-- single-cta -->

					<div class="col-sm-4">
						<div class="single-cta">
							<div class="cta-icon icon-candidate">
								<img src="images/icon/33.png" alt="Icon" class="img-responsive">
							</div>
							<!-- cta-icon -->
							<h3 id="accountcount"></h3>
							<h4>Total Candidate</h4>
							<p>JAVARAJOB은 가장 많은 회원을 보유하고 있습니다</p>
						</div>
					</div>
					<!-- single-cta -->
				</div>
				<!-- row -->
			</div>
			<!-- cta -->


		</div>
		<!-- container -->
	</div>
	<!-- banner-section -->
	
	<div class="page">
		<br>
		<div class="row" id="temp01"><!-- row -->			
			<div class="col-sm-2"><!-- col-sm-2 -->
				<div class="panel-group" id="accordion">
					<div class="panel panel-default panel-faq">
					<!-- panel-heading -->
					<div class="panel-heading">
						<div  class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#accordion-four">
						<h4> 산업군<span class="pull-right"><i class="fa fa-minus"></i></span></h4>
						</a>
						</div>
					</div><!-- panel-heading -->

					<div id="accordion-four" class="panel-collapse collapse in">
						<!-- panel-body -->
						<div class="panel-body">
							<label for="industry-0"><input type="checkbox"  id="industry-0" value="0"> 전체</label>
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
			</div><!-- panel group-->
			</div><!-- col-sm-2 -->
	
			<div class="col-sm-10"><!-- col-sm-10 -->
				<div><!-- career list 전체 -->
					<div class="section job-list-item">
						<div class="featured-top">
							<h4></h4>
							<div class="dropdown pull-right">
								<div class="dropdown category-dropdown">									
									<a data-toggle="dropdown" href="#"><span
										class="change-text">정렬 기준</span><i
										class="fa fa-caret-square-o-down"></i></a>
									<ul class="dropdown-menu category-change">
										<li><a href="#" id="orderByPostdate">최근 등록 순 </a></li>
										<li><a href="#" id="orderByBookmark">인기 순</a></li>
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
											<a class="call-ajax00">
												<img src="${career.imageurl }" onerror="this.src='images/job/company-default.png'" alt="logo-company" class="img-responsive logo-company">
												<input type="hidden" value="${career.companyid}" name="companyid" />
											</a>
										</div><!-- item-image -->		
									</div><!-- 이미지 -->
									<div class="ad-info"><!-- 회사내용 -->
										<span><a class="title call-ajax00">${career.title}<input type="hidden" value="${career.companyid}" name="companyid" /></a> /<a> @${career.companyname}</a>
										<a data-toggle="popover" class="bookmark career ${career.bookmarked ?'selected':'unselected' }" style="display: inline-block;">
										<input type="hidden" value="${career.careerid }"/>
                                                                    <img class="item-bookmark unselected" src="images/icon/bookmark-unselected.png"
                                                                    style="display: ${career.bookmarked ?'none':'block' }"/> 
                                                                    <img class="item-bookmark selected" src="images/icon/bookmark-selected.png"
                                                                    style="display: ${career.bookmarked ?'block':'none' }"/>
                                                                    </a>
										</span>
										<div class="ad-meta">
											<ul>
												<li>
													<a><i class="fa fa-map-marker"	aria-hidden="true"></i>
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
													<a><i class="fa fa-check" aria-hidden="true"></i>													
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
													<a><i class="fa fa-industry" aria-hidden="true"></i>													
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
													<a><i class="fa fa-clock-o" aria-hidden="true"></i>													
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
													<a><i class="fa fa-pencil"	aria-hidden="true"></i>													
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
													<a><i class="fa fa-money" aria-hidden="true"></i>
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
													<a><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
													<fmt:formatDate value="${career.postdate}"	pattern="yy-MM-dd" />~<fmt:formatDate value="${career.enddate}" pattern="yy-MM-dd" /></a>
												</li>
											</ul>
										</div>
									</div><!-- 회사내용 -->									
									<div class="close-icon"><!-- 오른쪽 상단 공간 -->										
									</div><!-- 오른쪽 상단 공간 -->									
								</div><!-- item-info -->	
							</div><!-- 한 줄 단위 전체 -->							
						</c:forEach><!-- 회사 리스트 -->
						
						<c:if test="${careerList.size() == 0 }">
							<h1 align="center">검색 결과가 없습니다. ㅠㅠ</h1>
						</c:if>
						<div class="ad-section text-center">
							<a href="#"><img src="images/bg/start.png" alt="Image" width="729px"
								class="img-responsive"></a>
						</div>						
					</div>
				</div>
				<!-- career list 전체 -->
			</div><!-- col-sm-10 -->
			
		</div><!-- row -->
	</div><!-- page -->
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
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
	<script src="js/countUp.js"></script>
	<script type="text/javascript">
	var popOverSettings = {
		    placement: 'right',
		    container: 'body',
		    selector: '[data-toggle="popover"]',
		    content: function () {
		        return "북마크가 추가되었습니다.";
		    }
		}
		$('body').popover(popOverSettings);
		$('.bookmark').on('shown.bs.popover', function () {
    	var popObj=$(this);
    	setTimeout(function(){
    		popObj.popover('hide');	
    		},2000)
    		})
	
        function callAjax(method,target,index,selector){
        	var img1=selector.find("img:first");
        	var img2=selector.find("img:last");
            $.ajax({
                type:"POST",
                url:"careerlist.do?"+"target="+target+"&method="+method+"&index="+index,
                success:function(data){
                	if(method=="bookmark"){
                		img1.css("display","none")
                		img2.css("display","block");
                		selector.addClass("selected").removeClass("unselected");
                	}
                	else if(method=="rmBookmark"){
                		img1.css("display","block")
                        img2.css("display","none");
                		selector.addClass("unselected").removeClass("selected");
                	}
                	
                }
        })
        }
        $(".bookmark").click(function(){
        	var index=$(this).find("input[type=hidden]").val();
        	var method;
        	var target;
        	if($(this).hasClass("selected")){
        		method="rmBookmark";
        	}else if($(this).hasClass("unselected")){
        		method="bookmark";
        	}
        	if($(this).hasClass("career")){
        		target="career";
        	} else if($(this).hasClass("company")){
        		target="company";
        	}
        	console.log(method)
        	console.log(target)
        	console.log(index)
        	callAjax(method,target,index,$(this));
        })
        
	
	$(document).ready(function(){
		$("#industry-0").click(function(){			
			$(location).attr("href","${path}/index.do");		
		});		
		$("#industry-1").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=1");		
		});
		$("#industry-2").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=2");		
		});
		$("#industry-3").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=3");		
		});
		$("#industry-4").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=4");		
		});
		$("#industry-5").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=5");		
		});
		$("#industry-6").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=6");		
		});
		$("#industry-7").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=7");		
		});
		$("#industry-8").click(function(){			
			$(location).attr("href","${path}/indexSelect.do?industry=8");		
		});
		
		$("#orderByPostdate").click(function(){			
			$(location).attr("href","${path}/index.do");		
		});
		$("#orderByBookmark").click(function(){			
			$(location).attr("href","${path}/index.do?mode=2");		
		});
		
		
		var options = {
				  useEasing : true, 
				  useGrouping : true, 
				  separator : ',', 
				  decimal : '.', 
				};
				var account = new CountUp("accountcount", 0, ${accountCount}, 0, 10, options);
				var career = new CountUp("careercount", 0, ${careerCount}, 0, 10, options);
				var company = new CountUp("companycount", 0, ${companyCount}, 0, 10, options);
				account.start();
				career.start();
				company.start();
	})
			

	 $(".call-ajax00").click(function(){		 
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