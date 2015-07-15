<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>MyCollection</title>
<script	src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.indigo-pink.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<!-- Always shows a header, even in smaller screens. -->
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<!-- Title -->
				<span class="mdl-layout-title">MyCollection</span>
			</div>
		</header>
		<main class="mdl-layout__content">
		<div class="page-content">
			<form method="post" action="<c:url value="/j_security_check" />">
				User: <input type="text" name="j_username" /><br /> 
				Password: <input type="password" name="j_password" /><br /> 
				<input type="submit" value="Login!" />
			</form>
		</div>
		</main>
	</div>
</body>
</html>
