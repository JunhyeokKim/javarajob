$(document).ready(function(){
		// ---------- Dropzone 설정 ----------
		Dropzone.options.dropArea = {
		  url:"self_intro.do?method=upload&count=0",
		  paramName: "selfIntro", // 전송할 input file의 name
		  maxFilesize: 5, // MB
		  dictDefaultMessage:"파일을 추가해 주세요",
		  dictInvalidFileType:"지원하지 않는 파일 형식입니다.",
		  acceptedFiles:".jpg,.pdf,.xlsx,.txt,.doc,.docx,.pptx,.ppt,.hwp,.png",	// 파일 확장자 지정.
		  maxFiles:20,
		  checkedFiles : new Array(),	// checkbox 리스트
		  thumbnail: function(file, dataUrl) {
			  var ext = file.name.split('.').pop();
			  if (ext == "pdf") {
			        $(file.previewElement).find(".dz-image img").attr("src", "images/ico/pdf.png");
			    } else if (ext=="doc" || ext=="docx" || ext=="hwp" || ext=="txt") {
			        $(file.previewElement).find(".dz-image img").attr("src", "images/ico/txt.png");
			    } else if (ext=="ppt" || ext=="pptx") {
			        $(file.previewElement).find(".dz-image img").attr("src", "images/ico/ppt.png");
			    }else if(dataUrl!=null){
			    	$(file.previewElement).find(".dz-image img").attr("src", dataUrl);
			    }
			  	$(file.previewElement).find(".dz-image img").css("height", "inherit");
			  },
		  init:function() {
			  var _this = this;
			  this.on("addedfile", function(file) {
				  var _i, _len;
				  for(_i=0, _len=_this.files.length; _i<_len-1; _i++) {
					  if(_this.files[_i].name == file.name){
						  alert("파일 이름이 중복됨.");
						  _this.removeFile(file);
					  }
				  }
			        // 각 file의 preivewElement에 버튼 생성
			        var removeButton = Dropzone.createElement("<button class='dropzone-file btn btn-danger' data-dz-remove>X</button>");
			        var downloadButton= Dropzone.createElement("<button class='dropzone-down btn btn-success'><span class='glyphicon glyphicon-download-alt' aria-hidden='true'></span></button>");
			        var checkboxButton= Dropzone.createElement("<input type='checkbox' class='dropzone-file dropzone-checkbox' name='fileNames' value='"+file.name+"'/>");
			        // Listen to the click event
			        removeButton.addEventListener("click", function(e) {
			          // Make sure the button click doesn't submit the form:
			          e.preventDefault();
			          e.stopPropagation();
			       	// Remove the file preview.
			          if(confirm("정말 삭제하시겠습니까?")){
			        	  $.ajax({
			        		  url:"self_intro.do?method=delete&fileNames="+file.name,
			        		  method:"post",
			        		  success:function(data){
			        			  alert("삭제 되었습니다.");
			        			  _this.removeFile(file);
			        			  var idx= _this.files.indexOf(file);
			        			  _this.files.splice(idx,1);
			        		  },
			        		  error:function(error){
			        			  alert(error);
			        		  }
			        	  })
			       		}
			          
			        });
			     // ---------- download ----------
			        downloadButton.addEventListener("click",function(e) {
			        	$("form").attr("action","self_intro.do?method=download&fileName="+file.name);
			        	$("form").submit();
			        })
			        // ---------- download ----------
			        file.previewElement.addEventListener("click",function(e) {
			        	var fileCheck=$(this).find("input[type=checkbox]");
			        	var fileIdx= _this.options.checkedFiles.indexOf(file);
			        	if(fileCheck.prop("checked")){
			        		fileCheck.prop("checked",false);
			        		_this.options.checkedFiles.splice(fileIdx,1);
			        		_this.checkedFiles.push(file);
			        	}else{
			        		fileCheck.prop("checked","checked");
			        		_this.options.checkedFiles.push(file);
			        	}
			        	
			        })
			        file.previewElement.addEventListener("mouseover",function(e) {
			        	$(this).find(".dropzone-down").css("display","block");
			        })
			        file.previewElement.addEventListener("mouseout",function(e) {
			        	$(this).find(".dropzone-down").css("display","none");
			        })

			        // preview element에 button 생성
			        file.previewElement.appendChild(removeButton);
			        file.previewElement.appendChild(checkboxButton);
			        file.previewElement.appendChild(downloadButton);
			      });
			  
			  $.ajax({
				  url:"self_intro.do?method=filelist",
				  datatype:"json",
				  method:"post",
				  success:function(file){
					  // Create the mock file:
						  var files=$.parseJSON(file);
						  $.each(files.filelist, function(index,item){
							  var mockFile = { name:item.fileName , size: item.fileSize, type:item.ext, filePath:item.filePath};
							  // Call the default addedfile event handler
							  _this.emit("addedfile", mockFile);
							  _this.emit("complete", mockFile);
							  _this.emit("thumbnail", mockFile, item.filePath);
							  _this.files.push(mockFile);
							// If you use the maxFiles option, make sure you adjust it to the
							// correct amount:
							var existingFileCount = 1; // The number of files already uploaded
							_this.options.maxFiles = _this.options.maxFiles - existingFileCount;
							  });
						  }
				  });
			  $("#delDocu").on("click",function(){
				  var fileData="";
				  $.each(_this.options.checkedFiles, function(index, item){
					  fileData+="&fileNames="+item.name;
				  })
				  if($(_this.options.checkedFiles).length != 0 && confirm("정말 삭제하시겠습니까?")) {
						$.ajax({
							url:"self_intro.do?method=delete"+fileData,
							method:"POST",
							success:function(data){
								 $.each(_this.options.checkedFiles, function(index, item){
									 _this.removeFile(item);
								  })
							},
							error:function(error){
								alert(error);
							}
						})
					} else alert("선택된 파일이 없습니다."); 
			  })
			  
			  },
			  accept:function(file, done) {
				  this.emit("thumbnail", file);
				  done();
			  },
			  error:function(file, error) {
				alert(error);	  
			  }
		    }
		
		// ---------- Dropzone 설정 ----------
		
	})