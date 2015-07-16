<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app="app">
	<head>
		<title>MyCollection</title>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular-resource.js"></script>
		<script src="<c:url value="/app/app.module.js"/>"></script>
		
		<!-- Collections module -->
		<script src="<c:url value="/app/collections/collections.module.js"/>"></script>
		<script src="<c:url value="/app/collections/collections.js"/>"></script>
		<script src="<c:url value="/app/collections/dataservice.js"/>"></script>

		<!-- Material Design Lite -->
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
				<button id="menu-user" class="mdl-button mdl-js-button mdl-button--icon">
				  <i class="material-icons">person</i>
				</button>
				<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="menu-user">
				  <li class="mdl-menu__item" disabled><c:out value="${pageContext.request.userPrincipal.name}"/></li>
				  <li class="mdl-menu__item">Logout</li>
				</ul>
		    </div>
		  </header>
		  <div class="mdl-layout__drawer" ng-controller="Collections as collections">
		    <span class="mdl-layout-title">Collections</span>
		    <nav class="mdl-navigation">
		      <a ng-repeat="collection in collections.list" class="mdl-navigation__link" href="">{{collection}}</a>
		    </nav>
		  </div>
		  <main class="mdl-layout__content">
		    <div class="page-content"><!-- Your content goes here --></div>
		  </main>
		</div>	
	</body>
</html> 