<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="dao.AppDAO"%>
<%@page import="models.App"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>

<link href="materialize/css/materialize.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="materialize/js/jquery-3.4.1.min.js"></script>
<script src="materialize/js/materialize.min.js"></script>
<script src="materialize/js/init.js"></script>
</head>
<body class="container">
	<h2>Search a app:</h2>

	<form method="post" action="ListAppByNameController">
		<input name="name" id="name" />
		<button class="btn" type="submit" value="">Search by name</button>
	</form>

	<table class="highlight ">
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Plan</th>
				<th>Price</th>
				<th>Features</th>
			</tr>
		</thead>


		<%
			try {
				AppDAO dao = new AppDAO();

				String name = (String) request.getAttribute("name");

				ArrayList<App> listApps = dao.getAppByName(name);

				for (int i = 0; i < listApps.size(); i++) {
					out.print("<tr>");

					out.print("<td>" + listApps.get(i).getName() + "</td>");
					out.print("<td>" + listApps.get(i).getDescription() + "</td>");
					out.print("<td>" + listApps.get(i).getListPlan() + "</td>");
					out.print("<td>" + listApps.get(i).getPrice() + "</td>");
					out.print("<td>" + listApps.get(i).getFeature() + "</td>");

					out.print("</tr>");
				}
			}

			catch (Exception erro) {
				System.out.print(erro);
			}
		%>

	</table>

</body>
</html>