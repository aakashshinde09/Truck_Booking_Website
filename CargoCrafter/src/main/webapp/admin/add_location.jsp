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

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!----css3---->
<link rel="stylesheet" href="../css/custom.css">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->

<%@include file="../components/allcss.jsp"%>

</head>
<body>

	<%@include file="../components/navbar.jsp"%>


	<c:if test="${empty adminobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<c:if test="${not empty adminobj}">

	</c:if>


	<div class="wrapper">

		<%@include file="../webcomponents/sidebar.jsp"%>

		<!-- Page Content  -->
		<div id="content">

			<%@include file="../webcomponents/topnav.jsp"%>


			<div class="main-content">

				<%@include file="../webcomponents/add_location.jsp"%>

				

			</div>

		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.3.1.slim.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/custom.js"></script>

</body>

</html>


