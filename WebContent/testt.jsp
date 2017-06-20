<%@
	page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>17.06.</title>
		<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
		<style type="text/css">
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
		<h1>Testing...</h1>
		<table>
			<colgroup>
				<col width="30%" />
				<col width="10%" />
				<col width="40%" />
				<col width="10%" />
				<col width="10%" />
			</colgroup>
			<tr>
				<th>기업명</th><th>연락처</th><th>본사</th><th>매출</th><th>기업형태</th>
			</tr>
			<c:forEach var="com" items="company">
				<tr>
					<td>${com.annualsales}</td><td>${com.companyname}</td><td>${com.companyname}</td><td>${com.companyname}</td><td>${com.companyname}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>