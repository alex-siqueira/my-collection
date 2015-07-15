<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty pageContext.request.userPrincipal}">
	<c:redirect url="/home"/>
</c:if>

<!DOCTYPE html>
<html>
	<head>
		<title>MyCollection</title>
		<script src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
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
		      <!-- Add spacer, to align navigation to the right -->
		      <div class="mdl-layout-spacer"></div>
		      <!-- Navigation. We hide it in small screens. -->
		      	<nav class="mdl-navigation">
					<a class="mdl-navigation__link" href="<c:url value="/home" />">Login</a>
				</nav>
		    </div>
		  </header>
		  <main class="mdl-layout__content">
		    <div class="page-content"><!-- Your content goes here --></div>
		  </main>
		</div>	
	</body>
</html> 