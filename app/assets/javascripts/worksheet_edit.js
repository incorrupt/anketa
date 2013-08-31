
var speed = 400;
		
$(function() {
	
	// slide up/down depart-rows, when divisio-name clicked
	$('.depart-head').click(
		function(){
			if( $(this).hasClass('selected') ) {
				$('.departs').slideUp(speed);
				$(this).removeClass('selected');
			} else {
				$('.departs').slideUp(speed);
				$('.depart-head').removeClass('selected');
				$(this).parent('.division').children('.departs').slideDown(speed);
				$(this).addClass('selected');
			}
	});
	
	// shighlight depart-row, when depart-name clicked
	$('.depart-name').click(
		function(){
			if( $(this).children(".check-depart").is(':checked') ) {
				$(this).parent('.depart').removeClass('selected');
				$(this).children('.check-depart').prop('checked', false);
			} else {
				$(this).children('.check-depart').prop('checked', true);
				$(this).parent('.depart').addClass('selected');
			}
	});	
	
	// highlight depart-row, when checkbox clicked
	$('.check-depart').click(
		function(){
			if( $(this).is(':checked') ) {
				$(this).parent('.depart-name').parent('.depart').removeClass('selected');
				$(this).prop('checked', false);
			} else {
				$(this).prop('checked', true);
				$$(this).parent('.depart-name').parent('.depart').addClass('selected');
			}
	});	
		
	// Highlight departments user selected On load 
	$('.check-depart').each(
		function(){ 
	   		if( $(this).is(':checked') ) {
				$(this).parent('.depart-name').parent('.depart').addClass('selected'); 
			}
		});
		
});
 