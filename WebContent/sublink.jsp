<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
	<c:set var="targetStr1" value="profile-details.jsp"/>
	<c:set var="targetStr2" value="delete-account.jsp"/>
	<c:set var="targetStr3" value="bookmarkList-career.jsp"/>
	<c:set var="targetStr4" value="bookmarkList-company.jsp"/>
	<c:set var="targetStr5" value="qanda.jsp"/>
	
	<c:set var="url" value="${pageContext.request.requestURL}"/>
	<ul class="user-menu">					
						<li class="<c:if test="${fn:contains(url,targetStr1) }">active</c:if>"><a href="${path}/account.do?method=uptProcGuest1">회원정보 수정</a></li>
						<li class="<c:if test="${fn:contains(url,targetStr2) }">active</c:if>"><a href="${path}/account.do?method=delProcGuest1">탈퇴</a></li>
						<li class="<c:if test="${fn:contains(url,targetStr3) }">active</c:if>"><a href="${path}/account.do?bookmark-career">관심 직무</a></li>
						<li class="<c:if test="${fn:contains(url,targetStr4) }">active</c:if>"><a href="${path}/account.do?bookmark-company">관심 기업</a></li>
						<li class="<c:if test="${fn:contains(url,targetStr5) }">active</c:if>"><a href="${path}/account.do?qanda">Q&A</a></li>
					</ul>
	</body>
</html>