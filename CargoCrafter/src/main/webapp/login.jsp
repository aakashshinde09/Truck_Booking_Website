<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url("components/hero.jpg");
	flex-direction: row;
	background-color: rgba(0, 0, 0, 0.7);
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	width: 100%;
	height: 115vh;
	display: flex;
	flex-direction: row;
}

.bg-image {
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
	display: flex;
	flex-direction: row;
	height: 100vh;
	width: 100%;
	align-items: center;
}

.left {
	flex: 1.2;
	padding: 40px;
	background-color: rgba(0, 0, 0, 0.7);
}

img {
	height: 80%;
	width: 100%;
}

.right {
	flex: 1.3;
	padding: 0px;
	background-color: rgba(0, 0, 0, 0.7);
}

.heading {
	font-size: 2.9rem;
	margin-bottom: 1rem;
	color: #f10365;
	text-align: justify;
	margin-top: 15px;
}

.text {
	font-size: 1.2rem;
	line-height: 1.5;
	margin-bottom: 2rem;
	color: white;
	text-align: justify;
	margin-top: 60px;
}

.form {
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: rgba(255, 255, 255, 0); /* changed to transparent */
	padding: 40px;
	border-radius: 10px;
}

.formHeading {
	font-size: 2rem;
	margin-bottom: 2rem;
	color: white;
}

.formLabel {
	font-size: 1.2rem;
	margin-bottom: 0.5rem;
}

.formInput {
	padding: 0.5rem;
	margin-bottom: 1rem;
	font-size: 1.2rem;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.formButton {
	padding: 0.5rem 2rem;
	font-size: 1.2rem;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.formButton:hover {
	background-color: #0069d9;
}

@media screen and (max-width: 768px) {
	.container {
		flex-direction: column;
		height: auto;
	}
	.left {
		flex: none;
		padding: 20px;
	}
	.right {
		flex: none;
		padding: 20px;
	}
}

@media screen and (max-width: 576px) {
	.heading {
		font-size: 2rem;
	}
	.text {
		font-size: 1rem;
	}
	.form {
		padding: 20px;
	}
	.formHeading {
		font-size: 1.5rem;
	}
	.formLabel {
		font-size: 1rem;
	}
	.formInput {
		font-size: 1rem;
	}
	.formButton {
		font-size: 1rem;
		padding: 0.5rem 1rem;
	}
}

@media ( max-width : 576px) {
	body {
		background-size: cover;
		background-position: center;
	}
}
</style>
</head>
<body>
	<%@include file="components/navbar.jsp"%>


	<div class="container">
		<div class="container">
			<div class="left">
				<img alt="register image" src="components/login.jpg">
			</div>
			<div class="right p-5">

				<form action="userLogin" method="post">
					<h2 class="formHeading mb-2 text-center">User Login</h2>

					<c:if test="${not empty succmsg }">
						<p class="text-success text-center fs-4">${succmsg }</p>
						<c:remove var="succmsg" scope="session" />
					</c:if>

					<c:if test="${not empty error }">
						<p class="text-danger text-center fs-4">${error }</p>
						<c:remove var="error" scope="session" />
					</c:if>

					<div class="form-outline form-white mb-4">
						<label class="form-label text-light" for="typeEmailX">Email</label> <input
							type="email" name="email" id="typeEmailX"
							class="form-control form-control-lg" />
					</div>

					<div class="form-outline form-white mb-4">
						<label class="form-label text-light" for="typePasswordX">Password</label> <input
							type="password" name="password" id="typePasswordX"
							class="form-control form-control-lg" />
					</div>

					<input type="hidden" name="fromBooking" value=${param.fromBooking } />

					<button class="btn btn-outline-primary btn-lg px-5 col-md-12"
						type="submit">Login</button>

					<p class="text-light mt-3 fs-5">
						Don't have account ?<a class="text-decoration-none"
							href="register.jsp"> Register</a>
					</p>
				</form>

			</div>
		</div>
	</div>

	<%@include file="components/footer.jsp"%>
</body>
</html>
