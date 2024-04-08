<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<script src="../js/custom.js"></script>



<div class="wrapper">


	<div class="body-overlay"></div>


	<!-- Sidebar  -->
	<nav id="sidebar">
		<div class="sidebar-header">
			<h3>
				<span><i class="fa-solid fa-truck-fast text-warning fs-2"></i>
					RoadHauler</span>
			</h3>
		</div>
		<ul class="list-unstyled components">
			<li class="active" onclick="changeActive(this)"><a href="/CargoCrafter/admin/home.jsp" class="dashboard"><i
					class="material-icons">dashboard</i><span>Dashboard</span></a></li>

			<div class="small-screen navbar-display">
				<li class="dropdown d-lg-none d-md-block d-xl-none d-sm-block">
					<a href="#homeSubmenu0" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle"> <i
						class="material-icons">notifications</i><span> 4
							notification</span></a>
					<ul class="collapse list-unstyled menu" id="homeSubmenu0">

					</ul>
				</li>



				<li class="d-lg-none d-md-block d-xl-none d-sm-block"><a
					href="#"><i class="material-icons">person</i><span>user</span></a>
				</li>

				<li class="d-lg-none d-md-block d-xl-none d-sm-block"><a
					href="#"><i class="material-icons">settings</i><span>setting</span></a>
				</li>
			</div>


			<li  onclick="changeActive(this)"><a
				href="pending.jsp"> <i class="material-icons">event_note</i><span>Pending
						Orders </span></a></li>
			<li onclick="changeActive(this)"><a href="bookings.jsp"> <i
					class="material-icons">event_note</i><span>My Orders </span></a></li>
			<li onclick="changeActive(this)"><a href="../driver_logout">
					<i class="material-icons">logout</i><span>Logout </span>
			</a></li>
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

					<a class="navbar-brand" href="home.jsp"> Dashboard </a>

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


		<!-- 			<div class="main-content">
 -->