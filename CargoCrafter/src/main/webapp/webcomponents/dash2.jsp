

</nav>


<script src="../js/custom.js"></script>

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
			<div class="col-lg-12 col-md-12 p-3">
				<div class="card" style="min-height: 485px">
					<div class="card-header card-header-text">
						<h4 class="card-title">Truck Details</h4>
						<p class="category">New truck added on 15th December, 2016</p>
					</div>
					<div class="card-content table-responsive">
						<table class="table table-hover">
							<thead class="text-primary">
								<tr>
									<th scope="col">Owner Name</th>
									<th scope="col">Manufacturer</th>
									<th scope="col">Truck Type</th>
									<th scope="col">Reg. Number</th>
									<th scope="col">Status</th>
									<th scope="col">Capacity in tons</th>
									<th scope="col">Fuel Type</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%-- <%
								TruckDAOImpl tc = new TruckDAOImpl(DBConnect.getConn());
								List<Truck> list = tc.viewTrucks();
								for (Truck t : list) {
								%>
								<tr>
									<td><%=t.getOwnerName()%></td>
									<td><%=t.getManufacturer()%></td>
									<td><%=t.getTruckType()%></td>
									<td><%=t.getRegNumber()%></td>
									<td><%=t.getStatus()%></td>
									<td><%=t.getCapacity()%></td>
									<td><%=t.getFuelType()%></td>
									<td><a href="edit_truck.jsp?truckId=<%=t.getTruckId()%>"
										class="btn btn-sm btn-primary"><i
											class="fa-solid fa-pen-to-square"></i> Edit</a> <a
										href="../deleteTruck?truckId=<%=t.getTruckId()%>"
										class="btn btn-sm btn-danger"><i
											class="fa-sharp fa-solid fa-trash"></i> Delete</a></td> --%>
								</tr>
								<%-- <%
								}
								%> --%>
							</tbody>
						</table>
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


<!-- <script type="text/javascript">
	$(document).ready(function() {
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
			$('#content').toggleClass('active');
		});

		$('.more-button,.body-overlay').on('click', function() {
			$('#sidebar,.body-overlay').toggleClass('show-nav');
		});

	});
</script> -->

<script type="text/javascript">
    $(document).ready(function() {
        $('#sidebarCollapse').on('click', function() {
            $('#sidebar').toggleClass('active');
            $('#content').toggleClass('active');
        });

        // Function to handle sidebar item click
        $('#sidebar ul.components li').on('click', function() {
            $('#sidebar ul.components li').removeClass('active'); // Remove 'active' class from all sidebar items
            $(this).addClass('active'); // Add 'active' class to the clicked sidebar item
        });

        $('.more-button,.body-overlay').on('click', function() {
            $('#sidebar,.body-overlay').toggleClass('show-nav');
        });

    });
</script>

