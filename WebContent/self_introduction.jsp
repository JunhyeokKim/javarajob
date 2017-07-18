<%@
	page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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

<title>JAVARAJOB | MY PAGE | 자기소개서 관리</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/slidr.css">
<link rel="stylesheet" href="css/resume.css">
<link rel="stylesheet" href="css/main.css?v=1">
<link id="preset" rel="stylesheet" href="css/presets/preset1.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/table_kdb.css">
<link rel="stylesheet" href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css">
<style type="text/css">
	.std-button{float:left;}
	.dropzone-file {
		position:absolute;
		top:0px;
		right:0px; 
		z-index:50;
	}
	.dropzone-checkbox {
		position:absolute;
		top:0px;
		left:0px; 
		z-index:50;
		width:20px;
		height:20px;
		margin:0px;
	}
</style>
<!-- font -->
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!-- icons -->
<link rel="icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<!-- icons -->

<!-- form js -->
<script src="${path}/com/jquery-1.10.2.js"></script>
<script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		// ---------- 초기 값 설정 ---------- 
		var ext ="";
		$("#fileUp").val("");
		// ---------- 초기 값 설정 ----------
		
		// ---------- download ----------
		$("#downDocu").click(function(){
			if($("input:checkbox[name='fileNames']:checked").length == 1) {
				var fileName = $("input:checkbox[name='fileNames']:checked").val();
				$("form").attr("action","${path}/self_intro.do?method=download&fileName="+fileName);
				$("form").submit();
			} else if($("input:checkbox[name='fileNames']:checked").length != 0) {
				alert("다운로드는 한 번에 한 파일만 가능합니다.");
			} else alert("선택된 파일이 없습니다.");
			
		})
		// ---------- download ----------
		
		
				
		
		// ---------- Dropzone 설정 ----------
		
		// "dropArea" is the camelized version of the HTML element's ID
		var myDrop=Dropzone.options.dropArea = {
		  url:"${path}/self_intro.do?method=upload&count=0",
		  paramName: "selfIntro", // The name that will be used to transfer the file
		  maxFilesize: 5, // MB
		  dictDefaultMessage:"파일을 추가해 주세요",
		  dictInvalidFileType:"지원하지 않는 파일 형식입니다.",
		  acceptedFiles:".jpg,.pdf,.xlsx,.txt,.doc,.docx,.pptx,.ppt,.hwp,.png",
		  maxFiles:20,
		  thumbnail: function(file, dataUrl) {
			  var ext = file.name.split('.').pop();
			  if (ext == "pdf") {
			        $(file.previewElement).find(".dz-image img").attr("src", "${path}/images/ico/pdf.png");
			    } else if (ext=="doc" || ext=="docx" || ext=="hwp" || ext=="txt") {
			        $(file.previewElement).find(".dz-image img").attr("src", "${path}/images/ico/txt.png");
			    } else if (ext=="ppt" || ext=="pptx") {
			        $(file.previewElement).find(".dz-image img").attr("src", "${path}/images/ico/ppt.png");
			    }else{
			    	$(file.previewElement).find(".dz-image img").attr("src", dataUrl);
			    }
			  	$(file.previewElement).find(".dz-image img").css("height", "inherit");
		    	$(file.previewElement).find(".dz-image img").css("width", "inherit");
			  },
		  init:function() {
			  var _this = this;
			  this.on("addedfile", function(file) {
				  	file.previewElement.addEventListener("dblclick",function(e){
			        	if(confirm("다운로드??")) {
			        		$("form").attr("action","${path}/self_intro.do?method=download&fileNames="+file.name);
			        		$("form").submit();
			        	}
			        })
			        // Create the remove button
			        var removeButton = Dropzone.createElement("<button class='dropzone-file btn btn-danger' data-dz-remove>X</button>");
			        var checkboxButton= Dropzone.createElement("<input type='checkbox' class='dropzone-file dropzone-checkbox' name='fileNames' value='"+file.name+"'/>");
			        // Capture the Dropzone instance as closure.

			        // Listen to the click event
			        removeButton.addEventListener("click", function(e) {
			          // Make sure the button click doesn't submit the form:
			          e.preventDefault();
			          e.stopPropagation();
			       	// Remove the file preview.
			          if(confirm("정말 삭제하시겠습니까?")){
			        	  $.ajax({
			        		  url:"${path}/self_intro.do?method=delete&fileNames="+file.name,
			        		  method:"post",
			        		  success:function(data){
			        			  alert("삭제 되었습니다.");
			        			  _this.removeFile(file);
			        		  },
			        		  error:function(error){
			        			  alert("error 발생.");
			        		  }
			        	  })
			       		}
			          
			          // If you want to the delete the file on the server as well,
			          // you can do the AJAX request here.
			        });
			        file.previewElement.addEventListener("click",function(e) {
			        	var fileCheck=$(this).find("input[type=checkbox]");
			        	var fileIdx= _this.files.indexOf(file);
			        	if(fileCheck.prop("checked")){
			        		fileCheck.prop("checked",false);
			        		_this.files.splice(fileIdx,1);
			        	}else{
			        		fileCheck.prop("checked","checked");
			        		_this.files.push(file);
			        	}
			        	
			        })

			        // Add the button to the file preview element.
			        file.previewElement.appendChild(removeButton);
			        file.previewElement.appendChild(checkboxButton);
			      });
			  
			  $.ajax({
				  url:"${path}/self_intro.do?method=filelist",
				  datatype:"json",
				  method:"post",
				  success:function(file){
					  // Create the mock file:
						  var files=$.parseJSON(file);
						  $.each(files.filelist, function(index,item){
							  var mockFile = { name:item.fileName , size: item.fileSize, type:item.ext};
							  // Call the default addedfile event handler
							  _this.emit("addedfile", mockFile);
							  _this.emit("complete", mockFile);
							  _this.emit("thumbnail", mockFile, item.filePath);
							// If you use the maxFiles option, make sure you adjust it to the
							// correct amount:
							var existingFileCount = 1; // The number of files already uploaded
							_this.options.maxFiles = _this.options.maxFiles - existingFileCount;
							  });
						  }
				  });
			  $("#delDocu").on("click",function(){
				  console.log(_this.files)
				  var fileData="";
				  $.each(_this.files, function(index, item){
					  fileData+="&fileNames="+item.name;
				  })
				  if($(_this.files).length != 0) {
						$.ajax({
							url:"${path}/self_intro.do?method=delete"+fileData,
							method:"POST",
							success:function(data){
								 $.each(_this.files, function(index, item){
									 _this.removeFile(item);
								  })
							},
							error:function(){
								alert("실패");
							}
							
						})
					} else alert("선택된 파일이 없습니다."); 
			  })
				  
			  },
			  success:function(file,xhs) {
				  alert("업로드되었습니다.");
				  this.emit("thumbnail", file, xhs.imageUrl);
			  },
			  error:function(file, errorMessage) {
				alert(errorMessage);	  
			  }
		    }
		
		// ---------- Dropzone 설정 ----------
		
		// ---------- delete ----------
		$("#delDocu").click(function(){
			/* if($("input:checkbox[name='fileNames']:checked").length != 0) {
				$.each($("input:checkbox[name='fileNames']:checked",function(item, index){
					myDrop.removeFile(item.value);
				}))
				$.ajax({
					url:"${path}/self_intro.do?method=delete",
					data:$("form").serialize(),
					method:"POST",
					success:function(data){
						alert("삭제되었음.");
					},
					error:function(){
						alert("실패");
					}
					
				})
			} else alert("선택된 파일이 없습니다."); */
		})
		// ---------- delete ----------
		
		
	})
