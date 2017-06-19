<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
<style type="text/css">

</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
</head>
<body><center>
	<h1>게시판 등록</h1>
	<form method="post" action="${path}/boardList.do?method=insProc">
		<table>
			<tr><td width="30%">제목</td><td><input type="text" name="subject" size="50"/></td></tr>
			<tr><td>비밀번호</td><td><input type="password" name="pass"/></td></tr>
			<tr><td>작성자</td><td><input type="text" name="writer"/></td></tr>
			<tr><td>이메일</td><td><input type="text" name="email"/></td></tr>
			<tr><td>내용</td><td colspan="2"><textarea name="content" cols="50" rows="10" size="100%"></textarea></td></tr>
			<tr><td colspan="2"><input type="submit" value="등록"/></td></tr>
		</table>
	</form>
	
</body>
</html>