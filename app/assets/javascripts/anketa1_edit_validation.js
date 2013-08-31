
$(function() {
	
	// Calculate factor-1 sum, when changing value
	$(".factor1").change(
		function(){
			var sum_counter = 0;
    		$('.check-depart').each(function(){
    			if ( $(this).is(':checked') ) {
					sum_counter += parseFloat($(this).parent('.depart-name').parent('.depart').children('.column2').children('input[type=number]').val());
    			}
    		});
    		sum_counter= 100-sum_counter;
			$(".notice").text("Для доли участия осталось распределить " +sum_counter+ " %.").show().fadeOut(5000);
	});	
	
 	// Validation data, when Submiting form
    $("form").submit(
    	function() {
    		var fot= 7000;               // fadeout time
    		var check_counter = 0;       // счетчик выделенных отделов 
    		var sum_counter = 0;         // сумма доли участия
    		var f2_valid =1;             // Скорость взаимодействия 
    		var f3_valid =1;             // Квалификация персонала 
    		var f4_valid =1;             // Клиенто-ориентированность
    		var factor1,factor2,factor3; // Factors ref
    		var vm ="";                  // validation message
    		var vl = $('.validation');   // validation list ref
    		var depart;                  // Depart ref
    		
    	    $("*").removeClass('invalid');
    		$('.check-depart').each(function(){
    			if ( $(this).is(':checked') ) {
    					++check_counter;
    					depart = $(this).parent('.depart-name').parent('.depart');
    					factor1 = depart.children('.column2').children('.factor1');
    					factor2 = depart.children('.column3').children('.factor2');
    					factor3 = depart.children('.column4').children('.factor3');
    					factor4 = depart.children('.column5').children('.factor4');
    					sum_counter += parseInt( factor1.val() );
    					
    					if ( factor2.val() == '' ) {
    						f2_valid = 0;
    						factor2.addClass('invalid');
    						vm ="Не выбрана 'Скорость взаимодействия' для "+$(this).parent('.depart-name').text();
    						$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
    					};
    					if ( factor3.val() == '' ) {
    						f3_valid =0;
    						factor3.addClass('invalid');
    						vm ="Не выбрана 'Квалификация персонала' для "+$(this).parent('.depart-name').text();
    						$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
    					};
    					if ( factor4.val() == '' ) {
    						factor4.addClass('invalid');
    						f4_valid =0;
    						vm ="Не выбрана 'Клиенто-ориентированность' для "+$(this).parent('.depart-name').text(); 
    						$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
    					};
    				}
    			});
    		
      		if ( check_counter > 5  ) {
      			vm ="Выбрано более пяти отделов ("+check_counter+" выбрано).";
      			$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
        		return false;
        	};	
            if ( check_counter < 5  ) {
      			vm ="Выбрано менее пяти отделов ("+check_counter+" выбрано).";
      			$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
      			return false;
      		};
			if ( sum_counter !== 100 ){
      			vm ="Суммарная доля участия не равна 100% ("+sum_counter+"%).";
      			$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
      			return false;
      	 	}; 
			if ( f2_valid + f3_valid + f4_valid  !== 3 ){
      			vm ="Не все поля заполнены ";
      			$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
      			return false;	 
       		}; 
       		$(".notice").text(" ФОРМА ЗАПОЛНЕНА ВЕРНО ! ").show();
       		return true;
    	});

});
 