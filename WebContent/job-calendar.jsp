<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
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
    <link rel="stylesheet" href="css/responsive.css">
    <link rel='stylesheet' href='css/fullcalendar.css' />
	
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
	
	<section class="job-bg page job-list-page">
		<div class="container-fluid">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>Engineer/Architects</li>
				</ol><!-- breadcrumb -->						
				<h2 class="title">Calendar</h2>
			</div>
			<div class="container-fluid section job-list-item">	
			<div class="row">
			<!--  TODO: filter 추가  -->
			</div>
					<div class="calendar-left hidden-xs">
						<div id="calendar-mini"></div>
					</div>
					<div class="calendar-right container-fluid">
            			<div id="calendar" style="height:500px"></div>
            		</div>
		</div><!-- container -->
		<form action="${path }/calendar.do?method=init" method="post">
		<input type="hidden" name="month" value="hi"/>
		</form>
		</div>
	</section><!-- main -->
	<div id="target">
	</div>
	
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
    <script src="js/main.js"></script>
	<script src="js/switcher.js"></script>
	<script src='js/jquery.min.js'></script>
	<script src='js/moment.min.js'></script>
	<script src='js/locale/ko.js'></script>
	<script src='js/fullcalendar.js'></script>
	<script src='js/calendar.js'></script>
	<script type="text/javascript">
	$(document).ready(function(){
		var url="${path}/calendar.do?method=call";
		var params="month="+$("#calendar").fullCalendar('getCalendar').moment().format('MM');;
 		$.ajax({
			type:"POST",
			url:url,
			data:params,
			success:function(data){
				console.log("data");
			}
			
		})
 		
		
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		$('#calendar').fullCalendar({
			header : {
				left : 'today',
				center : 'prev title next',
				right : ''
			},
			titleFormat:'YYYY.MM',
			editable : false,
			locale: '',
			eventRender: function (event, element) {
			    element.find('.fc-title').append('<img class="item-unselected" src="images/icon/bookmark-unselected.png">');
			},
			events : [ {
				title : '',
				start : new Date(y, m, 11, 05, 30),
				end : new Date(y, m, 15, 10, 30),
				url : 'http://recruit.hyundai.com/hfront/Main.do?cmd=main&p_hgrcode=1'
			}, {
				title : '삼성',
				start : new Date(y, m, 1),
				end : new Date(y, m, 5),
				url : 'http://recruit.hyundai.com/hfront/Main.do?cmd=main&p_hgrcode=1'
			}, {
				title : '한화',
				start : new Date(y, m, 7),
				end : new Date(y, m, 10),
				url : 'http://recruit.hyundai.com/hfront/Main.do?cmd=main&p_hgrcode=1'
			} ],
			timeFormat: 'hh:mm'
		});
		
		$('#calendar-mini').fullCalendar({
			header : {
				left : '',
				center : 'prev title next',
				right : ''
			},
			titleFormat:'YYYY.MM',
			locale : 'ko',
		});
		
		$("#calendar-mini .fc-next-button").click(function() {
			$('#calendar').fullCalendar('next');	
		})
		$("#calendar .fc-next-button").click(function() {
			$('#calendar-mini').fullCalendar('next');	
		})
		$("#calendar-mini .fc-prev-button").click(function() {
			$('#calendar').fullCalendar('prev');	
		})
		$("#calendar .fc-prev-button").click(function() {
			$('#calendar-mini').fullCalendar('prev');	
		})
		
		
		
	})
	</script>
	
  </body>
</html>