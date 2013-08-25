
var speed = 300;
		
$(function() {
	$('.depart-head').click(
		function(){
			if( $(this).hasClass('selected') ) {
				$('.depart').slideUp(speed);
				$(this).removeClass('selected');
			} else {
				$('.depart').slideUp(speed);
				$('.depart-head').removeClass('selected');
				$(this).parent('.division').children('.depart').slideDown(speed);
				$(this).addClass('selected');
			}
		});
	});