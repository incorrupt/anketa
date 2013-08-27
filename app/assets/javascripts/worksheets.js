
var speed = 400;
		
$(function() {
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
	
	$('.depart-name').click(
		function(){
			if( $(this).children(".check-depart").is(':checked') ) {
				$(this).children('.check-depart').prop('checked', false);
			} else {
				$(this).children('.check-depart').prop('checked', true);
			}
	});	
		
});
 