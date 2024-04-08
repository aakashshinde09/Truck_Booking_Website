<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add location</title>
<script src="../js/custom.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<!----css3---->
<link rel="stylesheet" href="../css/custom.css">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">




<!--google material icon-->
<link href="https://fonts.googleapis.com/css2?family=Material+Icons"
	rel="stylesheet">
<%@include file="../components/allcss.jsp"%>
</head>
<body>

	<%@include file="../webcomponents/dash1form.jsp"%>
	<c:if test="${empty adminobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<section class="vh-80 gradient-custom ">
		<div class="container py-5 h-80">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-light text-dark shadow bg-body rounded"
						style="border-radius: 1rem;">
						<div class="card-body p-3 ">



							<h2 class="fw-bold mb-2 text-uppercase text-center">Locations</h2>
							<c:if test="${not empty error }">
								<p class="text-center text-danger fs-4">${error }</p>
								<c:remove var="error" scope="session" />
							</c:if>

							<form action="../addlocation" method="post">

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Source</label> <input
										type="text" name="source" id="name"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Destination</label>
									<input type="text" name="destination" id="typeEmailX"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typePasswordX">Total Km</label>
									<input type="text" name="total_km" id="typePasswordX"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typePasswordX">Price /
										Km</label> <input type="text" name="price_per_km" id="typePasswordX"
										class="form-control form-control-lg" />
								</div>

								<button class="btn btn-outline-primary btn-lg px-5 col-md-12"
									type="submit">Add Location</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../webcomponents/dash2form.jsp"%>
</body>
</html>