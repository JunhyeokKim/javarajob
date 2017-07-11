<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html style="height: 100%; overflow: hidden;">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Theme Region">
        <meta name="description" content="">
        <title>JAVARAJOB | 채용정보 | CALENDAR</title>
        <!-- CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css?ver=4">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/icofont.css">
        <link rel="stylesheet" href="css/slidr.css">
        <link rel="stylesheet" href="css/main.css?ver=4">
        <link id="preset" rel="stylesheet" href="css/presets/preset1.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel='stylesheet' href='css/fullcalendar.css?ver=8' />
        <style type="text/css">
            @media screen and (min-width: 768px) {
            .megamenu ul {
            padding-bottom:15px;
            }
            .megamenu > .dropdown-menu {
            left:-90%;
            min-width:800px;
            } 
            }
            .dropdown-md > .dropdown-menu {
            min-width:450px;
            }
            .dropdown-lg > .dropdown-menu {
            min-width:970px;
            }
        </style>
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
                        <!-- job-details -->
                    </div>
                    <!-- container -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
        <section class="job-bg page job-list-page">
            <div class="container-fluid">
                <div id="target"></div>
                <div class="container-fluid section job-list-item">
                    <div class="row">
                        <!--  TODO: filter 추가  -->
                    </div>
                    <div class="calendar-right container-fluid">
                        <div id="header">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <ul class="nav navbar-nav col-lg-2">
                                        <li class="dropdown-lg megamenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">검색 조건 설정<span class="caret"></span></a>
                                            <div class="dropdown-menu">
                                            <form id="drop-checkbox">
                                                <ul class="list-unstyled col-lg-2 col-sm-6" role="menu">
                                                    <li>
                                                        <input type="checkbox" id="companytype-tot" value=""/>
                                                        <h3 style="display: inline-block;"><label for="companytype-tot">기업 형태</label></h3>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><label for="companytype-1"><input type="checkbox" id="companytype-1" value="1" name="companytype"/>대기업</label></li>
                                                    <li><label for="companytype-2"><input type="checkbox" id="companytype-2" value="2" name="companytype"/>중소기업</label></li>
                                                    <li><label for="companytype-3"><input type="checkbox" id="companytype-3" value="3" name="companytype"/>중견기업</label></li>
                                                    <li><label for="companytype-4"><input type="checkbox" id="companytype-4" value="4" name="companytype"/>스타트업</label></li>
                                                    <li><label for="companytype-5"><input type="checkbox" id="companytype-5" value="5" name="companytype"/>공공기관</label></li>
                                                    <li><label for="companytype-6"><input type="checkbox" id="companytype-6" value="6" name="companytype"/>외국계 기업</label></li>
                                                    <li><label for="companytype-7"><input type="checkbox" id="companytype-7" value="7" name="companytype"/>기타</label></li>
                                                </ul>
                                                <ul class="list-unstyled col-lg-2 col-sm-6" role="menu">
                                                    <li>
                                                        <input type="checkbox" id="location-tot" value=""/>
                                                        <h3 style="display: inline-block;"><label for="location-tot">지역</label></h3>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><label for="location-1"><input type="checkbox" id="location-1" value="1" name="location"/>서울</label></li>
                                                    <li><label for="location-2"><input type="checkbox" id="location-2" value="2" name="location"/>경기</label></li>
                                                    <li><label for="location-3"><input type="checkbox" id="location-3" value="3" name="location"/>광주</label></li>
                                                    <li><label for="location-4"><input type="checkbox" id="location-4" value="4" name="location"/>대구</label></li>
                                                    <li><label for="location-5"><input type="checkbox" id="location-5" value="5" name="location"/>대전</label></li>
                                                    <li><label for="location-6"><input type="checkbox" id="location-6" value="6" name="location"/>부산</label></li>
                                                    <li><label for="location-7"><input type="checkbox" id="location-7" value="7" name="location"/>울산</label></li>
                                                    <li><label for="location-8"><input type="checkbox" id="location-8" value="8" name="location"/>인천</label></li>
                                                    <li><label for="location-9"><input type="checkbox" id="location-9" value="9" name="location"/>강원</label></li>
                                                    <li><label for="location-10"><input type="checkbox" id="location-10" value="10" name="location"/>경남</label></li>
                                                    <li><label for="location-11"><input type="checkbox" id="location-11" value="11" name="location"/>경북</label></li>
                                                    <li><label for="location-12"><input type="checkbox" id="location-12" value="12" name="location"/>전남</label></li>
                                                    <li><label for="location-13"><input type="checkbox" id="location-13" value="13" name="location"/>전북</label></li>
                                                    <li><label for="location-14"><input type="checkbox" id="location-14" value="14" name="location"/>충북</label></li>
                                                    <li><label for="location-15"><input type="checkbox" id="location-15" value="15" name="location"/>충남</label></li>
                                                    <li><label for="location-16"><input type="checkbox" id="location-16" value="16" name="location"/>제주</label></li>
                                                    <li><label for="location-17"><input type="checkbox" id="location-17" value="17" name="location"/>전국</label></li>
                                                    <li><label for="location-18"><input type="checkbox" id="location-18" value="18" name="location"/>세종</label></li>
                                                    <li><label for="location-19"><input type="checkbox" id="location-19" value="19" name="location"/>기타해외</label></li>
                                                </ul>
                                                <ul class="list-unstyled col-lg-2 col-sm-6" role="menu">
                                                    <li>
                                                        <input type="checkbox" id="employmenttype-tot" value=""/>
                                                        <h3 style="display: inline-block;"><label for="employmenttype-tot">근무 형태</label></h3>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><label for="employmenttype-1"><input type="checkbox" id="employmenttype-1" value="1" name="employmenttype"/>정규직</label></li>
                                                    <li><label for="employmenttype-2"><input type="checkbox" id="employmenttype-2" value="2" name="employmenttype"/>계약직</label></li>
                                                    <li><label for="employmenttype-3"><input type="checkbox" id="employmenttype-3" value="3" name="employmenttype"/>병역특례</label></li>
                                                    <li><label for="employmenttype-4"><input type="checkbox" id="employmenttype-4" value="4" name="employmenttype"/>인턴직</label></li>
                                                    <li><label for="employmenttype-5"><input type="checkbox" id="employmenttype-5" value="5" name="employmenttype"/>시간제/일용직</label></li>
                                                    <li><label for="employmenttype-9"><input type="checkbox" id="employmenttype-9" value="9" name="employmenttype"/>프리랜서</label></li>
                                                </ul>
                                                <ul class="nav col-lg-2 col-sm-6" role="menu">
                                                    <li>
                                                        <input type="checkbox" id="date-tot" value=""/>
                                                        <h3 style="display: inline-block;"><label for="date-tot">기간</label></h3>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><label for="date-post"><input type="checkbox" id="date-post" name="date-type" class="date-type" value="1"/>공고 시작</label></li>
                                                    <li><label for="date-end"><input type="checkbox" id="date-end" name="date-type" class="date-type" value="0"/>공고 종료</label></li>
                                                </ul>
                                                <ul class="col-lg-2 col-sm-6 list-unstyled" role="menu">
                                                    <li>
                                                        <input type="checkbox" id="field-tot" value=""/>
                                                        <h3 style="display: inline-block;"><label for="field-tot">직종</label></h3>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><label for="field-1"><input type="checkbox" id="field-1" name="field" value="1"/>서버 개발자</label></li>
                                                    <li><label for="field-2"><input type="checkbox" id="field-2" name="field" value="2"/>웹 개발자</label></li>
                                                    <li><label for="field-3"><input type="checkbox" id="field-3" name="field" value="3"/>프론트엔드 개발자</label></li>
                                                    <li><label for="field-4"><input type="checkbox" id="field-4" name="field" value="4"/>데이터 엔지니어</label></li>
                                                    <li><label for="field-5"><input type="checkbox" id="field-5" name="field" value="5"/>안드로이드 개발자</label></li>
                                                    <li><label for="field-6"><input type="checkbox" id="field-6" name="field" value="6"/>자바 개발자</label></li>
                                                    <li><label for="field-7"><input type="checkbox" id="field-7" name="field" value="7"/>IOS 개발자</label></li>
                                                    <li><label for="field-8"><input type="checkbox" id="field-8" name="field" value="8"/>파이썬 개발자</label></li>
                                                    <li><label for="field-9"><input type="checkbox" id="field-9" name="field" value="9"/>C, C++ 개발자</label></li>
                                                    <li><label for="field-10"><input type="checkbox" id="field-10" name="field" value="10"/>Node.js 개발자</label></li>
                                                    <li><label for="field-11"><input type="checkbox" id="field-11" name="field" value="11"/>시스템, 네트워크 관리자</label></li>
                                                    <li><label for="field-12"><input type="checkbox" id="field-12" name="field" value="12"/>웹퍼블리셔</label></li>
                                                    <li><label for="field-13"><input type="checkbox" id="field-13" name="field" value="13"/>그래픽 엔지니어</label></li>
                                                    <li><label for="field-14"><input type="checkbox" id="field-14" name="field" value="14"/>보안 엔지니어</label></li>
                                                    <li><label for="field-15"><input type="checkbox" id="field-15" name="field" value="15"/>프로덕트 매니저</label></li>
                                                    <li><label for="field-16"><input type="checkbox" id="field-16" name="field" value="16"/>QA, 테스트 엔지니어</label></li>
                                                </ul>
                                                <ul class="list-unstyled col-lg-2 col-sm-6" role="menu">
                                                    <li>
                                                        <input type="checkbox" id="industry-tot" value=""/>
                                                        <h3 style="display: inline-block;"><label for="industry-tot">산업군</label></h3>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><label for="industry-1"><input type="checkbox" id="industry-1" name="industry" value="1"/>서비스업</label></li>
                                                    <li><label for="industry-2"><input type="checkbox" id="industry-2" name="industry" value="2"/>생산/제조</label></li>
                                                    <li><label for="industry-3"><input type="checkbox" id="industry-3" name="industry" value="3"/>IT/인터넷</label></li>
                                                    <li><label for="industry-4"><input type="checkbox" id="industry-4" name="industry" value="4"/>연구개발/설계</label></li>
                                                    <li><label for="industry-5"><input type="checkbox" id="industry-5" name="industry" value="5"/>전문/특수직</label></li>
                                                    <li><label for="industry-6"><input type="checkbox" id="industry-6" name="industry" value="6"/>미디어</label></li>
                                                    <li><label for="industry-7"><input type="checkbox" id="industry-7" name="industry" value="7"/>서비스</label></li>
                                                    <li><label for="industry-8"><input type="checkbox" id="industry-8" name="industry" value="8"/>건설</label></li>
                                                    <li><label for="industry-9"><input type="checkbox" id="industry-9" name="industry" value="9"/>유통, 무역</label></li>
                                                </ul>
                                                </form>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="input-group input-group-sm col-lg-offset-10">
							  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></span>
							  <input type="text" class="form-control" placeholder="검색할 회사명을 입력하세요" aria-describedby="basic-addon1">
							</div>
                                </div>
                            </nav>
                        </div>
                        <div class="calendar-left hidden-xs">
                            <div id="calendar-mini"></div>
                        </div>
                        <div id="calendar"></div>
                    </div>
                </div>
                <!-- container -->
            </div>
        </section>
        <!-- main -->
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
        <script src='js/jquery.min.js'></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/main.js"></script>
        <script src="js/switcher.js"></script>
        <script src='js/moment.min.js'></script>
        <script src='js/locale/ko.js'></script>
        <script src='js/fullcalendar.js?ver=2'></script>
        <script src='js/calendar.js?ver=5'></script>
        <script type="text/javascript">
        </script>
    </body>
</html>