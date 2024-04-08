<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>admin dashboard</title>
<script src="../js/custom.js"></script>

<!-- Bootstrap CSS -->
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
	<script src="../js/custom.js"></script>
	
</head>
<body>
	<c:if test="${empty adminobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<%@include file="../webcomponents/dash1.jsp"%>


	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/add_location.jsp"> <i class="material-icons">add_location</i><span>Add
				Location</span></a></li>
	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/location_dtls.jsp"> <i class="material-icons">near_me</i><span>View
				Locations</span></a></li>

	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/add_driver.jsp"> <i class="material-icons">person_add_alt</i><span>Add
				Driver</span></a></li>
	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/driver_table.jsp"> <i class="material-icons">person_pin</i><span>View
				Driver</span></a></li>

	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/add_truck.jsp"> <i class="material-icons">local_shipping</i><span>Add
				Truck</span></a></li>
	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/truck_table.jsp"> <i class="material-icons">local_shipping</i><span>View
				Truck</span></a></li>

	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/booking_dtls.jsp"> <i class="material-icons">event_note</i><span>Booking
				Completed </span></a></li>

	<li onclick="changeActive(this)"><a href="/CargoCrafter/admin/booking_pending.jsp"> <i class="material-icons">event_note</i><span>Pending
				Orders </span></a></li>

	<li onclick="changeActive(this)"><a href="../admin_logout"> <i class="material-icons">logout</i><span>Logout
		</span></a></li>


	<%@include file="../webcomponents/dash2.jsp"%>




</body>

</html>


