<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>

<link href="materialize/css/materialize.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="materialize/js/jquery-3.4.1.min.js"></script>
<script src="materialize/js/materialize.min.js"></script>
<script src="materialize/js/init.js"></script>
</head>
<body>

	<div class="center">
		<h2>Create a app</h2>
		<br>
	</div>
	<div class="container">
		<div class="row">
			<form id="form" class="col s12 center" action="AppController"
				method="POST">
				<div class="row">
					<div class="input-field">
						<input id="nome" type="text" class="validate" name="name">
						<label for="nome">Name: </label>
					</div>
					<div class="input-field">
						<input id="description" type="text" class="validate"
							name="description"> <label for="description">Description:
						</label>
					</div>
					<div class="input-field">
						<select name="plan" id="plan" class="target">
							<option value="" disabled selected>Choose your plan:</option>
							<option value="Free">Free</option>
							<option value="Premium">Premium</option>
							<option value="Ultimate">Ultimate</option>
						</select> <label>Type of plan</label>
					</div>

					<script>
						$(".target")
								.change(
										function() {
											// alert("Handler for .change() called.");
											// add campos de price (if not free) and feature
											let feature = "<div class='input-field'>";
											feature += "<input id='feature' type='text' class='validate' name='feature' />";
											feature += "<label for='feature'>Features: </label>";
											feature += "</div>";

											if ($('.target').val() != "Free") {
												let price = "<div class='input-field'>";
												price += "<input id='price' type='number' class='validate' name='price' />";
												price += "<label for='price'>Price: </label>";
												price += "</div>";
												$("form").append(price);
											}

											$("form").append(feature);

										});
					</script>

				</div>
				<button class="btn waves-effect waves-light purple darken-4"
					type="submit" name="action">
					Create <i class="material-icons right">send</i>
				</button>
			</form>
			<div class="center"></div>
		</div>

	</div>



</body>
</html>