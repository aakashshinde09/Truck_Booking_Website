<!DOCTYPE html>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RoadHauler</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url("components/hero.jpg");
	flex-direction: row;
	background-color: rgba(0, 0, 0, 0.7);
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	width: 100%;
	height: 100vh;
	display: flex;
	flex-direction: row;
}

.bg-image {
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
	display: flex;
	flex-direction: row;
	height: 100vh;
	width: 100%;
	align-items: center;
}

.left {
	flex: 2;
	padding: 40px;
	background-color: rgba(0, 0, 0, 0.7);
}

.right {
	flex: 1;
	padding: 40px;
	background-color: rgba(0, 0, 0, 0.7);
}

.heading {
	font-size: 3rem;
	margin-bottom: 1rem;
	color: #f10365;
	text-align: justify;
	margin-top: 15px;
}

.text {
	font-size: 1.2rem;
	line-height: 1.5;
	margin-bottom: 2rem;
	color: white;
	text-align: justify;
	margin-top: 60px;
}

.form {
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: rgba(255, 255, 255, 0); /* changed to transparent */
	padding: 40px;
	border-radius: 10px;
}

.formHeading {
	font-size: 2rem;
	margin-bottom: 2rem;
	color: white;
}

.formLabel {
	font-size: 1.2rem;
	margin-bottom: 0.5rem;
}

.formInput {
	padding: 0.5rem;
	margin-bottom: 1rem;
	font-size: 1.2rem;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.formButton {
	padding: 0.5rem 2rem;
	font-size: 1.2rem;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.formButton:hover {
	background-color: #0069d9;
}

@media screen and (max-width: 768px) {
	.container {
		flex-direction: column;
		height: auto;
	}
	.left {
		flex: none;
		padding: 20px;
	}
	.right {
		flex: none;
		padding: 20px;
	}
}

@media screen and (max-width: 576px) {
	.heading {
		font-size: 2rem;
	}
	.text {
		font-size: 1rem;
	}
	.form {
		padding: 20px;
	}
	.formHeading {
		font-size: 1.5rem;
	}
	.formLabel {
		font-size: 1rem;
	}
	.formInput {
		font-size: 1rem;
	}
	.formButton {
		font-size: 1rem;
		padding: 0.5rem 1rem;
	}
}

@media ( max-width : 576px) {
	body {
		background-size: cover;
		background-position: center;
	}
}
</style>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container">
		<div class="container">
			<div class="left">
				<h1 class="heading">Welcome to Our Truck Booking Website</h1>
				<p class="text">We make it easy to book a truck and transport
					your goods with confidence. Just tell us where, when, and what you
					need transported, and we'll take care of the rest. Our reliable
					network of trucking companies ensures your cargo arrives on time
					and in perfect condition.</p>
			</div>
			<div class="right">
				<form class="form" method="post" action="bookingprocess1">
					<h2 class="formHeading">Book a Truck</h2>
					<div class="input-group mb-3">
						<label class="formLabel"></label><select
							class="form-select form-control form-control-lg" name="pickup"
							id="inputGroupSelect01" onchange="updateDestinations()">
							<option selected>Pick Up Location</option>
							
							<option value=""></option>

							

						</select>
					</div>
					<label class="formLabel mt-3"></label><select
						class="form-select form-control form-control-lg" name="drop"
						id="inputGroupSelect01">
						<option selected>Destination Location</option>


						<option value="">xyz</option>

					

					</select>



					<button type="submit" class="formButton mt-5">Book Now</button>

				</form>
			</div>
		</div>
	</div>
	<script>
		function updateDestinations() {
			var pickupLocation = document.getElementById("pickup").value;
			var destinations = document.getElementById("drop");
			destinations.innerHTML = ""; // Clear existing options
			var destinationsData = {
				"Pune" : [ "Mumbai", "Hyderabad", "Bangalore", "Buldana" ],
				"Mumbai" : [ "Pune", "Hyderabad", "Bangalore", "Buldana" ],
				"Bangalore" : [ "Hyderabad", "Pune", "Mumbai", "Buldana" ],
				"Hyderabad" : [ "Bangalore", "Pune", "Mumbai", "Buldana" ]
			// Add more mappings as needed
			};
			var destinationOptions = destinationsData[pickupLocation];
			if (destinationOptions) {
				destinationOptions.forEach(function(destination) {
					var option = document.createElement("option");
					option.text = destination;
					option.value = destination;
					destinations.appendChild(option);
				});
			} else {
				var defaultOption = document.createElement("option");
				defaultOption.text = "Destination Location";
				destinations.appendChild(defaultOption);
			}
		}
	</script>


	<%@include file="components/footer.jsp"%>
</body>
</html>
