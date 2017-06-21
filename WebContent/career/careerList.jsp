<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
		<style type="text/css">
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#schBtn").click(function(){
					$("form").submit();
				});
			})
		</script>
	</head>
	<body><center>
		<h3>채용공고 관리 페이지</h3>
		<!-- 조회 항목 -->
		<form method="post">
		<table>
			<tr><td>공고명</td><td><input type="text" name="title" value="${careerSch.title}"/></td></tr>
			<tr><td>직종</td><td><input type="text" name="field" value="${careerSch.field}"/></tr>
			<tr><td>산업군</td><td><input type="text" name="industry" value="${careerSch.industry}"/></td></tr>
			<tr><td>기업형태</td><td><input type="text" name="companytype" value="${careerSch.companytype}"/></td></tr>
			<tr><td>지역</td><td><input type="text" name="location" value="${careerSch.location}"/></td></tr>
			<tr><td>고용형태</td><td><input type="text" name="employmenttype" value="${careerSch.employmenttype}"/></td></tr>
			<tr><td colspan="2"><input type="button" id="schBtn" value="검색"/></td></tr>				
		</table>
		</form>
		<br>
		<table>
			<tr><th width="30%">공고명</th><th width="20%">직종</th><th width="15%">산업군</th><th width="15%">기업형태</th><th width="10%">지역</th><th width="10%">고용형태</th></tr>
			<c:forEach var="item" items="${careerList}">
			<tr class="data"><td>${item.title}</td><td>${item.field}</td><td>${item.industry}</td><td>${item.companytype}</td><td>${item.location}</td><td>${item.employmenttype}</td><td><fmt:formatDate value="${mem.regdate}"/></td></tr>
			</c:forEach>
			<c:if test="${careerList.size()==0}">
			<tr><td colspan="8">등록된 공고가 없습니다</td></tr>
			</c:if>
		</table>
	</body>
</html>