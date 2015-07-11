<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					<nav class="mdl-navigation mdl-layout--large-screen-only">
						<a class="mdl-navigation__link" href="">Login</a>
					</nav>
				</div>
			</header>
			<div class="mdl-layout__drawer">
				<span class="mdl-layout-title">Options</span>
				<nav class="mdl-navigation">
					<a class="mdl-navigation__link" href="">Link</a> 
					<a class="mdl-navigation__link" href="">Link</a> 
					<a class="mdl-navigation__link" href="">Link</a> 
					<a class="mdl-navigation__link" href="">Link</a>
				</nav>
			</div>
			<main class="mdl-layout__content">
				<div class="page-content">
					<form action="#">
						<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo">
							<input class="mdl-textfield__input" type="text" id="sample3" /> 
							<label class="mdl-textfield__label" for="sample3">Text...</label>
						</div>
						<button class="mdl-button mdl-js-button mdl-button--raised">Button</button>
					</form>
				</div>
			</main>
		</div>
	</body>
</html> 