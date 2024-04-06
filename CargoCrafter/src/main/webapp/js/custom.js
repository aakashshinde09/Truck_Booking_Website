//Optional JavaScript -->
//	<!-- jQuery first, then Popper.js, then Bootstrap JS -->




$(document).ready(function() {
	$('#sidebarCollapse').on('click', function() {
		$('#sidebar').toggleClass('active');
		$('#content').toggleClass('active');
	});

	$('.more-button,.body-overlay').on('click', function() {
		$('#sidebar,.body-overlay').toggleClass('show-nav');
	});

});