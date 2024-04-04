<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
.navbar {
	background: #009FFF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #ec2F4B, #009FFF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #ec2F4B, #009FFF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand text-light" href="index.jsp"><i
				class="fa-solid fa-truck-moving"></i></i> RoadHauler</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active text-light"
						aria-current="page" href="register.jsp"><i
							class="fa-solid fa-calendar-check"></i> Register</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"><i class="fa-solid fa-user"></i>
							Login</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"><i
							class="fa-solid fa-user-doctor"></i> Booking Details</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"><i class="fa-solid fa-user-tie"></i>
							Admin</a></li>


				</ul>

			</div>
		</div>
	</nav>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>