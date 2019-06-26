<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="google-site-verification"
	content="dNuQrvDQp_MhfS50xu05GMhMc7XOJrub2CXg408UuhM" />
<title>Favorite Thing</title>

<!--Custom CSS-->
<link href="css/dashboard.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Jquery Datatables -->
<link rel="stylesheet" type="text/css"
	href="vendor/datatables/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="vendor/datatables/jquery.dataTables.js"></script>



</head>

<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/">Add</a></li>
			<li class="nav-item"><a class="nav-link" href="listallfavoritething">List</a></li>
		</ul>
	</nav>



	<c:if test="${success!=null}">
		<div class="alert alert-success alert-dismissible fade show "
			role="alert" id="snackbar">
			<i class="fa fa-check" aria-hidden="true"></i> ${success}
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	</c:if>

	<%
		request.setAttribute("success", null);
	%>

	<c:if test="${failure!=null}">
		<div class="alert alert-danger alert-dismissible fade show "
			role="alert" id="snackbar">
			<i class="fa fa-exclamation-triangle" aria-hidden="true" class="mr-2"></i>
			${failure}
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	</c:if>
	<%
		request.setAttribute("failure", null);
	%>