

<%@page import="CargoCrafter.entity.Driver"%>
<%@page import="CargoCrafter.DAO.DriverDAOImpl"%>
<%@page import="CargoCrafter.DB.DBConnect"%>
<%@page import="CargoCrafter.DAO.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Driver</title>
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



							<h2 class="fw-bold mb-2 text-uppercase text-center">Update
								Driver</h2>

							<%
							int driverId = Integer.parseInt(request.getParameter("driverId"));
							UserDAOImpl us = new UserDAOImpl(DBConnect.getConn());
							DriverDAOImpl dc = new DriverDAOImpl(DBConnect.getConn());
							Driver d = dc.viewDriverbyId(driverId);
							%>

							<form action="../update_driver" method="post">

								<div class="form-outline form-white mb-4">
									<label class="form-label" hidden for="typeEmailX">Driver
										Id</label> <input type="text" value=<%=d.getDriverId()%> hidden
										name="driverId" id="name" class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Driver Name</label>
									<input type="text" name="driverName"
										value=<%=d.getDriverName()%> id="name"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typePasswordX">Phone
										Number</label> <input type="tel" value=<%=d.getPhNumber()%>
										name="phNumber" id="typePasswordX"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Email
										address </label> <input type="email" value=<%=d.getDemail()%>
										name="demail" id="typeEmailX"
										class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typePasswordX">Age </label> <input
										type="text" name="age" value=<%=d.getAge()%>
										id="typePasswordX" class="form-control form-control-lg" />
								</div>

								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Permanent
										Address</label> <input type="text" value=<%=d.getDaddress()%>
										name="daddress" id="typeEmailX"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">Driving
										Licence Number</label> <input type="text" name="dlNumber"
										id="typeEmailX" value=<%=d.getDlNumber()%>
										class="form-control form-control-lg" />
								</div>
								
								<div class="form-outline form-white mb-4">
									<label class="form-label" for="typeEmailX">password</label> <input type="text" name="password"
										id="typeEmailX" class="form-control form-control-lg" value=<%=d.getPassword() %> />
								</div>

								<button class="btn btn-outline-primary btn-lg px-5 col-md-12"
									type="submit">Update Driver</button>
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