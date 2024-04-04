<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Signup</title>
<%@include file="components/allcss.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<section class="vh-80 gradient-custom ">
		<div class="container py-5 h-80">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-light text-dark shadow bg-body rounded"
						style="border-radius: 1rem;">
						<div class="card-body p-3 ">



							<h2 class="fw-bold mb-3 text-center">User Registration</h2>

							<c:if test="${not empty succmsg }">
								<p class="text-center text-success fs-4">${succmsg }</p>
								<c:remove var="succmsg" scope="session" />
							</c:if>

							<c:if test="${not empty error }">
								<p class="text-center text-danger fs-4">${error }</p>
								<c:remove var="error" scope="session" />
							</c:if>



							<form action="userRegister" method="post">

								<!-- <div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Id</label> <input
										type="text" name="id" id="name"
										class="form-control form-control-lg" />
								</div> -->

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Full Name</label> <input
										type="text" name="name" id="name"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Email</label> <input
										type="email" name="email" id="typeEmailX"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typePasswordX">Mobile
										Number</label> <input type="tel" name="mobile" id="typePasswordX"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typePasswordX">Password</label>
									<input type="password" name="password" id="typePasswordX"
										class="form-control form-control-lg" />
								</div>



								<button class="btn btn-outline-primary btn-lg px-5 col-md-12"
									type="submit">Register</button>
								<p class="text-dark fs-5">
									Already Registered ?<a class="text-decoration-none"
										href="login.jsp"> Login</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="components/footer.jsp"%>
</body>
</html>