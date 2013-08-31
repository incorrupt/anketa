
$(function() {
	
	
 	// Validation data, when Submiting form
    $("form").submit(
    	function() {
    		var fot= 7000;               // fadeout time
    		var check_counter = 0;       // счетчик выделенных отделов 
    		var f2_valid =1;             // Скорость взаимодействия 
    		var f4_valid =1;             // Клиенто-ориентированность
    		var f5_valid =1;             // Степень взаимодействия
    		var factor5,factor2,factor4; // Factors ref
    		var vm ="";                  // validation message
    		var vl = $('.validation');   // validation list ref
    		var depart;                  // Depart ref
    		
    	    $("*").removeClass('invalid');
    		$('.check-depart').each(function(){
    			if ( $(this).is(':checked') ) {
    					++check_counter;
    					depart = $(this).parent('.depart-name').parent('.depart');
    					factor2 = depart.children('.column2').children('.factor2');
    					factor4 = depart.children('.column3').children('.factor4');
    					factor5 = depart.children('.column4').children('.factor5');
    					
    					if ( factor2.val() == '' ) {
    						f2_valid = 0;
    						factor2.addClass('invalid');
    						vm ="Не выбрана 'Скорость взаимодействия' для "+$(this).parent('.depart-name').text();
    						$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
    					};
    					if ( factor5.val() == '' ) {
    						f5_valid =0;
    						factor5.addClass('invalid');
    						vm ="Не выбрана 'Степень взаимодействия' для "+$(this).parent('.depart-name').text();
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
			if ( f2_valid + f4_valid + f5_valid  !== 3 ){
      			vm ="Не все поля заполнены ";
      			$("<li><span>"+vm+"</span></li>").appendTo(vl).show().fadeOut(fot);
      			return false;	 
       		}; 
       		$(".notice").text(" ФОРМА ЗАПОЛНЕНА ВЕРНО ! ").show();
       		return true;
    	});

});
 