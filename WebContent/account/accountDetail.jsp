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
				$("#delBtn").click(function(){					
					var id = $("input[name=id]").val();			
					$(location).attr("href","${path}/accountList.do?method=delProc&id="+id);	
				});			
			})
		</script>
	</head>
	<body><center>
		<h1>회원상세 페이지</h1>
		
		<form method="post" action="${path}/accountList.do?method=uptProc">		
		<table>
			<tr>
				<td>이름</td><td>${mem.name}</td>
			</tr>
			<tr>
				<td>ID</td><td>${mem.id}<input type="hidden" value="${mem.id}" name="id"/></td>
			</tr>
			<tr>
				<td>PW</td><td><input type="text" value="${mem.password}" name="password"/></td>
			</tr>
			<tr>
				<td>EMAIL</td><td><input type="text" value="${mem.email}" name="email"/></td>
			</tr>
			<tr>
				<td>PHONE</td><td><input type="text" value="${mem.phone}" name="phone"/></td>
			</tr>
			<tr>
				<td>주소</td><td><input type="text" value="${mem.address}" name="address"/></td>
			</tr>
			<tr>
				<td>관심분야</td><td><input type="text" value="${mem.interest}" name="interest"/></td>
			</tr>
			<tr>
				<td>가입일자</td><td>${mem.regdate}</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="UPDATE"/>	
					<input type="button" value="DELETE" id="delBtn"/>
				</td>
			</tr>			
		</table>
		</form>
	</body>
</html>