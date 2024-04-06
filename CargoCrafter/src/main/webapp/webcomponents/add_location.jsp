
<%@page import="java.util.List"%>
<%@page import="CargoCrafter.entity.Location"%>
<%@page import="CargoCrafter.DB.DBConnect"%>
<%@page import="CargoCrafter.DAO.LocationDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../components/allcss.jsp"%>
<style>

.left {
	padding: 10px;
	background-color: rgba(0, 0, 0, 0.733);
}

.right {
	padding: 5px;
	background-color: rgba(0, 0, 0, 0.733);
}


</style>

</head>
<body>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card-transparent left">
					<div class="card-body">
						<p class="fs-2 text-center text-white">Add Location</p>

						<c:if test="${not empty error }">
							<p class="fs-5 text-center text-danger">${error }</p>
							<c:remove var="error" scope="session" />
						</c:if>

						<c:if test="${not empty succmsg }">
							<p class="fs-5 text-center text-success">${succmsg }</p>
							<c:remove var="succmsg" scope="session" />
						</c:if>

						<form action="../addlocation" method="post">

							<div class="form-outline form-white mb-4">
								 <input
									type="text" name="source" id="name"
									class="form-control form-control-lg" placeholder="Enter Source Location"/>
							</div>

							<div class="form-outline form-white mb-4">
								<input
									type="text" name="destination" id="typeEmailX"
									class="form-control form-control-lg" placeholder="Enter Destination Location"/>
							</div>

							<div class="form-outline form-white mb-4">
								 <input
									type="text" name="total_km" id="typePasswordX"
									class="form-control form-control-lg" placeholder="Enter Total Km"/>
							</div>

							<div class="form-outline form-white mb-4">
								
								<input type="text" name="price_per_km" id="typePasswordX"
									class="form-control form-control-lg" placeholder="Enter Price per KM"/>
							</div>

							<button class="btn btn-outline-primary btn-lg px-5 col-md-12"
								type="submit">Add Location</button>
						</form>

					</div>
				</div>
			</div>

			<div class="col-md-8">
				<div class="card-transparent right">
					<div class="card-body">
						<p class="fs-3 text-center text-white">Location Details</p>
						<table class="table table-striped fs-10">
							<thead>
								<tr class="text-white">
									<th scope="col">Source</th>
									<th scope="col">Destination</th>
									<th scope="col">Total Km</th>
									<th scope="col">Price per Km</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							
							<%
							LocationDAOImpl ld = new LocationDAOImpl(DBConnect.getConn());
							List<Location> list = ld.getallLocations();
							for(Location l : list){
							%>

								
								<tr class="text-white">
									
									<td><%=l.getSource() %></td>
									<td><%=l.getDestination() %></td>
									<td><%=l.getTotal_km() %></td>
									<td><%=l.getPrice_per_km() %></td>
									<td><a href="update_location.jsp?id=<%=l.getId() %>"
										class="btn btn-sm btn-primary"><i
											class="fa-solid fa-pen-to-square"></i> Edit</a> <a
										href="../delete?id=<%=l.getId() %>"
										class="btn btn-sm btn-danger"><i
											class="fa-sharp fa-solid fa-trash"></i> Delete</a></td>
								</tr>
								<%
								}
								%>

							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
