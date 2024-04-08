
<%@page import="CargoCrafter.DB.DBConnect"%>
<%@page import="CargoCrafter.entity.Location"%>
<%@page import="CargoCrafter.DAO.LocationDAOImpl"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Location Details</title>
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

	<c:if test="${empty adminobj }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>



	<div class="container p-3">

		<h2 class="text-center mb-3">Location Details</h2>

		<c:if test="${not empty succmsg }">
			<p class="text-center text-success fs-4">${succmsg }</p>
			<c:remove var="succmsg" scope="session" />
		</c:if>

		<c:if test="${not empty error }">
			<p class="text-center text-danger fs-4">${error }</p>
			<c:remove var="error" scope="session" />
		</c:if>
		<table class="table table-striped">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Source</th>
					<th scope="col">Destination</th>
					<th scope="col">Total Km</th>
					<th scope="col">Price per Km</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				LocationDAOImpl loc = new LocationDAOImpl(DBConnect.getConn());
				List<Location> list = loc.getallLocations();
				for (Location l : list) {
				%>
				<tr>
					<td><%=l.getId()%></td>
					<td><%=l.getSource()%></td>
					<td><%=l.getDestination()%></td>
					<td><%=l.getTotal_km()%></td>
					<td><%=l.getPrice_per_km()%></td>
					<td><a href="update_location.jsp?id=<%=l.getId()%>"
						class="btn btn-sm btn-primary"><i
							class="fa-solid fa-pen-to-square"></i> Edit</a> <a
						href="../delete_location?id=<%=l.getId()%>" class="btn btn-sm btn-danger"><i
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