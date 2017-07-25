<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JAVARAJOB | Page를 찾을 수 없습니다.</title>
		<!-- font -->
		<link
			href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300'
			rel='stylesheet' type='text/css'>
		<link
			href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700'
			rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<style type="text/css">
		body { background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABZ0RVh0Q3JlYXRpb24gVGltZQAxMC8yOS8xMiKqq3kAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzVxteM2AAABHklEQVRIib2Vyw6EIAxFW5idr///Qx9sfG3pLEyJ3tAwi5EmBqRo7vHawiEEERHS6x7MTMxMVv6+z3tPMUYSkfTM/R0fEaG2bbMv+Gc4nZzn+dN4HAcREa3r+hi3bcuu68jLskhVIlW073tWaYlQ9+F9IpqmSfq+fwskhdO/AwmUTJXrOuaRQNeRkOd5lq7rXmS5InmERKoER/QMvUAPlZDHcZRhGN4CSeGY+aHMqgcks5RrHv/eeh455x5KrMq2yHQdibDO6ncG/KZWL7M8xDyS1/MIO0NJqdULLS81X6/X6aR0nqBSJcPeZnlZrzN477NKURn2Nus8sjzmEII0TfMiyxUuxphVWjpJkbx0btUnshRihVv70Bv8ItXq6Asoi/ZiCbU6YgAAAABJRU5ErkJggg==);}
		.error-template {padding: 40px 15px;text-align: center;}
		.error-actions {margin-top:15px;margin-bottom:15px;}
		.error-actions .btn { margin-right:10px; }
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
	</head>
	<body>
		<div class="container">
		    <div class="row">
		        <div class="col-md-12">
		            <div class="error-template">
		                <h1>
		                    이런!!</h1>
		                <h2>
		                    페이지 접근 권한이 없습니다.</h2>
		                <div class="error-details">
		                    잘못된 접근을 시도하고 있습니다. 로그인 후 다시 시도해주시기 바랍니다.<br>
		                </div>
		                <div class="error-actions">
		                    <a href="${path }/index.do" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
		                        Take Me Home </a><a href="http://www.jquery2dotnet.com" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> Contact Support </a>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>