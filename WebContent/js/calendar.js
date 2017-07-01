$(document).ready(function(){		$('#calendar-mini').fullCalendar({			header : {				left : '',				center : 'prev title next',				right : ''			},			titleFormat:'YYYY.MM',			locale : 'ko',			aspectRatio:1.15,			buttonText:{				prev:'<',				next:'>'			}		});						$('#calendar').fullCalendar({			header : {				left : 'today',				center : 'prev title next',				right : ''			},			titleFormat:'YYYY.MM',			editable : false,			locale: 'ko',			eventRender: function (event, element) {			    element.find('.fc-title').append('<img class="item-bookmark" src="images/icon/bookmark-unselected.png">');			},		    events: function(start, end, timezone, callback) {		        $.ajax({		            url: 'calendar.do?method=careerList',		            dataType: 'json',		            data: "date="+moment($("#calendar").fullCalendar('getDate')).format('YYYY-MM'),		            success: function(doc) {		                var events = [];		                console.log(doc.careers)		                var careers= doc.careers;		                $.each(careers,function() {		                    events.push({		                        title: $(this).attr('companyname'),		                        start: $(this).attr('postdate'), // will be parsed		                        end: $(this).attr('enddate'),		                        companyid:$(this).attr('companyid')		                    });		                });		                callback(events);		            }		        });		    },		    eventClick:function(calEvent,jsEvent,view){            	var params="companyid="+calEvent.companyid;            	$.ajax({        	 		type:"POST",        	 		url:"careerlist.do?method=job-detail",        	 		data:params,        	 		success:function(args){        	 			$("#ajax-modal-detail").html(args);        	 			$("#modal-detail").modal("show");        	 			}        	 		})             },            aspectRatio:1.8		});								$("#calendar-mini .fc-next-button").on('click', function() {			$('#calendar').fullCalendar('next');		})		$("#calendar .fc-next-button").on('click', function() {			$('#calendar-mini').fullCalendar('next');		})		$("#calendar-mini .fc-prev-button").on('click', function() {			$('#calendar').fullCalendar('prev');		})		$("#calendar .fc-prev-button").on('click', function() {			$('#calendar-mini').fullCalendar('prev');		})			})			 		 		