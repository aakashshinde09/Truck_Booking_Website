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
<title>cms dashboard</title>
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
</head>
<body>

	<%@include file="../components/navbar.jsp"%>


	<c:if test="${empty adminobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<c:if test="${not empty adminobj}">

	</c:if>


	<div class="wrapper">


		<div class="body-overlay"></div>


		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>
					<span><i class="fa-solid fa-truck-fast text-warning fs-2"></i>
						CargoCrafer</span>
				</h3>
			</div>
			<ul class="list-unstyled components">
    <li class="active"><a href="admin/home.jsp" class="dashboard"><i
        class="material-icons">dashboard</i><span>Dashboard</span></a></li>

    <div class="small-screen navbar-display">
        <ul>
            <li class="dropdown d-lg-none d-md-block d-xl-none d-sm-block">
                <a href="#homeSubmenu0" data-toggle="collapse" aria-expanded="false"
                class="dropdown-toggle"> <i class="material-icons">notifications</i><span> 4
                    notification</span></a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu0">

                </ul>
            </li>

            <li class="d-lg-none d-md-block d-xl-none d-sm-block"><a href="#"><i
                class="material-icons">person</i><span>user</span></a></li>

            <li class="d-lg-none d-md-block d-xl-none d-sm-block"><a href="#"><i
                class="material-icons">settings</i><span>setting</span></a></li>
        </ul>
    </div>

    <li><a href="add_location.jsp"><i class="material-icons">add_location</i><span>Add
            Location</span></a></li>

    <li><a href="add_location.jsp"><i class="material-icons">add_location</i><span>Add
            Location</span></a></li>

    <!-- Additional <li> elements for adding locations -->

