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
				$("#schbtn").click(function(){
					$("form").submit();
				});
				$(".data").dblclick(function(){
					//alert($(this).children().html());
					var id=$(this).children().html();
					$(location).attr("href","${path}/account.do?method=detail&id="+id);
				});
			})
		</script>
	</head>
	<body><center>
		<h3>회원관리 페이지</h3>		
		<!-- 조회 항목 -->
		<form method="post">
		<table>
			<tr><td>이름</td><td><input type="text" name="name" value="${memsch.name}"/></td></tr>
			<tr><td>ID</td><td><input type="text" name="id" value="${memsch.id}"/></td></tr>
			<tr><td>Phone</td><td><input type="text" name="phone" value="${memsch.phone}"/></tr>
			<tr><td>Email</td><td><input type="text" name="email" value="${memsch.email}"/></td></tr>
			<tr><td colspan="2"><input type="button" id="schbtn" value="검	색"/></td></tr>				
			
				
		</table>
		</form>
		<table>
			<tr><th width="10%">ID</th><th width="5%">이름</th><th width="5%">비밀번호</th><th width="10%">이메일</th><th width="10%">전화번호</th><th width="30%">주소</th><th width="15%">관심분야</th><th width="15%">가입일</th></tr>
			<c:forEach var="mem" items="${list}">
			<tr class="data"><td>${mem.id}</td><td>${mem.name}</td><td>${mem.password}</td><td>${mem.email}</td><td>${mem.phone}</td><td>${mem.address}</td><td>${mem.interest}</td><td><fmt:formatDate value="${mem.regdate}"/></td></tr>
			</c:forEach>
			<c:if test="${list.size()==0}">
			<tr><td colspan="8">등록된 회원이 없습니다</td></tr>
			</c:if>
		</table>
	</body>
</html>