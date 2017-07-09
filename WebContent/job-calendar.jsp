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
<link rel="stylesheet" href="css/main.css?ver=6">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css">
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
    min-width:850px;
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
				<div class="calendar-left hidden-xs">
					<div id="calendar-mini"></div>
				</div>
				<div class="calendar-right container-fluid">
					<div id="header">
					   <nav class="navbar navbar-default">
  <div class="container-fluid">
  <ul class="nav navbar-nav">
      <li class="dropdown megamenu">
           <a href="#" class="dropdown-toggle" data-toggle="dropdown">검색 조건 설정<span class="caret"></span></a>
            <div class="dropdown-menu">
              <ul class="list-unstyled col-lg-3 col-sm-6" role="menu">
                <li><input type="checkbox" id="loc-total" value=""/><h3 style="display: inline-block;"><label for="loc-total">지역</label></h3></li> 
                <li class="divider"></li>
                <li><a ><select>
                    <option value="0">전체</option>
                    <option value="17">전국</option>
                    <option value="1">서울</option>
                    <option value="2">경기</option>
                </select></a></li>
              </ul>
              <ul class="nav col-lg-3 col-sm-6" role="menu">
                <li><input type="checkbox" id="job-total" value=""/><h3 style="display: inline-block;"><label for="job-total">기간</label></h3></li>
                <li class="divider"></li>
                <li><label for="job-start"><input type="checkbox" id="job-start" value=""/>공고 시작</label></li>
                <li><label for="job-end"><input type="checkbox" id="job-end" value=""/>공고 종료</label></li>
              </ul>
              <ul class="col-lg-3 col-sm-6 list-unstyled" role="menu">
                <li><input type="checkbox" id="field-total" value=""/><h3 style="display: inline-block;"><label for="field-total">직종</label></h3></li>
                <li class="divider"></li>
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Link</a></li>
                <li><a href="#">Link</a></li>
                <li class="divider"></li>
                <li><a href="#" class="btn btn-primary pull-right">OK</a></li>
                <li><p class="small text-muted">small text here</p></li>
              </ul>
              <ul class="list-unstyled col-lg-3 col-sm-6" role="menu">
                <li><input type="checkbox" id="industry-total" value=""/><h3 style="display: inline-block;"><label for="industry-total">산업군</label></h3></li> 
                <li class="divider"></li>
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more link</a></li>
              </ul>
            </div>
      </li>
  </ul>
  </div>
</nav>


					</div>
					<div id="calendar" style="height: 500px"></div>
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
	<script src='js/calendar.js?ver=3'></script>
	<script type="text/javascript">
	$(".dropdown-menu").click(function(e){
		e.stopPropagation();
	})
	</script>
</body>
</html>