</ul>



		</nav>



		<!-- Page Content  -->
		<div id="content">

			<div class="top-navbar">
				<nav class="navbar navbar-expand-lg">
					<div class="container-fluid">

						<button type="button" id="sidebarCollapse"
							class="d-xl-block d-lg-block d-md-mone d-none">
							<span class="material-icons">arrow_back_ios</span>
						</button>

						<a class="navbar-brand" href="#"> Dashboard </a>

						<button class="d-inline-block d-lg-none ml-auto more-button"
							type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="material-icons">more_vert</span>
						</button>

						<div
							class="collapse navbar-collapse d-lg-block d-xl-block d-sm-none d-md-none d-none"
							id="navbarSupportedContent">
							<ul class="nav navbar-nav ml-auto">
								<li class="dropdown nav-item active"><a href="#"
									class="nav-link" data-toggle="dropdown"> <span
										class="material-icons">notifications</span> <span
										class="notification">4</span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="#">You have 5 new messages</a></li>
										<li><a href="#">You're now friend with Mike</a></li>
										<li><a href="#">Wish Mary on her birthday!</a></li>
										<li><a href="#">5 warnings in Server Console</a></li>

									</ul></li>
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="material-icons">apps</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="material-icons">person</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="material-icons">settings</span>
								</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>


			<div class="main-content">

				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card card-stats">
							<div class="card-header">
								<div class="icon icon-warning">
									<span class="material-icons">equalizer</span>
								</div>
							</div>
							<div class="card-content">
								<p class="category">
									<strong>Visits</strong>
								</p>
								<h3 class="card-title">70,340</h3>
							</div>
							<div class="card-footer">
								<div class="stats">
									<i class="material-icons text-info">info</i> <a href="#pablo">See
										detailed report</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card card-stats">
							<div class="card-header">
								<div class="icon icon-rose">
									<span class="material-icons">shopping_cart</span>

								</div>
							</div>
							<div class="card-content">
								<p class="category">
									<strong>Orders</strong>
								</p>
								<h3 class="card-title">102</h3>
							</div>
							<div class="card-footer">
								<div class="stats">
									<i class="material-icons">local_offer</i> Product-wise sales
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card card-stats">
							<div class="card-header">
								<div class="icon icon-success">
									<span class="material-icons"> attach_money </span>

								</div>
							</div>
							<div class="card-content">
								<p class="category">
									<strong>Revenue</strong>
								</p>
								<h3 class="card-title">$23,100</h3>
							</div>
							<div class="card-footer">
								<div class="stats">
									<i class="material-icons">date_range</i> Weekly sales
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card card-stats">
							<div class="card-header">
								<div class="icon icon-info">

									<span class="material-icons"> follow_the_signs </span>
								</div>
							</div>
							<div class="card-content">
								<p class="category">
									<strong>Followers</strong>
								</p>
								<h3 class="card-title">+245</h3>
							</div>
							<div class="card-footer">
								<div class="stats">
									<i class="material-icons">update</i> Just Updated
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="row ">
					<div class="col-lg-7 col-md-12">
						<div class="card" style="min-height: 485px">
							<div class="card-header card-header-text">
								<h4 class="card-title">Employees Stats</h4>
								<p class="category">New employees on 15th December, 2016</p>
							</div>
							<div class="card-content table-responsive">
								<table class="table table-hover">
									<thead class="text-primary">
										<tr>
											<th>ID</th>
											<th>Name</th>
											<th>Salary</th>
											<th>Country</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Bob Williams</td>
											<td>$23,566</td>
											<td>USA</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Mike Tyson</td>
											<td>$10,200</td>
											<td>Canada</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Tim Sebastian</td>
											<td>$32,190</td>
											<td>Netherlands</td>
										</tr>
										<tr>
											<td>4</td>
											<td>Philip Morris</td>
											<td>$31,123</td>
											<td>Korea, South</td>
										</tr>
										<tr>
											<td>5</td>
											<td>Minerva Hooper</td>
											<td>$23,789</td>
											<td>South Africa</td>
										</tr>
										<tr>
											<td>6</td>
											<td>Hulk Hogan</td>
											<td>$43,120</td>
											<td>Netherlands</td>
										</tr>
										<tr>
											<td>7</td>
											<td>Angelina Jolie</td>
											<td>$12,140</td>
											<td>Australia</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="col-lg-5 col-md-12">
						<div class="card" style="min-height: 485px">
							<div class="card-header card-header-text">
								<h4 class="card-title">Activities</h4>
							</div>
							<div class="card-content">
								<div class="streamline">
									<div class="sl-item sl-primary">
										<div class="sl-content">
											<small class="text-muted">5 mins ago</small>
											<p>Williams has just joined Project X</p>
										</div>
									</div>
									<div class="sl-item sl-danger">
										<div class="sl-content">
											<small class="text-muted">25 mins ago</small>
											<p>Jane has sent a request for access to the project
												folder</p>
										</div>
									</div>
									<div class="sl-item sl-success">
										<div class="sl-content">
											<small class="text-muted">40 mins ago</small>
											<p>Kate added you to her team</p>
										</div>
									</div>
									<div class="sl-item">
										<div class="sl-content">
											<small class="text-muted">45 minutes ago</small>
											<p>John has finished his task</p>
										</div>
									</div>
									<div class="sl-item sl-warning">
										<div class="sl-content">
											<small class="text-muted">55 mins ago</small>
											<p>Jim shared a folder with you</p>
										</div>
									</div>
									<div class="sl-item">
										<div class="sl-content">
											<small class="text-muted">60 minutes ago</small>
											<p>John has finished his task</p>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>



				<footer class="footer">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<nav class="d-flex">
									<ul class="m-0 p-0">
										<li><a href="#"> Home </a></li>
										<li><a href="#"> Company </a></li>
										<li><a href="#"> Portfolio </a></li>
										<li><a href="#"> Blog </a></li>
									</ul>
								</nav>

							</div>
							<div class="col-md-6">
								<p class="copyright d-flex justify-content-end">
									&copy 2021 Design by <a href="#">Vishweb Design</a> BootStrap
									Admin Dashboard
								</p>
							</div>
						</div>
					</div>
				</footer>

			</div>



		</div>
	</div>








	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.3.1.slim.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery-3.3.1.min.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
				$('#content').toggleClass('active');
			});

			$('.more-button,.body-overlay').on('click', function() {
				$('#sidebar,.body-overlay').toggleClass('show-nav');
			});

		});
	</script>





</body>

</html>


