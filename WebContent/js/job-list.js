/**
 * 
 */


$(document).ready(function(){
    	$(".call-ajax").click(function(){
   		 var url="careerlist.do?method=job-detail";
   	 		var params="companyid="+$(this).find('input[type=hidden]').val();
   	 		console.log(params);
   	 		$.ajax({
   	 		type:"POST",
   	 		url:url,
   	 		data:params,
   	 		success:function(args){
   	 			$("#ajax-modal-detail").html(args);
   	 			$("#modal-detail").modal("show");
   	 			}
   	 		})
   	 })
    })
    
    
		
		$('#type-0').click(function(){
            if($(this).prop('checked')){
                $('input[name=companytype]:checkbox').each(function(){
                    $(this).parent('label').addClass('checked');
                    $(this).prop('checked','checked');
                })
            } else {
                $('input[name=companytype]:checkbox').each(function(){
                    $(this).parent('label').removeClass('checked');
                    $(this).removeProp('checked');
                    console.log(this.checked);
                })
            }
      });
		$('#field-0').click(function(){
            if($(this).prop('checked')){
                $('input[name=field]:checkbox').each(function(){
                    $(this).parent('label').addClass('checked');
                    $(this).prop('checked','checked');
                })
            } else {
                $('input[name=field]:checkbox').each(function(){
                    $(this).parent('label').removeClass('checked');
                    $(this).removeProp('checked');
                    console.log(this.checked);
                })
            }
      });
		$('#location-17').click(function(){
            if($(this).prop('checked')){
                $('input[name=location]:checkbox').each(function(){
                    $(this).parent('label').addClass('checked');
                    $(this).prop('checked','checked');
                })
            } else {
                $('input[name=location]:checkbox').each(function(){
                    $(this).parent('label').removeClass('checked');
                    $(this).removeProp('checked');
                    console.log(this.checked);
                })
            }
      });
		$('#industry-0').click(function(){
			if($(this).prop('checked')){
                $('input[name=industry]:checkbox').each(function(){
                    $(this).parent('label').addClass('checked');
                    $(this).prop('checked','checked');
                })
            } else {
                $('input[name=industry]:checkbox').each(function(){
                    $(this).parent('label').removeClass('checked');
                    $(this).removeProp('checked');
                    console.log(this.checked);
                })
            }
      });
		$('#emptype-0').click(function(){
			if($(this).prop('checked')){
                $('input[name=employmenttype]:checkbox').each(function(){
                    $(this).parent('label').addClass('checked');
                    $(this).prop('checked','checked');
                })
            } else {
                $('input[name=employmenttype]:checkbox').each(function(){
                    $(this).parent('label').removeClass('checked');
                    $(this).removeProp('checked');
                    console.log(this.checked);
                })
            }
      });
		
		 $("#modal-detail").on('hidden.bs.modal',function(){
			 location.reload();
         });
		
    function go(curPage){
		$("input[name=curPage]").val(curPage);
		$("form").attr("action","careerlist.do?method=sch")
		$("form").submit();
	}
	
		function callAjax(method,target,index,selector){
            var img1=selector.find("img:first");
            var img2=selector.find("img:last");
            $.ajax({
                type:"POST",
                url:"careerlist.do?"+"target="+target+"&method="+method+"&index="+index,
                success:function(data){
                    if(method=="bookmark"){
                        img1.css("display","none")
                        img2.css("display","block");
                        selector.addClass("selected").removeClass("unselected");
                    }
                    else if(method=="rmBookmark"){
                        img1.css("display","block")
                        img2.css("display","none");
                        selector.addClass("unselected").removeClass("selected");
                    }
                    
                }
        })
        }
        $(".bookmark").click(function(){
            var index=$(this).find("input[type=hidden]").val();
            var method;
            var target;
            if($(this).hasClass("selected")){
                method="rmBookmark";
            }else if($(this).hasClass("unselected")){
                method="bookmark";
            }
            if($(this).hasClass("career")){
                target="career";
            } else if($(this).hasClass("company")){
                target="company";
            }
            callAjax(method,target,index,$(this));
        })
        
        
    
    var popOverSettings = {
		    placement: 'right',
		    container: 'body',
		    selector: '.unselected[data-toggle="popover"]',
		    content: function () {
		        return "북마크 되었습니다.";
		    }
		}
		$('body').popover(popOverSettings);
	
	$('.bookmark').on('shown.bs.popover', function () {
	    	var popObj=$(this);
	    	setTimeout(function(){
	    		popObj.popover('hide');	
	    		},2000)
	    		})
	   		
	 
	$(".filter").each(function(index,item){
		 var name=$(this).attr('name');
		 var arrays=checkOptionArrays[name];
		for(var i=0; i<arrays.length; i++){
			if($(this).val()==arrays[i]){
				$(this).prop('checked','checked');
				$(this).parent('label').addClass('checked');
			} 
		}
	})
	
	$('.panel').on('hide.bs.collapse', function (e) {
		var icon=$("#"+e.target.id).parent().find(".panel-title i");
		if(icon.hasClass("fa-plus")){
			icon.removeClass("fa-plus").addClass("fa-minus");
		}else if(icon.hasClass("fa-minus")){
			icon.removeClass("fa-minus").addClass("fa-plus");
		}
	})
		
	$('.panel').on('show.bs.collapse', function (e) {
		var icon=$("#"+e.target.id).parent().find(".panel-title i");
		if(icon.hasClass("fa-plus")){
			icon.removeClass("fa-plus").addClass("fa-minus");
		}else if(icon.hasClass("fa-minus")){
			icon.removeClass("fa-minus").addClass("fa-plus");
		}
	})
	
		