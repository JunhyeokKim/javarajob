<%@
	page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Theme Region">
<meta name="description" content="">

<title>JAVARAJOB | 이력서 작성</title>

<!-- CSS -->
<link rel="stylesheet" href="css/resume.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/main.css">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css">

<!-- font -->
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!-- iconss -->
<link rel="icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<!-- form js -->
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#picUpload").change(function(){
			if($("#picUpload").val() != "") {
				// 확장자 check
				var ext = $(this).val().split(".").pop().toLowerCase();
				switch(ext){
				case "png":
				case "jpg":
				case "jpeg":
				case "gif":
				case "bmp":
					$("#picExt").val(ext);
					break;
				default:
					alert("확장자는 png, jpg, jpeg, gif, bmp만 가능합니다.");
					$(this).val("");
				}
			}
		})
	})
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="navHeader.jsp" />
	<!-- header -->
	<form method="post" action="${path}/resume_upt.do"
		enctype="multipart/form-data">
		<input type="hidden" name="userId" value="${id}" />
		<input type="hidden" id="picExt" name="picExt" value="" />
		<div class="main-tab ng-scope">
			<div class="spec-ctrl ng-scope">
				<div class="spec-container">
					<div class="section-container spec-saver">
						<div class="section-title">
							이력서 <input type="submit" class="export-pdf" value="저장하기" />
						</div>
						<div class="section-content new ng-scope">
							<div class="specs edit-spec ng-scope basic-information">
								<div class="subtitle ng-scope">
									<div class="ng-binding must">기본 정보</div>
									<span class="ng-scope">(필수입력)</span>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="0">
										<div class="category-repeater" data-category-number="">
											<div class="image">
												<div class="image-area">
													<!-- 증명사진 공간 -->
													<img src="upload/${resume.picName}" width="100%"
														class="ng-scope" onerror="this.src='images/ico/loading.gif'">
												</div>
												<div class="image-buttons">
													<div class="btn button-blue button-bordered ng-scope">
														<label for="picUpload">이미지 올리기</label> <input type="file"
															id="picUpload" class="file_input_hidden" name="pic" value="${resume.picName}" />
													</div>

												</div>
											</div>
											<table class="basic-information-table">
												<colgroup>
													<col width="125px">
													<col width="130px">
													<col width="100px">
													<col width="0px">
													<col width="140px">
													<col width="80px">
													<col width="50px">
													<col width="95px">
												</colgroup>
												<tbody>
													<tr>
														<th>이름</th>
														<td><input type="text"
															class="small-input-text ng-pristine ng-untouched ng-valid"
															name="name" value="${resume.name}" /></td>
														<th>생년월일</th>
														<td colspan="3"><select
															class="ng-pristine ng-untouched ng-valid"
															name="birthYear">
																<option value="">-</option>
																<c:forEach var="year" begin="0" end="63" step="1">
																	<c:if test="${resume.birthYear eq 2017-year}">
																		<option value="${2017-year}"
																			class="ng-binding ng-scope" selected="selected">
																			${2017-year}</option>
																	</c:if>
																	<c:if test="${resume.birthYear ne 2017-year}">
																		<option value="${2017-year}"
																			class="ng-binding ng-scope">${2017-year}</option>
																	</c:if>
																</c:forEach>
														</select> <select class="ng-pristine ng-untouched ng-valid"
															name="birthMon">
																<option value="">-</option>
																<c:forEach var="mon" begin="1" end="12" step="1">
																	<c:if test="${resume.birthMon eq mon}">
																		<option value="${mon}" class="ng-binding ng-scope"
																			selected="selected">${mon}</option>
																	</c:if>
																	<c:if test="${resume.birthMon ne mon}">
																		<option value="${mon}" class="ng-binding ng-scope">
																			${mon}</option>
																	</c:if>
																</c:forEach>
														</select> <select class="ng-pristine ng-untouched ng-valid"
															name="birthDay">
																<option value="">-</option>
																<c:forEach var="day" begin="1" end="31" step="1">
																	<c:if test="${resume.birthDay eq day}">
																		<option value="${day}" class="ng-binding ng-scope"
																			selected="selected">${day}</option>
																	</c:if>
																	<c:if test="${resume.birthDay ne day}">
																		<option value="${day}" class="ng-binding ng-scope">
																			${day}</option>
																	</c:if>
																</c:forEach>
														</select></td>
														<th>성별</th>
														<td><select class="ng-pristine ng-untouched ng-valid"
															name="gender">
																<c:if test="${resume.gender eq null}">
																	<option value="" selected="selected">-</option>
																	<option value="0">남자</option>
																	<option value="1">여자</option>
																</c:if>
																<c:if test="${resume.gender eq '0'}">
																	<option value="">-</option>
																	<option value="0" selected="selected">남자</option>
																	<option value="1">여자</option>
																</c:if>
																<c:if test="${resume.gender eq '1'}">
																	<option value="">-</option>
																	<option value="0">남자</option>
																	<option value="1" selected="selected">여자</option>
																</c:if>
														</select></td>
													</tr>
													<tr>
														<th>전화번호</th>
														<td colspan="3"><input type="text"
															class="ng-pristine ng-untouched ng-valid" name="htel"
															value="${resume.htel }" /></td>
														<th>휴대폰번호</th>
														<td colspan="3"><input type="text"
															class="ng-pristine ng-untouched ng-valid" name="ctel"
															value="${resume.ctel }" /></td>
													</tr>
													<tr>
														<th>이메일</th>
														<td colspan="3"><input type="text"
															class="ng-pristine ng-untouched ng-valid" name="email"
															value="${resume.email }" /></td>
														<th>SNS</th>
														<td colspan="3"><input type="text"
															class="ng-pristine ng-untouched ng-valid" name="sns"
															value="${resume.sns}" /></td>
													</tr>
													<tr>
														<th>주소</th>
														<td colspan="7"><input type="text"
															class="basic-info-addr ng-pristine ng-untouched ng-valid"
															name="address" value="${resume.address }" /></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<!-- 기본정보 -->

							<!-- 우대사항 -->
							<div class="specs edit-spec ng-scope advantage">
								<div class="subtitle ng-scope">
									<div class="ng-binding must">취업우대사항</div>
									<span class="ng-scope">(필수입력)</span>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="9">
										<div class="category-repeater" data-category-number="">
											<table class="advantage-table">
												<colgroup>
													<col width="120px">
													<col width="320px">
													<col width="120px">
													<col width="320px">
												</colgroup>
												<tbody>
													<tr>
														<th>보훈사항</th>
														<td colspan="3"><c:if test="${resume.vete eq 'tru'}">
																<input type="radio" name="vete" checked="checked"
																	value="tru" class="ng-pristine ng-untouched ng-valid" />대상
																<input type="radio" name="vete" value="fals"
																	class="ng-pristine ng-untouched ng-valid" />비대상
															</c:if> <c:if test="${resume.vete eq 'fals'}">
																<input type="radio" name="vete" value="tru"
																	class="ng-pristine ng-untouched ng-valid" />대상
																<input type="radio" name="vete" value="fals"
																	checked="checked"
																	class="ng-pristine ng-untouched ng-valid" />비대상
															</c:if> <c:if test="${resume.vete eq null}">
																<input type="radio" name="vete" value="tru"
																	class="ng-pristine ng-untouched ng-valid" />대상
																<input type="radio" name="vete" value="fals"
																	class="ng-pristine ng-untouched ng-valid" />비대상
															</c:if></td>
													</tr>
													<tr>
														<th>장애여부</th>
														<td colspan="3"><c:if test="${resume.handi eq 'tru'}">
																<input type="radio" name="handi" value="tru"
																	checked="checked"
																	class="ng-pristine ng-untouched ng-valid" />대상 <input
																	type="radio" name="handi" value="fals"
																	class="ng-pristine ng-untouched ng-valid" />비대상
														</c:if> <c:if test="${resume.handi eq 'fals'}">
																<input type="radio" name="handi" value="tru"
																	class="ng-pristine ng-untouched ng-valid" />대상 <input
																	type="radio" name="handi" value="fals"
																	checked="checked"
																	class="ng-pristine ng-untouched ng-valid" />비대상
														</c:if> <c:if test="${resume.handi eq null}">
																<input type="radio" name="handi" value="tru"
																	class="ng-pristine ng-untouched ng-valid" />대상 <input
																	type="radio" name="handi" value="fals"
																	class="ng-pristine ng-untouched ng-valid" />비대상
														</c:if></td>
													</tr>
													<tr>
														<th>병역구분</th>
														<td><c:if test="${resume.milit eq null }">
																<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="0" />군필
															<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="1" />미필
															<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="2" />면제
														</c:if> <c:if test="${resume.milit eq '0' }">
																<input type="radio" name="milit" checked="checked"
																	class="ng-pristine ng-untouched ng-valid" value="0" />군필
															<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="1" />미필
															<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="2" />면제
														</c:if> <c:if test="${resume.milit eq '1' }">
																<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="0" />군필
															<input type="radio" name="milit" checked="checked"
																	class="ng-pristine ng-untouched ng-valid" value="1" />미필
															<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="2" />면제
														</c:if> <c:if test="${resume.milit eq '2' }">
																<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="0" />군필
															<input type="radio" name="milit"
																	class="ng-pristine ng-untouched ng-valid" value="1" />미필
															<input type="radio" name="milit" checked="checked"
																	class="ng-pristine ng-untouched ng-valid" value="2" />면제
														</c:if></td>
														<th>복무기간</th>
														<td><select class="ng-pristine ng-untouched ng-valid"
															name="militIniYear">
																<option value="">-</option>
																<c:forEach var="year" begin="0" end="63" step="1">
																	<c:if test="${resume.militIniYear eq 2017-year}">
																		<option value="${2017-year}" selected="selected"
																			class="ng-binding ng-scope">${2017-year}</option>
																	</c:if>
																	<c:if test="${resume.militIniYear ne 2017-year}">
																		<option value="${2017-year}"
																			class="ng-binding ng-scope">${2017-year}</option>
																	</c:if>
																</c:forEach>
														</select> <select class="ng-pristine ng-untouched ng-valid"
															name="militIniMon">
																<option value="">-</option>
																<c:forEach var="mon" begin="1" end="12" step="1">
																	<c:if test="${resume.militIniMon eq mon}">
																		<option value="${mon}" selected="selected"
																			class="ng-binding ng-scope">${mon}</option>
																	</c:if>
																	<c:if test="${resume.militIniMon ne mon}">
																		<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																	</c:if>
																</c:forEach>
														</select> <span class="duration-wave-mark"> ~ </span> <select
															class="ng-pristine ng-untouched ng-valid"
															name="militFinYear">
																<option value="">-</option>
																<c:forEach var="year" begin="0" end="63" step="1">
																	<c:if test="${resume.militFinYear eq 2017-year}">
																		<option value="${2017-year}" selected="selected"
																			class="ng-binding ng-scope">${2017-year}</option>
																	</c:if>
																	<c:if test="${resume.militFinYear ne 2017-year}">
																		<option value="${2017-year}"
																			class="ng-binding ng-scope">${2017-year}</option>
																	</c:if>
																</c:forEach>
														</select> <select class="ng-pristine ng-untouched ng-valid"
															name="militFinMon">
																<option value="">-</option>
																<c:forEach var="mon" begin="1" end="12" step="1">
																	<c:if test="${resume.militFinMon eq mon}">
																		<option value="${mon}" selected="selected"
																			class="ng-binding ng-scope">${mon}</option>
																	</c:if>
																	<c:if test="${resume.militFinMon ne mon}">
																		<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																	</c:if>
																</c:forEach>
														</select></td>
													</tr>
													<tr>
														<th>군별</th>
														<td><input type="text" value="${resume.militKind}"
															class="ng-pristine ng-untouched ng-valid"
															name="militKind" /></td>
														<th>계급</th>
														<td><input type="text"
															class="ng-pristine ng-untouched ng-valid"
															name="militRank" value="${resume.militRank}" /></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<!-- 우대사항 -->

							<!-- 고등학교 -->
							<div class="specs edit-spec ng-scope highschool">
								<div class="subtitle ng-scope">
									<div class="ng-binding must">고등학교</div>
									<span class="ng-scope">(필수입력)</span>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="1">
										<table data-category-number=""
											class="ng-scope highschool-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>기간</th>
													<td colspan="3"><select
														class="ng-pristine ng-untouched ng-valid"
														name="highIniYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.highIniYear eq 2017-year}">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.highIniYear ne 2017-year}">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="highIniMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.highIniMon eq mon}">
																	<option value="${mon}" class="ng-binding ng-scope"
																		selected="selected">${mon}</option>
																</c:if>
																<c:if test="${resume.highIniMon ne mon}">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select> <span class="duration-wave-mark"> ~ </span> <select
														class="ng-pristine ng-untouched ng-valid"
														name="highFinYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.highFinYear eq 2017-year}">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.highFinYear ne 2017-year}">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="highFinMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.highFinMon eq mon}">
																	<option value="${mon}" class="ng-binding ng-scope"
																		selected="selected">${mon}</option>
																</c:if>
																<c:if test="${resume.highFinMon ne mon}">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="highName"
														value="${resume.highName}" /></td>
													<th>분류</th>
													<td><select
														class="select-to-save ng-pristine ng-untouched ng-valid"
														name="highKind">
															<c:if test="${resume.highKind eq null}">
																<option value="" selected="selected">-</option>
																<option value="0">문과</option>
																<option value="1">이과</option>
																<option value="2">전문(실업)계</option>
																<option value="3">예체능</option>
															</c:if>
															<c:if test="${resume.highKind eq '0'}">
																<option value="">-</option>
																<option value="0" selected="selected">문과</option>
																<option value="1">이과</option>
																<option value="2">전문(실업)계</option>
																<option value="3">예체능</option>
															</c:if>
															<c:if test="${resume.highKind eq '1'}">
																<option value="">-</option>
																<option value="0">문과</option>
																<option value="1" selected="selected">이과</option>
																<option value="2">전문(실업)계</option>
																<option value="3">예체능</option>
															</c:if>
															<c:if test="${resume.highKind eq '2'}">
																<option value="">-</option>
																<option value="0">문과</option>
																<option value="1">이과</option>
																<option value="2" selected="selected">전문(실업)계</option>
																<option value="3">예체능</option>
															</c:if>
															<c:if test="${resume.highKind eq '3'}">
																<option value="">-</option>
																<option value="0">문과</option>
																<option value="1">이과</option>
																<option value="2">전문(실업)계</option>
																<option value="3" selected="selected">예체능</option>
															</c:if>
													</select></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

							<!-- 대학교 등록 -->
							<div class="specs edit-spec ng-scope university">
								<div class="subtitle ng-scope">
									<div class="ng-binding">대학교</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="2">
										<table data-category-number=""
											class="ng-scope university-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="240px">
												<col width="100px">
												<col width="130px">
												<col width="100px">
												<col width="190px">
											</colgroup>
											<tbody>
												<tr>
													<th>기간</th>
													<td colspan="5"><select
														class="ng-pristine ng-untouched ng-valid"
														name="univIniYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.univIniYear eq 2017-year}">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.univIniYear ne 2017-year}">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="univIniMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.univIniMon eq mon }">
																	<option value="${mon}" class="ng-binding ng-scope"
																		selected="selected">${mon}</option>
																</c:if>
																<c:if test="${resume.univIniMon ne mon }">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select> <span class="duration-wave-mark"> ~ </span> <select
														class="ng-pristine ng-untouched ng-valid"
														name="univFinYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="68" step="1">
																<c:if test="${resume.univFinYear eq 2022-year}">
																	<option value="${2022-year}" selected="selected"
																		class="ng-binding ng-scope">${2022-year}</option>
																</c:if>
																<c:if test="${resume.univFinYear ne 2022-year}">
																	<option value="${2022-year}"
																		class="ng-binding ng-scope">${2022-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="univFinMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.univFinMon eq mon }">
																	<option value="${mon}" class="ng-binding ng-scope"
																		selected="selected">${mon}</option>
																</c:if>
																<c:if test="${resume.univFinMon ne mon }">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select></td>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text"
														class="basic-info-addr ng-pristine ng-untouched ng-valid"
														name="univName" value="${resume.univName }" /></td>
													<th>분류</th>
													<td><select class="ng-pristine ng-untouched ng-valid"
														name="univKind">
															<c:if test="${resume.univKind eq null}">
																<option value="" selected="selected">-</option>
																<option value="0">2년제</option>
																<option value="1">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${resume.univKind eq '0'}">
																<option value="">-</option>
																<option value="0" selected="selected">2년제</option>
																<option value="1">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${resume.univKind eq '1'}">
																<option value="">-</option>
																<option value="0">2년제</option>
																<option value="1" selected="selected">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${resume.univKind eq '2'}">
																<option value="">-</option>
																<option value="0">2년제</option>
																<option value="1">3년제</option>
																<option value="2" selected="selected">4년제</option>
															</c:if>
													</select></td>
													<th>학점</th>
													<td><input
														class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" name="univScore" value="${resume.univScore}" />
														&nbsp;/&nbsp; <select
														class="ng-pristine ng-untouched ng-valid">
															<option value="?" selected="selected"></option>
															<option value="string:0" label="4.0">4.0</option>
															<option value="string:1" label="4.3">4.3</option>
															<option value="string:2" label="4.5">4.5</option>
															<option value="string:3" label="5.0">5.0</option>
															<option value="string:4" label="7.0">7.0</option>
															<option value="string:5" label="100">100</option>
													</select></td>
													<!-- 학점 select. -->
												</tr>
												<tr>
													<th>주전공</th>
													<td colspan="5"><input type="text"
														class="basic-info-addr" name="univMajor"
														value="${resume.univMajor }" /></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 대학교 등록 -->

							<!-- 대학원 등록 -->
							<div class="specs edit-spec ng-scope graduate-school">
								<div class="subtitle ng-scope">
									<div class="ng-binding">대학원</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="3">
										<table data-category-number=""
											class="ng-scope graduate-school-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="240px">
												<col width="100px">
												<col width="150px">
												<col width="80px">
												<col width="190px">
											</colgroup>
											<tbody>
												<tr>
													<th>기간</th>
													<td colspan="5"><select
														class="ng-pristine ng-untouched ng-valid"
														name="graduIniYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.graduIniYear eq 2017-year }">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.graduIniYear ne 2017-year }">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="graduIniMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.graduIniMon eq mon}">
																	<option value="${mon}" selected="selected"
																		class="ng-binding ng-scope">${mon}</option>
																</c:if>
																<c:if test="${resume.graduIniMon ne mon}">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select> <span class="duration-wave-mark"> ~ </span> <select
														class="ng-pristine ng-untouched ng-valid"
														name="graduFinYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="68" step="1">
																<c:if test="${resume.graduFinYear eq 2022-year }">
																	<option value="${2022-year}" selected="selected"
																		class="ng-binding ng-scope">${2022-year}</option>
																</c:if>
																<c:if test="${resume.graduFinYear ne 2022-year }">
																	<option value="${2022-year}"
																		class="ng-binding ng-scope">${2022-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="graduFinMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.graduFinMon eq mon}">
																	<option value="${mon}" selected="selected"
																		class="ng-binding ng-scope">${mon}</option>
																</c:if>
																<c:if test="${resume.graduFinMon ne mon}">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select></td>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text" class="basic-info-addr"
														name="graduName" value="${resume.graduName}" /></td>
													<th>분류</th>
													<td><select class="ng-pristine ng-untouched ng-valid"
														name="graduKind">
															<c:if test="${resume.graduKind eq null}">
																<option value="" selected="selected">-</option>
																<option value="3">석사과정</option>
																<option value="4">박사과정</option>
																<option value="5">석박사통합과정</option>
															</c:if>
															<c:if test="${resume.graduKind eq '3'}">
																<option value="">-</option>
																<option value="3" selected="selected">석사과정</option>
																<option value="4">박사과정</option>
																<option value="5">석박사통합과정</option>
															</c:if>
															<c:if test="${resume.graduKind eq '4'}">
																<option value="">-</option>
																<option value="3">석사과정</option>
																<option value="4" selected="selected">박사과정</option>
																<option value="5">석박사통합과정</option>
															</c:if>
															<c:if test="${resume.graduKind eq '5'}">
																<option value="">-</option>
																<option value="3">석사과정</option>
																<option value="4">박사과정</option>
																<option value="5" selected="selected">석박사통합과정</option>
															</c:if>
													</select></td>
													<th>학점</th>
													<td><input
														class="gradu-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" name="graduScore"
														value="${resume.graduScore }" /> &nbsp;/&nbsp; <select
														class="ng-pristine ng-untouched ng-valid">
															<option value="?" selected="selected"></option>
															<option value="string:0" label="4.0">4.0</option>
															<option value="string:1" label="4.3">4.3</option>
															<option value="string:2" label="4.5">4.5</option>
															<option value="string:3" label="5.0">5.0</option>
															<option value="string:4" label="7.0">7.0</option>
															<option value="string:5" label="100">100</option>
													</select></td>
													<!-- 대학원 학점 -->
												</tr>
												<tr>
													<th>주전공</th>
													<td colspan="5"><input type="text"
														class="basic-info-addr" name="graduMajor"
														value="${resume.graduMajor}" /></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 대학원 등록 -->

							<!-- 자격증 -->
							<div class="specs edit-spec ng-scope certificate">
								<div class="subtitle ng-scope">
									<div class="ng-binding">자격/면허</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="4">
										<table data-category-number=""
											class="ng-scope certificate-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>이름</th>
													<td colspan="3"><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="licenName"
														value="${resume.licenName }" /></td>
												</tr>
												<tr>
													<th>발행처/기관</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														name="licenInsti" value="${resume.licenInsti }" /></td>
													<th>등급</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="licenGrad"
														value="${resume.licenGrad }" /></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 자격증 -->

							<!-- 경력 -->
							<div class="specs edit-spec ng-scope career">
								<div class="subtitle ng-scope">
									<div class="ng-binding">경력</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="5">
										<table data-category-number=""
											class="ng-scope career-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>회사명</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="jobName"
														value="${resume.jobName }" /></td>
													<th>기간</th>
													<td><select class="ng-pristine ng-untouched ng-valid"
														name="jobIniYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.jobIniYear eq 2017-year }">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.jobIniYear ne 2017-year }">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="jobIniMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.jobIniMon eq mon}">
																	<option value="${mon}" class="ng-binding ng-scope"
																		selected="selected">${mon}</option>
																</c:if>
																<c:if test="${resume.jobIniMon ne mon}">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select> <span class="duration-wave-mark"> ~ </span> <select
														class="ng-pristine ng-untouched ng-valid"
														name="jobFinYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.jobFinYear eq 2017-year }">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.jobFinYear ne 2017-year }">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="jobFinMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.jobFinMon eq mon}">
																	<option value="${mon}" class="ng-binding ng-scope"
																		selected="selected">${mon}</option>
																</c:if>
																<c:if test="${resume.jobFinMon ne mon}">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select></td>
												</tr>
												<tr>
													<th>직급</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="jobRank"
														value="${resume.jobRank}" /></td>
													<th>부서</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="jobDept"
														value="${resume.jobDept }" /></td>
												</tr>
												<tr class="assignment">
													<th>담당업무</th>
													<td colspan="3"><textarea
															class="ng-pristine ng-untouched ng-valid"
															name="jobContent">
														${resume.jobContent}
													</textarea></td>
												</tr>
												<tr class="resignation">
													<th>퇴사사유</th>
													<td colspan="3"><textarea
															class="ng-pristine ng-untouched ng-valid" name="jobFire">
														${resume.jobFire}
													</textarea></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 경력 -->

							<!-- 어학 -->
							<div class="specs edit-spec ng-scope language">
								<div class="subtitle ng-scope">
									<div class="ng-binding">어학</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="6">
										<table data-category-number=""
											class="ng-scope language-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>외국어명</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="langName"
														value="${resume.langName }" /></td>
													<th>시험명</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="langTest"
														value="${resume.langTest }" /></td>
												</tr>
												<tr>
													<th>점수/등급</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="langScore"
														value="${resume.langScore }" /></td>
													<th>취득일</th>
													<td><select class="ng-pristine ng-untouched ng-valid"
														name="langDateYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.langDateYear eq 2017-year }">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.langDateYear ne 2017-year }">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="langDateMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.langDateMon eq mon }">
																	<option value="${mon}" selected="selected"
																		class="ng-binding ng-scope">${mon}</option>
																</c:if>
																<c:if test="${resume.langDateMon ne mon }">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="langDateDay">
															<option value="">-</option>
															<c:forEach var="day" begin="1" end="31" step="1">
																<c:if test="${resume.langDateDay eq day }">
																	<option value="${day}" selected="selected"
																		class="ng-binding ng-scope">${day}</option>
																</c:if>
																<c:if test="${resume.langDateDay ne day }">
																	<option value="${day}" class="ng-binding ng-scope">${day}</option>
																</c:if>
															</c:forEach>
													</select></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 어학 -->

							<!-- 수상경력 -->
							<div class="specs edit-spec ng-scope award">
								<div class="subtitle ng-scope">
									<div class="ng-binding">수상경력</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="7">
										<table data-category-number=""
											class="ng-scope award-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>수상명</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid" name="awardName"
														value="${resume.awardName }" /></td>
													<th>수상내용</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														name="awardContent" value="${resume.awardContent }" /></td>
												</tr>
												<tr>
													<th>수여기관</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														name="awardInsti" value="${resume.awardInsti }" /></td>
													<th>수상일</th>
													<td><select class="ng-pristine ng-untouched ng-valid"
														name="awardDateYear">
															<option value="">-</option>
															<c:forEach var="year" begin="0" end="63" step="1">
																<c:if test="${resume.awardDateYear eq 2017-year }">
																	<option value="${2017-year}" selected="selected"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
																<c:if test="${resume.awardDateYear ne 2017-year }">
																	<option value="${2017-year}"
																		class="ng-binding ng-scope">${2017-year}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="awardDateMon">
															<option value="">-</option>
															<c:forEach var="mon" begin="1" end="12" step="1">
																<c:if test="${resume.awardDateMon eq mon }">
																	<option value="${mon}" selected="selected"
																		class="ng-binding ng-scope">${mon}</option>
																</c:if>
																<c:if test="${resume.awardDateMon ne mon }">
																	<option value="${mon}" class="ng-binding ng-scope">${mon}</option>
																</c:if>
															</c:forEach>
													</select> <select class="ng-pristine ng-untouched ng-valid"
														name="awardDateDay">
															<option value="">-</option>
															<c:forEach var="day" begin="1" end="31" step="1">
																<c:if test="${resume.awardDateDay eq day }">
																	<option value="${day}" selected="selected"
																		class="ng-binding ng-scope">${day}</option>
																</c:if>
																<c:if test="${resume.awardDateDay ne day }">
																	<option value="${day}" class="ng-binding ng-scope">${day}</option>
																</c:if>
															</c:forEach>
													</select></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 수상경력 -->

							<!-- 해외연수 -->
							<div class="specs edit-spec ng-scope abroad">
								<div class="subtitle ng-scope">
									<div class="ng-binding">해외연수</div>
								</div>
								<div class="content ng-scope">
									<div class="category-wrapper ng-scope" data-category="8">
										<table data-category-number=""
											class="ng-scope abroad-table category-repeater">
											<colgroup>
												<col width="120px">
												<col width="320px">
												<col width="120px">
												<col width="320px">
											</colgroup>
											<tbody>
												<tr>
													<th>국가</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														name="abroadNation" value="${resume.abroadNation }" /></td>
													<th>기관</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														name="abroadInsti" value="${resume.abroadInsti}" /></td>
												</tr>
												<tr class="objective">
													<th>목적 및 내용</th>
													<td colspan="3"><textarea
															class="ng-pristine ng-untouched ng-valid"
															name="abroadCont">
														${resume.abroadCont}
													</textarea></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 해외연수 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

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
	<jsp:include page="footer.jsp" />
	<!-- /footer -->
	<!-- JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/main.js"></script>
	<script src="js/switcher.js"></script>
</body>
</html>