<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<body>
	<div class="job-details">
                <div class="section job-ad-item">
                    <div class="item-info">
                        <div class="item-image-box">
                            <div class="item-image">
                                <img src="${company.imageurl }" onerror="this.src='images/job/company-default.png'" alt="logo-company" class="img-responsive logo-company">
                            </div>
                            <!-- item-image -->
                        </div>

                        <div class="ad-info">
                        <c:set var="companyInfo" value="${company }" scope="request"/>
                            <span><a href="#" class="title">${company.companyname }</a>
                            <a class="bookmark company ${company.bookmarked ?'selected':'unselected' }"><input type="hidden" value="${company.companyid}"/>
                                                                    <img class="item-bookmark unselected" src="images/icon/bookmark-unselected.png"
                                                                    style="display: ${company.bookmarked ?'none':'block' }"/> 
                                                                    <img class="item-bookmark selected" src="images/icon/bookmark-selected.png"
                                                                    style="display: ${company.bookmarked ?'block':'none' }"/>
                                                                    </a></span>
                            
                            <div class="ad-meta">
                                <p></p>
                                <ul>
                                    <li><a href="#"><i class="fa fa-map-marker"
                                            aria-hidden="true"></i>본사: ${company.location }</a></li>
                                    <li><a href="#"><i class="fa fa-clock-o"
                                            aria-hidden="true"></i>설립일: ${company.establishmentdate }</a></li>
                                    <li><i class="fa fa-money" aria-hidden="true"></i>연 매출액: ${company.annualsales }억 원</li>
                                    <li><a href="#"><i class="fa fa-tags"
                                            aria-hidden="true"></i>산업군:  
                                            <c:choose>
                                            	<c:when test="${company.industry eq 1}">서비스업</c:when>
												<c:when test="${company.industry eq 2}">생산/제조</c:when>
												<c:when test="${company.industry eq 3}">IT/인터넷</c:when>
												<c:when test="${company.industry eq 4}">연구개발/설계</c:when>
												<c:when test="${company.industry eq 5}">전문/특수직</c:when>
												<c:when test="${company.industry eq 6}">미디어</c:when>
												<c:when test="${company.industry eq 7}">서비스</c:when>
												<c:when test="${company.industry eq 8}">건설</c:when>
												<c:when test="${company.industry eq 9}">유통, 무역</c:when>
                                            </c:choose>
                                            </a></li>
                                </ul>
                            </div>
                            <!-- ad-meta -->
                        </div>
                        <!-- ad-info -->
                    </div>
                    <!-- item-info -->
                    <div class="social-media">
                        <div class="button">
                            <a href="http://${company.website}" class="btn btn-primary"><i
                                class="fa fa-briefcase" aria-hidden="true"></i>홈페이지</a> <a
                                href="#" class="btn btn-primary bookmark"><i
                                class="fa fa-bookmark-o" aria-hidden="true"></i>스크랩</a>
                        </div>
                        <ul class="share-social">
                            <li><a href="#"><i class="fa fa-facebook-official"
                                    aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- job-ad-item -->

                <div class="job-details-info">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="section job-description description-info">
                                <div>
                                    <h1>기업 소개</h1>
                                    <p>
                                        <span class="description-detail">${company.info }</span>
                                    </p>
                                </div>
                                
                                <div class="positions">
                                <h4>채용 정보: 총 ${fn:length(company.careers) }건</h4>
                                    <div class="job-ad-item">
                                            <div class="ad-info">
                                                <div class="ad-meta">
                                                <c:forEach var="career" varStatus="status" items="${company.careers }">
                                                    <div class="position-item container">
                                                        <div class="position-title row" >
                                                            <span><a href="#item-body${status.count }" data-toggle="collapse">${career.title }</a>
                                                                    <a class="bookmark career ${career.bookmarked ?'selected':'unselected' }"><input type="hidden" value="${career.careerid }"/>
                                                                    <img class="item-bookmark unselected" src="images/icon/bookmark-unselected.png"
                                                                    style="display: ${career.bookmarked ?'none':'block' }"/> 
                                                                    <img class="item-bookmark selected" src="images/icon/bookmark-selected.png"
                                                                    style="display: ${career.bookmarked ?'block':'none' }"/>
                                                                    </a>
                                                                    </span>
                                                            <jsp:useBean id="now" class="java.util.Date" />
                                                            <fmt:formatDate value="${career.postdate }" var="post"/>
                                                            <fmt:formatDate value="${career.enddate }" var="end"/>
                                                            <fmt:parseNumber value="${now.time /(1000*60*60*24)}" integerOnly="true" var="nowDays" scope="page"/>
                                                            <fmt:parseNumber value="${career.enddate.time /(1000*60*60*24)}" integerOnly="true" var="endDays" scope="page"/>
                                                            <h5><strong>( D - ${nowDays-endDays } )</strong> ${post} ~ ${end }</h5>
                                                        </div>
                                                            <div class="col-xs-12 col-sm-6">
                                                        <ul>
						                                    <li><a href="#"><i class="fa fa-map-marker"
						                                            aria-hidden="true"></i>
						                                            <c:choose>
						                                            	<c:when test="${career.location eq 1}">서울</c:when>
																		<c:when test="${career.location eq 2}">경기</c:when>
																		<c:when test="${career.location eq 3}">광주</c:when>
																		<c:when test="${career.location eq 4}">대구</c:when>
																		<c:when test="${career.location eq 5}">대전</c:when>
																		<c:when test="${career.location eq 6}">부산</c:when>
																		<c:when test="${career.location eq 7}">울산</c:when>
																		<c:when test="${career.location eq 8}">인천</c:when>
																		<c:when test="${career.location eq 9}">강원</c:when>
																		<c:when test="${career.location eq 10}">경남</c:when>
																		<c:when test="${career.location eq 11}">경북</c:when>
																		<c:when test="${career.location eq 12}">전남</c:when>
																		<c:when test="${career.location eq 13}">전북</c:when>
																		<c:when test="${career.location eq 14}">충북</c:when>
																		<c:when test="${career.location eq 15}">충남</c:when>
																		<c:when test="${career.location eq 16}">제주</c:when>
																		<c:when test="${career.location eq 17}">전국</c:when>
																		<c:when test="${career.location eq 18}">세종</c:when>
																		<c:when test="${career.location eq 19}">기타해외</c:when>
						                                            </c:choose>
						                                            
						                                            </a></li>
						                                    <li><a href="#"><i class="fa fa-clock-o"
						                                            aria-hidden="true"></i>
						                                            <c:choose>
						                                            	<c:when test="${career.employmenttype eq 1}">정규직</c:when>
																		<c:when test="${career.employmenttype eq 2}">계약직</c:when>
																		<c:when test="${career.employmenttype eq 3}">병역특례</c:when>
																		<c:when test="${career.employmenttype eq 4}">인턴직</c:when>
																		<c:when test="${career.employmenttype eq 5}">시간제/일용직</c:when>
																		<c:when test="${career.employmenttype eq 9}">프리랜서</c:when>
						                                            </c:choose>
						                                            </a></li>
						                                    <li><i class="fa fa-money" aria-hidden="true"></i>
						                                    	<c:choose>
						                                    		<c:when test="${career.salary eq 0}">회사내규에 따름</c:when>
																	<c:when test="${career.salary eq 1}">1,400 만원 이하</c:when>
																	<c:when test="${career.salary eq 2}">1,400~1,600만원</c:when>
																	<c:when test="${career.salary eq 3}">1,600~1,800만원</c:when>
																	<c:when test="${career.salary eq 4}">1,800~2,000만원</c:when>
																	<c:when test="${career.salary eq 5}">2,000~2,200만원</c:when>
																	<c:when test="${career.salary eq 6}">2,200~2,400만원</c:when>
																	<c:when test="${career.salary eq 7}">2,400~2,600만원</c:when>
																	<c:when test="${career.salary eq 8}">2,600~2,800만원</c:when>
																	<c:when test="${career.salary eq 9}">2,800~3,000만원</c:when>
																	<c:when test="${career.salary eq 10}">3,000~3,200만원</c:when>
																	<c:when test="${career.salary eq 11}">3,200~3,400만원</c:when>
																	<c:when test="${career.salary eq 12}">3,400~3,600만원</c:when>
																	<c:when test="${career.salary eq 13}">3,600~3,800만원</c:when>
																	<c:when test="${career.salary eq 14}">3,800~4,000만원</c:when>
																	<c:when test="${career.salary eq 15}">4,000~5,000만원</c:when>
																	<c:when test="${career.salary eq 16}">5,000~6,000만원</c:when>
																	<c:when test="${career.salary eq 17}">6,000~7,000만원</c:when>
																	<c:when test="${career.salary eq 18}">7,000~8,000만원</c:when>
																	<c:when test="${career.salary eq 19}">8,000~9,000만원</c:when>
																	<c:when test="${career.salary eq 20}">9,000~1억원</c:when>
																	<c:when test="${career.salary eq 21}">1억원 이상</c:when>
																	<c:when test="${career.salary eq 99}">면접후 결정</c:when>
						                                    	</c:choose>
						                                    </li>
						                                </ul>
						                                </div>
						                                <div class="social-media col-xs-12 col-sm-4">
                                                            <div class="button">
                                                                <a href="#" class="btn btn-primary"><i
                                                                    class="fa fa-briefcase" aria-hidden="true"></i>홈페이지 지원</a> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div id="item-body${status.count }" class="collapse position-detail description-detail">
                                                     
                                                            <h3>주요 업무</h3>
                                                            <p>${career.task }</p>
                                                            <h3>자격 요건</h3>
                                                            <p>${career.requirements }</p>
                                                        </div>
                                                        </c:forEach>
                                                </div>
                                                <!-- ad-meta -->
                                            </div>
                                            <!-- ad-info -->
                                        <!-- item-info -->
                                    </div>
                                    <!-- job-ad-item -->
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="section company-info">
                                <h1>기업 정보</h1>
                                <ul>
                                    <li>기업명: <a href="#">${company.companyname }</a></li>
                                    <li>웹사이트: <a href="#">${company.website }</a></li>
                                    <li>본사: ${company.location}</li>
                                    <li>사원수: ${company.companysize }</li>
                                    <li>기업형태: <a href="#">
                                    <c:choose>
                                    	<c:when test="${company.companytype eq 1}">대기업</c:when>
										<c:when test="${company.companytype eq 2}">중소기업</c:when>
										<c:when test="${company.companytype eq 3}">중견기업</c:when>
										<c:when test="${company.companytype eq 4}">스타트업</c:when>
										<c:when test="${company.companytype eq 5}">공공기관</c:when>
										<c:when test="${company.companytype eq 6}">외국계 기업</c:when>
										<c:otherwise>기타</c:otherwise>
                                    </c:choose>
                                    </a></li>
                                    <li>산업군: <a href="#">
                                    <c:choose>
                                    	<c:when test="${company.industry eq 1}">서비스업</c:when>
										<c:when test="${company.industry eq 2}">생산/제조</c:when>
										<c:when test="${company.industry eq 3}">IT/인터넷</c:when>
										<c:when test="${company.industry eq 4}">연구개발/설계</c:when>
										<c:when test="${company.industry eq 5}">전문/특수직</c:when>
										<c:when test="${company.industry eq 6}">미디어</c:when>
										<c:when test="${company.industry eq 7}">서비스</c:when>
										<c:when test="${company.industry eq 8}">건설</c:when>
										<c:when test="${company.industry eq 9}">유통, 무역</c:when>
                                    </c:choose>
                                    </a></li>
                                    <li>매출액: <a href="#">${company.annualsales }억</a></li>
                                    <li>연락처: ${company.tel }</li>
                                </ul>
                                <ul class="share-social">
                                    <li><a href="#"><i class="fa fa-facebook-official"
                                            aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter-square"
                                            aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus-square"
                                            aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin-square"
                                            aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- row -->
                </div>
                <!-- job-details-info -->
            </div>
            <!-- job-details -->
        </div>
        <script type="text/javascript">
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
        	callAjax(method,target,index,$(this));
        })
        
        
        </script>
	</body>
</html>