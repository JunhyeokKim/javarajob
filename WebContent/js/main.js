jQuery(function ($) {

    'use strict';

    // -------------------------------------------------------------
    //  Placeholder
    // -------------------------------------------------------------

    (function() {

        var textAreas = document.getElementsByTagName('textarea');

        Array.prototype.forEach.call(textAreas, function(elem) {
            elem.placeholder = elem.placeholder.replace(/\\n/g, '\n');
        });

    }());


    // -------------------------------------------------------------
    //  Show 
    // -------------------------------------------------------------

    (function() {

        $("document").ready(function()
            {
                 $(".more-category.one").hide();
                $(".show-more.one").click(function()
                    {
                        $(".more-category.one").show();
                        $(".show-more.one").hide();
                    });
            });

        $("document").ready(function()
            {
                 $(".more-category.two").hide();
                $(".show-more.two").click(function()
                    {
                        $(".more-category.two").show();
                        $(".show-more.two").hide();
                    });
            });

        $("document").ready(function()
            {
                 $(".more-category.three").hide();
                $(".show-more.three").click(function()
                    {
                        $(".more-category.three").show();
                        $(".show-more.three").hide();
                    });
            });

    }());    
    

    // -------------------------------------------------------------
    //  Slider
    // -------------------------------------------------------------

    (function() {

        $('#price').slider();

    }());   
	
    
    // -------------------------------------------------------------
    //  language Select
    // -------------------------------------------------------------

   (function() {

        $('.category-dropdown').on('click', '.category-change a', function(ev) {
            if ("#" === $(this).attr('href')) {
                ev.preventDefault();
                var parent = $(this).parents('.category-dropdown');
                parent.find('.change-text').html($(this).html());
            }
        });

    }());
   

    // -------------------------------------------------------------
    // Accordion
    // -------------------------------------------------------------

        (function () {  
            $('.collapse').on('show.bs.collapse', function() {
                var id = $(this).attr('id');
                $('a[href="#' + id + '"]').closest('.panel-heading').addClass('active-faq');
                $('a[href="#' + id + '"] .panel-title span').html('<i class="fa fa-minus"></i>');
            });

            $('.collapse').on('hide.bs.collapse', function() {
                var id = $(this).attr('id');
                $('a[href="#' + id + '"]').closest('.panel-heading').removeClass('active-faq');
                $('a[href="#' + id + '"] .panel-title span').html('<i class="fa fa-plus"></i>');
            });
        }());


    // -------------------------------------------------------------
    //  Checkbox Icon Change
    // -------------------------------------------------------------

    (function () {

        $('input[type="checkbox"]').change(function(){
            if($(this).is(':checked')){
                $(this).parent("label").addClass("checked");
            } else {
                $(this).parent("label").removeClass("checked");
            }
        });

    }()); 
    
    // -------------------------------------------------------------
    //  joblist
    // -------------------------------------------------------------
    
    var popOverSettings = {
		    placement: 'right',
		    container: 'body',
		    selector: '.unselected[data-toggle="popover"]',
		    content: function () {
		        return "북마크가 추가되었습니다.";
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
	
    
    
    
    
    
	
	 // -------------------------------------------------------------
    //  select-category Change
    // -------------------------------------------------------------
	$('.select-category.post-option ul li a').on('click', function() {
		$('.select-category.post-option ul li.link-active').removeClass('link-active');
		$(this).closest('li').addClass('link-active');
	});

	$('.subcategory.post-option ul li a').on('click', function() {
		$('.subcategory.post-option ul li.link-active').removeClass('link-active');
		$(this).closest('li').addClass('link-active');
	});
	
	 // -------------------------------------------------------------
    //  calendar-responsive
    // -------------------------------------------------------------
	
   
// script end
});
