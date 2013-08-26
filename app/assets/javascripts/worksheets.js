
var speed = 450;
		
$(function() {
	$('.depart-head').click(
		function(){
			if( $(this).hasClass('selected') ) {
				//alert("+sel");
				$('.departs').slideUp(speed);
				$(this).removeClass('selected');
			} else {
				$('.departs').slideUp(speed);
				$('.depart-head').removeClass('selected');
				$(this).parent('.division').children('.departs').slideDown(speed);
				$(this).addClass('selected');
			}
		});
	});