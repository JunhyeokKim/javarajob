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
		$("#listBtn").click(function(){
			$(location).attr("href",
			"${path}/boardList.do?method=list");
			
		});
	});
</script>
</head>
<body><center>
		<h3>게시판 등록</h3>
	<form method="post" action="${path}/boardList.do?method=insProc">
		<input type="hidden" name="refno" value="${board.refno}"/>		
		<table>
			<tr><td width="30%">제목</td><td><input type="text"
				 name="subject" value="${board.subject}" size="50"/></td></tr>		
			<tr><td>패드워드</td><td><input type="password"
				 value="${board.pass}"  name="pass"
				  size="50"/></td></tr>		
			<tr><td>작성자</td><td><input type="text" name="writer"
				value="${board.writer}"  size="50"/></td></tr>		
			<tr><td>이메일</td><td><input type="text" name="email"
			value="${board.email}"
			 size="50"/></td></tr>		
			<tr><td >내용</td><td ><textarea name="content" cols="40" rows="10">${board.content}</textarea></td></tr>		
	
			<tr><td colspan="2">
			<input type="button" id="listBtn" value="메인글"/>
			<input type="submit" value="등록"/></td></tr>			
		</table>
	</form>
	
</body>
</html>