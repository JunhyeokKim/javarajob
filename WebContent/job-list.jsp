<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <c:set var="path" value="${pageContext.request.contextPath}" />
                <!doctype html>
                <html>

                <head>
                    <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <meta name="author" content="Theme Region">
                    <meta name="description" content="">
                    <title>JAVARAJOB | 채용정보 | LIST</title>
                    <!-- CSS -->
                    <link rel="stylesheet" href="css/bootstrap.min.css?ver=3">
                    <link rel="stylesheet" href="css/font-awesome.min.css">
                    <link rel="stylesheet" href="css/icofont.css">
                    <link rel="stylesheet" href="css/slidr.css">
                    <link rel="stylesheet" href="css/main.css?ver=3">
                    <link id="preset" rel="stylesheet" href="css/presets/preset1.css">
                    <link rel="stylesheet" href="css/table_kdb.css">
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



                </head>

                <body>
                    <jsp:include page="navHeader.jsp" />
                    <div class="modal fade" id="modal-detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-fullsize" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    <h4 class="modal-title">상세 정보</h4>
                                </div>
                                <div class="modal-body" id="ajax-modal-detail">
                                </div>
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
                                    <li><a href="${path}/index.do">HOME</a>
                                    </li>
                                    <li>채용정보</li>
                                </ol>
                                <!-- breadcrumb -->
                                <h2 class="title">채용정보 List</h2>
                            </div>

                            <div class="banner-form job-list-form">
                                <div class="sch-bar">
                                    <form action="${path }/careerlist.do?method=sch" method="post">
                                        <input type="hidden" name="curPage" value="1" />
                                        <!-- category-change -->
                                        <div class="dropdown category-dropdown">
                                            <a data-toggle="dropdown" href="#" class="dropdown-quetype"><span class="change-text" id="quetype">통합 검색</span> <i class="fa fa-angle-down"></i></a>
                                            <input type="hidden" name="querytype" value="통합 검색" />
                                            <ul class="dropdown-menu category-change">
                                                <li><a class="dropdown-quetype" href="#">통합 검색</a>
                                                </li>
                                                <li><a class="dropdown-quetype" href="#">채용 공고</a>
                                                </li>
                                                <li><a class="dropdown-quetype" href="#">기업명</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <!-- category-change -->

                                        <input type="text" id="search" name="query" class="form-control" placeholder="키워드, 기업 이름 검색" autocomplete="off">
                                        <button type="submit" class="btn btn-primary" value="Search" id="sch">검색</button>
                                </div>
                            </div>
                            <!-- banner-form -->

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
                                                        <div class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#accordion-one">
                                                                <h4>기업 형태<span class="pull-right"><i class="fa fa-minus"></i></span></h4>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- panel-heading -->

                                                    <div id="accordion-one" class="panel-collapse collapse in">
                                                        <!-- panel-body -->
                                                        <div class="panel-body">
                                                            <label for="type-0">
                                                                <input type="checkbox" id="type-0" value="0"> 전체</label>
                                                            <label for="type-1">
                                                                <input type="checkbox" class="filter" name="companytype" id="type-1" value="1"> 대기업</label>
                                                            <label for="type-2">
                                                                <input type="checkbox" class="filter" name="companytype" id="type-2" value="2"> 중소기업</label>
                                                            <label for="type-3">
                                                                <input type="checkbox" class="filter" name="companytype" id="type-3" value="3"> 중견기업</label>
                                                            <label for="type-4">
                                                                <input type="checkbox" class="filter" name="companytype" id="type-4" value="4"> 스타트업</label>
                                                            <div class="see-more">
                                                                <button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
                                                                <ul class="more-category one">
                                                                    <li>
                                                                        <label for="type-5">
                                                                            <input type="checkbox" class="filter" name="companytype" id="type-5" value="5"> 공공기관</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="type-6">
                                                                            <input type="checkbox" class="filter" name="companytype" id="type-6" value="6"> 외국계 기업</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="type-7">
                                                                            <input type="checkbox" class="filter" name="companytype" id="type-7" value="7"> 기타</label>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                        <!-- panel-body -->
                                                    </div>
                                                </div>
                                                <!-- panel -->

                                                <!-- panel -->
                                                <div class="panel panel-default panel-faq">
                                                    <!-- panel-heading -->
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#accordion-two">
                                                                <h4> 직종<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- panel-heading -->

                                                    <div id="accordion-two" class="panel-collapse collapse">
                                                        <!-- panel-body -->
                                                        <div class="panel-body">
                                                            <label for="field-0">
                                                                <input type="checkbox" id="field-0" value="0"> 전체</label>
                                                            <label for="field-1">
                                                                <input type="checkbox" class="filter" name="field" id="field-1" value="1">서버 개발자</label>
                                                            <label for="field-2">
                                                                <input type="checkbox" class="filter" name="field" id="field-2" value="2">웹 개발자</label>
                                                            <label for="field-3">
                                                                <input type="checkbox" class="filter" name="field" id="field-3" value="3">프론트엔드 개발자</label>
                                                            <label for="field-4">
                                                                <input type="checkbox" class="filter" name="field" id="field-4" value="4">데이터 엔지니어</label>
                                                            <div class="see-more">
                                                                <button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
                                                                <ul class="more-category one">
                                                                    <li>
                                                                        <label for="field-5">
                                                                            <input type="checkbox" class="filter" name="field" id="field-5" value="5">안드로이드 개발자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-6">
                                                                            <input type="checkbox" class="filter" name="field" id="field-6" value="6">자바 개발자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-7">
                                                                            <input type="checkbox" class="filter" name="field" id="field-7" value="7">IOS 개발자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-8">
                                                                            <input type="checkbox" class="filter" name="field" id="field-8" value="8">파이썬 개발자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-9">
                                                                            <input type="checkbox" class="filter" name="field" id="field-9" value="9">C, C++ 개발자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-10">
                                                                            <input type="checkbox" class="filter" name="field" id="field-10" value="10">Node.js 개발자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-11">
                                                                            <input type="checkbox" class="filter" name="field" id="field-11" value="11">시스템, 네트워크 관리자</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-12">
                                                                            <input type="checkbox" class="filter" name="field" id="field-12" value="12">웹퍼블리셔</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-13">
                                                                            <input type="checkbox" class="filter" name="field" id="field-13" value="13">그래픽 엔지니어</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-14">
                                                                            <input type="checkbox" class="filter" name="field" id="field-14" value="14">보안 엔지니어</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-15">
                                                                            <input type="checkbox" class="filter" name="field" id="field-15" value="15">프로덕트 매니저</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="field-16">
                                                                            <input type="checkbox" class="filter" name="field" id="field-16" value="16">QA, 테스트 엔지니어</label>
                                                                    </li>
                                                                </ul>
                                                            </div>


                                                        </div>
                                                        <!-- panel-body -->
                                                    </div>
                                                </div>
                                                <!-- panel -->

                                                <!-- panel -->
                                                <div class="panel panel-default panel-faq">
                                                    <!-- panel-heading -->
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#accordion-three">
                                                                <h4> 지역<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- panel-heading -->

                                                    <div id="accordion-three" class="panel-collapse collapse">
                                                        <!-- panel-body -->
                                                        <div class="panel-body">
                                                            <label for="location-17">
                                                                <input type="checkbox" id="location-17" value="17">전국</label>
                                                            <label for="location-1">
                                                                <input type="checkbox" class="filter" name="location" id="location-1" value="1">서울</label>
                                                            <label for="location-2">
                                                                <input type="checkbox" class="filter" name="location" id="location-2" value="2">경기</label>
                                                            <label for="location-3">
                                                                <input type="checkbox" class="filter" name="location" id="location-3" value="3">광주</label>
                                                            <label for="location-4">
                                                                <input type="checkbox" class="filter" name="location" id="location-4" value="4">대구</label>
                                                            <label for="location-5">
                                                                <input type="checkbox" class="filter" name="location" id="location-5" value="5">대전</label>
                                                            <label for="location-6">
                                                                <input type="checkbox" class="filter" name="location" id="location-6" value="6">부산</label>
                                                            <div class="see-more">
                                                                <button type="button" class="show-more one"><i class="fa fa-plus-square-o" aria-hidden="true"></i>더보기</button>
                                                                <ul class="more-category one">
                                                                    <li>
                                                                        <label for="location-7">
                                                                            <input type="checkbox" class="filter" name="location" id="location-7" value="7">울산</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-8">
                                                                            <input type="checkbox" class="filter" name="location" id="location-8" value="8">인천</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-9">
                                                                            <input type="checkbox" class="filter" name="location" id="location-9" value="9">강원</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-10">
                                                                            <input type="checkbox" class="filter" name="location" id="location-10" value="10">경남</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-11">
                                                                            <input type="checkbox" class="filter" name="location" id="location-11" value="11">경북</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-12">
                                                                            <input type="checkbox" class="filter" name="location" id="location-12" value="12">전남</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-13">
                                                                            <input type="checkbox" class="filter" name="location" id="location-13" value="13">전북</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-14">
                                                                            <input type="checkbox" class="filter" name="location" id="location-14" value="14">충북</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-15">
                                                                            <input type="checkbox" class="filter" name="location" id="location-15" value="15">충남</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-16">
                                                                            <input type="checkbox" class="filter" name="location" id="location-16" value="16">제주</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-18">
                                                                            <input type="checkbox" class="filter" name="location" id="location-18" value="18">세종</label>
                                                                    </li>
                                                                    <li>
                                                                        <label for="location-19">
                                                                            <input type="checkbox" class="filter" name="location" id="location-19" value="19">기타해외</label>
                                                                    </li>
                                                                </ul>
                                                            </div>


                                                        </div>
                                                        <!-- panel-body -->
                                                    </div>
                                                </div>
                                                <!-- panel -->

                                                <div class="panel panel-default panel-faq">
                                                    <!-- panel-heading -->
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#accordion-four">
                                                                <h4> 산업군<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- panel-heading -->

                                                    <div id="accordion-four" class="panel-collapse collapse">
                                                        <!-- panel-body -->
                                                        <div class="panel-body">
                                                            <label for="industry-0">
                                                                <input type="checkbox" id="industry-0" value="0"> 전체</label>
                                                            <label for="industry-1">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-1" value="1">서비스업</label>
                                                            <label for="industry-2">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-2" value="2">생산/제조</label>
                                                            <label for="industry-3">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-3" value="3">IT/인터넷</label>
                                                            <label for="industry-4">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-4" value="4">연구개발/설계</label>
                                                            <label for="industry-5">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-5" value="5">전문/특수직</label>
                                                            <label for="industry-6">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-6" value="6">미디어</label>
                                                            <label for="industry-7">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-7" value="7">서비스</label>
                                                            <label for="industry-8">
                                                                <input type="checkbox" class="filter" name="industry" id="industry-8" value="8">건설</label>
                                                        </div>
                                                        <!-- panel-body -->
                                                    </div>
                                                </div>
                                                <!-- panel -->

                                                <div class="panel panel-default panel-faq">
                                                    <!-- panel-heading -->
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#accordion-five">
                                                                <h4> 고용형태<span class="pull-right"><i class="fa fa-plus"></i></span></h4>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- panel-heading -->

                                                    <div id="accordion-five" class="panel-collapse collapse">
                                                        <!-- panel-body -->
                                                        <div class="panel-body">
                                                            <label for="emptype-0">
                                                                <input type="checkbox" id="emptype-0">전체</label>
                                                            <label for="emptype-1">
                                                                <input type="checkbox" class="filter" name="employmenttype" id="emptype-1" value="1">정규직</label>
                                                            <label for="emptype-2">
                                                                <input type="checkbox" class="filter" name="employmenttype" id="emptype-2" value="2">계약직</label>
                                                            <label for="emptype-3">
                                                                <input type="checkbox" class="filter" name="employmenttype" id="emptype-3" value="3">병역특례</label>
                                                            <label for="emptype-4">
                                                                <input type="checkbox" class="filter" name="employmenttype" id="emptype-4" value="4">인턴직</label>
                                                            <label for="emptype-5">
                                                                <input type="checkbox" class="filter" name="employmenttype" id="emptype-5" value="5">시간제/일용직</label>
                                                            <label for="emptype-9">
                                                                <input type="checkbox" class="filter" name="employmenttype" id="emptype-9" value="6">프리랜서</label>
                                                        </div>
                                                        <!-- panel-body -->
                                                    </div>
                                                </div>
                                                <!-- panel -->

                                            </div>
                                            <!-- panel-group -->
                                        </div>
                                    </div>
                                    <!-- accordion-->
                                    </form>
                                    <!-- recommended-ads -->
                                    <div class="col-sm-8 col-md-7">
                                        <div class="section job-list-item">
                                            <div class="featured-top">
                                                <h4>모든 채용 정보  (${totCareerCnt }), 현재 ${schElement.curPage } 페이지(1 - ${schElement.pageCount})</h4>
                                                <div class="dropdown pull-right">
                                                    <div class="dropdown category-dropdown">
                                                        <h5>정렬 기준:</h5>
                                                        <a data-toggle="dropdown" href="#"><span class="change-text">최근 등록 순</span><i class="fa fa-caret-square-o-down"></i></a>
                                                        <ul class="dropdown-menu category-change">
                                                            <li><a onclick="$('form').submit()">최근 등록 순 </a>
                                                            </li>
                                                            <li><a onclick="$('form').submit()">인기 순</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- category-change -->
                                                </div>
                                            </div>
                                            <!-- featured-top -->
                                            <c:choose>
                                                    <c:when test="${totCareerCnt ne 0 }">
                                            <c:forEach var="entry" varStatus="status" items="${companyMap }">
                                                        <div class="job-ad-item">
                                                            <div class="item-info">
                                                                <div class="item-image-box">
                                                                    <div class="item-image">
                                                                        <a class="call-ajax">
                                                                            <img src="${entry.value.imageurl }" onerror="this.src='images/job/company-default.png'" alt="logo-company" class="img-responsive logo-company">
                                                                            <input type="hidden" value="${entry.value.companyid }" />
                                                                        </a>
                                                                    </div>
                                                                    <!-- item-image -->
                                                                </div>
                                                                <input type="hidden" name="companyid" value="${entry.value.companyid }" />
                                                                <div class="ad-info" style="width:80%">
                                                                    <span><a class="call-ajax title" id="call-ajax-${entry.value.companyid }">${entry.value.companyname }<input type="hidden" value="${entry.value.companyid }"/></a>
										<a tabindex="0" role="button" data-toggle="popover" data-placement="right" data-trigger="focus" data-content="북마크가 추가되었습니다." data-container="body" class="bookmark company ${entry.value.companyid } ${entry.value.bookmarked ?'selected':'unselected' }"><input type="hidden" value="${entry.value.companyid}"/>
                                                                    <img class="item-bookmark unselected" src="images/icon/bookmark-unselected.png"
                                                                    style="display: ${entry.value.bookmarked ?'none':'inline' }"/> 
                                                                    <img class="item-bookmark selected" src="images/icon/bookmark-selected.png"
                                                                    style="display: ${entry.value.bookmarked ?'inline':'none' }"/>
                                                                    </a>
										</span>
                                                                    <a href="#items-${status.count}" data-toggle="collapse"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true" style="float: right"></span></a>
                                                                    <h4>${entry.value.shortinfo }</h4>
                                                                    <div class="ad-meta">
                                                                        <div class="collapse in" id="items-${status.count }">
                                                                            <c:forEach var="career" items="${entry.value.careers }">
                                                                                <div class="position-item">
                                                                                    <span><a class="title" onclick='$("#call-ajax-${entry.value.companyid}").trigger("click")'>${career.title }</a></span>
                                                                                    <ul>
                                                                                        <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
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
													<c:otherwise>기타 해외</c:otherwise>
													</c:choose>
													</a>
                                                                                        </li>
                                                                                        <li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>
													<c:choose>
														<c:when test="${career.employmenttype eq 1}">정규직</c:when>
														<c:when test="${career.employmenttype eq 2}">계약직</c:when>
														<c:when test="${career.employmenttype eq 3}">병역특례</c:when>
														<c:when test="${career.employmenttype eq 4}">인턴직</c:when>
														<c:when test="${career.employmenttype eq 5}">시간제/일용직</c:when>
														<c:when test="${career.employmenttype eq 9}">프리랜서</c:when>
													</c:choose>
													</a>
                                                                                        </li>
                                                                                        <li><a href="#"><i class="fa fa-money" aria-hidden="true"></i>
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
														<c:otherwise>면접후 결정</c:otherwise>
													</c:choose>
													
													</a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </c:forEach>
                                                                        </div>
                                                                    </div>
                                                                    <!-- ad-meta -->
                                                                </div>
                                                                <!-- ad-info -->
                                                            </div>
                                                            <!-- item-info -->
                                                            <div class="col-xs-offset-2">
                                                            </div>
                                                        </div>
                                            </c:forEach>
                                            </c:when>
                                            <c:otherwise>
                                            	<h1>검색 결과가 없습니다 ㅠㅠ</h1>
                                            </c:otherwise>
                                            </c:choose>
                                            <!-- pagination  -->
                                            <div class="text-center">
                                                <ul class="pagination ">
                                                    <li><a href="#"><i class="fa fa-chevron-left"></i></a>
                                                    </li>
                                                    <c:forEach var="cnt" begin="1" end="${schElement.pageCount }" varStatus="sts">
                                                        <c:choose>
                                                            <c:when test="${cnt eq schElement.curPage }">
                                                                <li class="active"><a href="javascript:go(${cnt}) ">${cnt}</a>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li><a href="javascript:go(${cnt}) ">${cnt}</a>
                                                                </li>
                                                            </c:otherwise>
                                                        </c:choose>

                                                    </c:forEach>
                                                    <li><a href="#"><i class="fa fa-chevron-right"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- pagination  -->
                                        </div>
                                    </div>
                                    <!-- recommended-ads -->

                                    <div class="col-md-2 hidden-xs hidden-sm">
                                        <div class="advertisement text-center">
                                            <a href="http://cat.jp.as.criteo.com/delivery/ck.php?cppv=1&cpp=4%2FxiBnx1M0t2MHZtV2xvUVJyVHFYUFk4SkJpMTFpZm05OVlQYi85K3BBaEhPZGxjUStNWklDTHJoQlN1SUlvMHhMdGQ4dDRFNkxXZC9iMDNwb2xyakNkNHVuVmc3cTIrcHR0Tkg0b3QycFFwNmk2N1RqdDJVVUhhbXZhTzFidkFFdEVjY0RuR0F3dEZCVWVwRGQ4MXNVU1ZPajlmZzR1aDI0bW01VFNKckFkZFJpM2picXlCWHFQYkcwOFVhck16MXFUaFVlRWNVSmYrNG9MMTc2SEhRUmpXdm5tYWtQVGFuUzZkLzgyUEFjY3hnVnNaanlnM0t2UWFMWFFjcVIyRUtjekg0Mk1DcVRpVnA3c1k4cmFiT2JUZzhEL0lxbXg5ZDEzMUZzYVJ0d2JKTjlJRlZWZmNpcUs1QlI3cFUrWkprYTNCN3w%3D&maxdest=http%3A%2F%2Fwww.wishket.com%2F%3Freferer_type%3DCriteo"><img style="border:none;max-width:120px;max-height:600px;" src="http://static.criteo.net/images/staticbanners/wishketkr/161212053256_wishketkr_kr_120600.png">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- container -->
                        <!-- footer -->
                        <jsp:include page="footer.jsp" />
                    </section>
                    <!-- main -->




                    <!--/Preset Style Chooser-->
                    <div class="style-chooser">
                        <div class="style-chooser-inner">
                            <a href="#" class="toggler"><i class="fa fa-cog fa-spin"></i></a>
                            <h4>Presets</h4>
                            <ul class="preset-list clearfix">
                                <li class="preset1 active" data-preset="1">
                                    <a href="#" data-color="preset1"></a>
                                </li>
                                <li class="preset2" data-preset="2">
                                    <a href="#" data-color="preset2"></a>
                                </li>
                                <li class="preset3" data-preset="3">
                                    <a href="#" data-color="preset3"></a>
                                </li>
                                <li class="preset4" data-preset="4">
                                    <a href="#" data-color="preset4"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--/End:Preset Style Chooser-->

                    <!-- JS -->
                    <script src="js/jquery.min.js"></script>
                    <script src="js/bootstrap.min.js"></script>
                    <script src="js/price-range.js"></script>
                    <script src="js/main.js?ver=3"></script>
                    <script src="js/switcher.js"></script>
                    <script src="js/job-list.js?ver=1"></script>
                    <script type="text/javascript">
                        $(document).ready(function() {
                            $("#quetype").text("${queType}");
                            $("#search").val("${query}");
                            $("input[name=querytype]").val($("#quetype").text());

                            $(".dropdown-quetype").click(function() {
                                $("input[name=querytype]").val($(this).text());

                            })
                        });
                        var checkOptionArrays = {
                            companytype: ["${schElement.companytype[0]}", "${schElement.companytype[1]}", "${schElement.companytype[2]}", "${schElement.companytype[3]}",
                                "${schElement.companytype[4]}", "${schElement.companytype[5]}", "${schElement.companytype[6]}"
                            ],
                            field: ["${schElement.field[0]}", "${schElement.field[1]}", "${schElement.field[2]}", "${schElement.field[3]}",
                                "${schElement.field[4]}", "${schElement.field[5]}", "${schElement.field[6]}"
                            ],
                            location: ["${schElement.location[0]}",
                                "${schElement.location[1]}",
                                "${schElement.location[2]}",
                                "${schElement.location[3]}",
                                "${schElement.location[4]}",
                                "${schElement.location[5]}",
                                "${schElement.location[6]}",
                                "${schElement.location[7]}",
                                "${schElement.location[8]}",
                                "${schElement.location[9]}",
                                "${schElement.location[10]}",
                                "${schElement.location[11]}",
                                "${schElement.location[12]}",
                                "${schElement.location[13]}",
                                "${schElement.location[14]}",
                                "${schElement.location[15]}",
                                "${schElement.location[16]}",
                                "${schElement.location[17]}",
                                "${schElement.location[18]}"
                            ],
                            industry: ["${schElement.industry[0]}",
                                "${schElement.industry[1]}",
                                "${schElement.industry[2]}",
                                "${schElement.industry[3]}",
                                "${schElement.industry[4]}",
                                "${schElement.industry[5]}",
                                "${schElement.industry[6]}",
                                "${schElement.industry[7]}",
                                "${schElement.industry[8]}"
                            ],
                            employmenttype: ["${schElement.employmenttype[0]}",
                                "${schElement.employmenttype[1]}",
                                "${schElement.employmenttype[2]}",
                                "${schElement.employmenttype[3]}",
                                "${schElement.employmenttype[4]}",
                                "${schElement.employmenttype[5]}"
                            ]
                        };
                    </script>
                </body>

                </html>