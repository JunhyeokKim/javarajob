$(document).ready(function(){		$('#calendar-mini').fullCalendar({			header : {				left : '',				center : 'prev title next',				right : ''			},			titleFormat:'YYYY.MM',			locale : 'ko',			aspectRatio:1.15,			buttonText:{				prev:'<',				next:'>'			}		});				// popover 동적 element setting		var popOverSettings = {			    placement: 'right',			    container: 'body',			    selector: '.unselected[data-toggle="popover"]',			    content: function () {			        return "북마크가 추가되었습니다.";			    }			}			$("#calendar").popover(popOverSettings);			$("#calendar").on('shown.bs.popover','[data-toggle="popover"]', function () {	    	var popObj=$(this);	    	setTimeout(function(){	    		popObj.popover('hide');		    		},2000)	    		})	    // ajax modal window 종료 시 callback		$("#modal-detail").on("hidden.bs.modal",function(e){			$("#ajax-modal-detail").html("");			location.reload();		})				// bookmark 추가, 제거를 위한 ajax call 함수		function callAjax(method,target,index,selector){	        	var img1=selector.find("img:first");	        	var img2=selector.find("img:last");	            $.ajax({	                type:"POST",	                url:"careerlist.do?"+"target="+target+"&method="+method+"&index="+index,	                success:function(data){	                	if(method=="bookmark"){	                		img1.css("display","none")	                		img2.css("display","block");	                		selector.addClass("selected").removeClass("unselected");	                	}	                	else if(method=="rmBookmark"){	                		img1.css("display","block")	                        img2.css("display","none");	                		selector.addClass("unselected").removeClass("selected");	                	}	                		                }	        })	        }						$('#calendar').fullCalendar({			header : {				left : 'today',				center : 'prev title next',				right : ''			},			titleFormat:'YYYY.MM',			editable : false,			locale: 'ko',			eventRender: function (event, element) {				var tags="<a data-toggle='popover' class='bookmark company "+(event.bookmarked? "selected" : "unselected")+				"' style='float:right;'><input type='hidden' value='"+event.companyid+"'/><img class='item-bookmark unselected' src='images/icon/bookmark-unselected.png' "+				"style='display:"+(event.bookmarked ? "none" : "block")+"'/>"+				"<img class='item-bookmark selected' src='images/icon/bookmark-selected.png' "+				"style='display:"+(event.bookmarked ? "block" : "none")+"'/>"+				"</a>";			    element.find('.fc-content').append(tags);			},		    events: function(start, end, timezone, callback) {		        $.ajax({		            url: 'calendar.do?method=companylist',		            dataType: 'json',		            data: "date="+moment($("#calendar").fullCalendar('getDate')).format('YYYY-MM'),		            success: function(doc) {		                var events = [];		                var companys= doc.companys;		                $.each(companys,function() {		                    events.push({		                        title: "시작: "+$(this).attr('companyname'),		                        start: $(this).attr('firstpostdate'), // will be parsed		                        end: $(this).attr('firstpostdate'),		                        companyid:$(this).attr('companyid'),		                        bookmarked:$(this).attr('bookmarked')		                    });		                    events.push({		                        title: "끝: "+$(this).attr('companyname'),		                        start: $(this).attr('lastenddate'), // will be parsed		                        end: $(this).attr('lastenddate'),		                        companyid:$(this).attr('companyid'),		                        bookmarked:$(this).attr('bookmarked')		                    });		                });		                callback(events);		            }		        });		    },		    eventClick:function(calEvent,jsEvent,view){		    	var $element=$(jsEvent.target);		    	if($element.hasClass("item-bookmark")){		    		// bookmark 클릭 시, ajax 호출을 하지 않는다		    	}		    	else{		    		var params="companyid="+calEvent.companyid;		            $.ajax({		                type:"POST",		                url:"careerlist.do?method=job-detail",		                data:params,		                success:function(args){		                    $("#ajax-modal-detail").html(args);		                    $("#modal-detail").modal("show");		                    }		                }) 		    	}	        		        },	        aspectRatio:1.8,	        displayEventTime:false		});		$("#calendar").on("click",".bookmark",function(event){			var index=$(this).find("input[type=hidden]").val();	    	var method;	    	var target;	    	if($(this).hasClass("selected")){	    		method="rmBookmark";	    	}else if($(this).hasClass("unselected")){	    		method="bookmark";	    	}	    	if($(this).hasClass("career")){	    		target="career";	    	} else if($(this).hasClass("company")){	    		target="company";	    	}	    	callAjax(method,target,index,$(this));		})										$("#calendar-mini .fc-next-button").on('click', function() {			$('#calendar').fullCalendar('next');		})		$("#calendar .fc-next-button").on('click', function() {			$('#calendar-mini').fullCalendar('next');		})		$("#calendar-mini .fc-prev-button").on('click', function() {			$('#calendar').fullCalendar('prev');		})		$("#calendar .fc-prev-button").on('click', function() {			$('#calendar-mini').fullCalendar('prev');		})			})			 		 		