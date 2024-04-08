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
				