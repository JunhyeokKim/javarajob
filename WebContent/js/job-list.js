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
		$("form").attr("action","${path}/careerlist.do?method=sch")
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
        
        
		