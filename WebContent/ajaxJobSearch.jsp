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
                                <img src="images/job/4.png" alt="Image" class="img-responsive">
                            </div>
                            <!-- item-image -->
                        </div>

                        <div class="ad-info">
                            <span><span><a href="#" class="title">${company.companyname }</a></span></span>
                            <div class="ad-meta">
                                <p></p>
                                <ul>
                                    <li><a href="#"><i class="fa fa-map-marker"
                                            aria-hidden="true"></i>지역: ${company.location }</a></li>
                                    <li><a href="#"><i class="fa fa-clock-o"
                                            aria-hidden="true"></i>설립일: ${company.establishmentdate }</a></li>
                                    <li><i class="fa fa-money" aria-hidden="true"></i>연 매출액: ${company.annualsales }</li>
                                    <li><a href="#"><i class="fa fa-tags"
                                            aria-hidden="true"></i>산업군: ${company.industry }</a></li>
                                </ul>
                            </div>
                            <!-- ad-meta -->
                        </div>
                        <!-- ad-info -->
                    </div>
                    <!-- item-info -->
                    <div class="social-media">
                        <div class="button">
                            <a href="#" class="btn btn-primary"><i
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
                                                            <span><a href="#item-body${status.count }" data-toggle="collapse">${career.title }</a></span>
                                                        </div>
                                                            <div class="col-xs-12 col-sm-6">
                                                        <ul>
						                                    <li><a href="#"><i class="fa fa-map-marker"
						                                            aria-hidden="true"></i>${career.location }</a></li>
						                                    <li><a href="#"><i class="fa fa-clock-o"
						                                            aria-hidden="true"></i>${career.employmenttype }</a></li>
						                                    <li><i class="fa fa-money" aria-hidden="true"></i>${career.salary }</li>
						                                </ul>
						                                </div>
						                                <div class="social-media col-xs-12 col-sm-4">
                                                            <div class="button">
                                                                <a href="#" class="btn btn-primary"><i
                                                                    class="fa fa-briefcase" aria-hidden="true"></i>홈페이지 지원</a> <a
                                                                    href="#" class="btn btn-primary bookmark"><i
                                                                    class="fa fa-bookmark-o" aria-hidden="true"></i>스크랩</a>
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
                            <div class="section job-short-info">
                                <h1>Short Info</h1>
                                <ul>
                                    <li><span class="icon"><i class="fa fa-bolt"
                                            aria-hidden="true"></i></span>Posted: 1 day ago</li>
                                    <li><span class="icon"><i class="fa fa-user-plus"
                                            aria-hidden="true"></i></span> Job poster: <a href="#">Lance
                                            Ladaga</a></li>
                                    <li><span class="icon"><i class="fa fa-industry"
                                            aria-hidden="true"></i></span>Industry: <a href="#">Marketing
                                            and Advertising</a></li>
                                    <li><span class="icon"><i class="fa fa-line-chart"
                                            aria-hidden="true"></i></span>Experience: <a href="#">Entry
                                            level</a></li>
                                    <li><span class="icon"><i class="fa fa-key"
                                            aria-hidden="true"></i></span>Job function: Advertising,Design,
                                        Art/Creative</li>
                                </ul>
                            </div>
                            <div class="section company-info">
                                <h1>기업 정보</h1>
                                <ul>
                                    <li>기업명: <a href="#">Dropbox Inc</a></li>
                                    <li>웹사이트: <a href="#">www.dropbox.com</a></li>
                                    <li>본사: London, United Kingdom</li>
                                    <li>사원수: 2k Employee</li>
                                    <li>기업형태: <a href="#">www.dropbox.com</a></li>
                                    <li>산업군: <a href="#">Technology</a></li>
                                    <li>매출액: <a href="#">Technology</a></li>
                                    <li>연락처: +1234 567 8910</li>
                                    <li>Email: <a href="#">info@dropbox.com</a></li>
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
	</body>
</html>