</script>

<!-- form js -->

</head>
<body>
	<!-- header -->
	<jsp:include page="navHeader.jsp"/>
	<!-- header -->

	<section class="job-bg-self page  ad-profile-page">
			<div class="self-overlay"></div>
			<div class="container">
				<input type="hidden" name="userId" value="${id}" />
				<input type="hidden" id="isExt" name="ext" value="" />
				<div class="breadcrumb-section">
					<!-- breadcrumb -->
					<ol class="breadcrumb">
						<li><a href="${path}/index.do">HOME</a></li>
						<li>자소서관리</li>
					</ol><!-- breadcrumb -->
					<h2 class="title">자기소개서 List</h2>
					<div class="row">
						<div class="col-mdd-3">
							<div class="sid-button">
								<input type="button" class="btn" id="delDocu" value="선택 삭제" />
							</div>
						</div>
						<div class="col-mdd-3">
							<div class="sid-button">
								<input type="button" class="btn" id="downDocu" value="다운로드" />
							</div>
						</div>
					</div>
				</div>
			
				<div class="resume-content">
					<!-- Change /upload-target to your upload address -->
					<form method="post" action="/upload-target" class="dropzone" enctype="multipart/form-data" id="drop-area" style="min-height:500px">
						<input type="hidden" name="userId" value="${id}" />
						<input type="hidden" id="isExt" name="ext" value="jpg" />
					</form>
				</div>
				<!-- resume-content -->
			</div>
			<!-- container -->
	
	<!-- ad-profile-page -->

	<!-- footer -->
	<jsp:include page="footer.jsp"/>
	<!-- /footer -->
	</section>
	
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
</body>
</html>