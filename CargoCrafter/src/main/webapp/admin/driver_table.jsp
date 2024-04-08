

<%@page import="CargoCrafter.entity.Driver"%>
<%@page import="CargoCrafter.DB.DBConnect"%>
<%@page import="CargoCrafter.DAO.DriverDAOImpl"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Driver Details</title>
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

	<div class="container">
	<h2 class="text-center mt-3">Driver Details</h2>
	
	<c:if test="${not empty succmsg }">
	<p class="text-center text-success fs-4">${succmsg }</p>
	<c:remove var="succmsg" scope="session"/>
	</c:if>
	
	<c:if test="${not empty error }">
	<p class="text-center text-danger fs-4">${error }</p>
	<c:remove var="error" scope="session"/>
	</c:if>
	
	<table class="table table-striped mt-3">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Driver Id</th>
				<th scope="col">Driver Name</th>
				<th scope="col">Ph. Number</th>
				<th scope="col">Email</th>
				<th scope="col">Driver age</th>
				<th scope="col">Permanent Address</th>
				<th scope="col">Driving Licence No.</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>

			<%
			DriverDAOImpl dc = new DriverDAOImpl(DBConnect.getConn());
			List<Driver> list = dc.viewAllDrivers();
			for (Driver d : list) {
			%>
			<tr>
				<td><%=d.getDriverId()%></td>
				<td><%=d.getDriverName()%></td>
				<td><%=d.getPhNumber()%></td>
				<td><%=d.getDemail()%></td>
				<td><%=d.getAge()%></td>
				<td><%=d.getDaddress()%></td>
				<td><%=d.getDlNumber()%></td>
				<td><a href="update_driver.jsp?driverId=<%=d.getDriverId()%>"
					class="btn btn-sm btn-primary"><i
						class="fa-solid fa-pen-to-square"></i> Edit</a> <a
					href="../deleteDriver?driverId=<%=d.getDriverId()%>"
					class="btn btn-sm btn-danger"><i
						class="fa-sharp fa-solid fa-trash"></i> Delete</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
	</div>
	<div style="margin-top: 219px">
		<%@include file="../webcomponents/dash2form.jsp"%>
	</div>
</body>
</html>