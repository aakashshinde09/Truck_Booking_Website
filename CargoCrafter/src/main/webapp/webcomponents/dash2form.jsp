<script src="../js/custom.js"></script>


<footer class="footer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<nav class="d-flex">
					<ul class="m-0 p-0">
						<li><a href="#"> Home </a></li>
						<li><a href="#"> Company </a></li>
						<li><a href="#"> Portfolio </a></li>
						<li><a href="#"> Blog </a></li>
					</ul>
				</nav>

			</div>
			<div class="col-md-6">
				<p class="copyright d-flex justify-content-end">
					&copy 2021 Design by <a href="#">Vishweb Design</a> BootStrap Admin
					Dashboard
				</p>
			</div>
		</div>
	</div>
</footer>
</div>
</div>








<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="../js/jquery-3.3.1.slim.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.3.1.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
			$('#content').toggleClass('active');
		});

		$('.more-button,.body-overlay').on('click', function() {
			$('#sidebar,.body-overlay').toggleClass('show-nav');
		});

	});
</script>
