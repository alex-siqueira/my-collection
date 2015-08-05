<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app="app">
<head>
<title>MyCollection</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular-resource.js"></script>

<script src="<c:url value="/app/app.module.js"/>"></script>
<script src="<c:url value="/app/app.js"/>"></script>

<!-- Core module -->
<script src="<c:url value="/app/core/core.module.js"/>"></script>
<script src="<c:url value="/app/core/dataservice.js"/>"></script>
<script src="<c:url value="/app/core/directive.js"/>"></script>

<!-- Collections module -->
<script src="<c:url value="/app/collections/collections.module.js"/>"></script>
<script src="<c:url value="/app/collections/collections.js"/>"></script>

<!-- Items module -->
<script src="<c:url value="/app/items/items.module.js"/>"></script>
<script src="<c:url value="/app/items/items.js"/>"></script>

<!-- Material Design Lite -->
<script	src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.indigo-pink.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<!-- Always shows a header, even in smaller screens. -->
	<div ng-controller="AppController as appController" class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<!-- Title -->
				<span class="mdl-layout-title">MyCollection: {{appController.selectedCollection}}</span>
				<!-- Add spacer, to align navigation to the right -->
				<div class="mdl-layout-spacer"></div>
				<button id="menu-user" class="mdl-button mdl-js-button mdl-button--icon">
					<i class="material-icons">person</i>
				</button>
				<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="menu-user">
					<li class="mdl-menu__item" disabled><c:out value="${pageContext.request.userPrincipal.name}" /></li>
					<li class="mdl-menu__item" onClick="javascript:location.href='<c:url value="/logout.action"/>'">Logout</li>
				</ul>
			</div>
		</header>
		<div ng-controller="CollectionsController as collections" menu-close class="mdl-layout__drawer">
			<span class="mdl-layout-title">Collections</span>
			<nav class="mdl-navigation">
				<a ng-click="appController.setSelectedCollection(collection)" ng-repeat="collection in collections.list" href="#" class="mdl-navigation__link">{{collection}}</a>
				<div class="mdl-textfield mdl-js-textfield">
					<input ng-model="name" class="mdl-textfield__input" type="text" id="collectionName" />
					<label class="mdl-textfield__label" for="collectionName">Name...</label>
				</div>
				<button ng-click="collections.addCollection(name)" id="addCollection" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
					<i class="material-icons">add</i>
				</button>
				<div class="mdl-tooltip mdl-tooltip--large" for="addCollection">
					Add a new Collection
				</div>
			</nav>
		</div>
		<main class="mdl-layout__content">
		<div ng-controller="ItemsController as items" class="page-content">
			<div>
				<table class="mdl-data-table mdl-js-data-table">
					<thead>
						<tr>
							<th class="mdl-data-table__cell--non-numeric">Name</th>
							<th class="mdl-data-table__cell--non-numeric">Age</th>
							<th class="mdl-data-table__cell--non-numeric">ID Number</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="item in items.list">
							<td class="mdl-data-table__cell--non-numeric">{{item}}</td>
							<td class="mdl-data-table__cell--non-numeric">b</td>
							<td class="mdl-data-table__cell--non-numeric">c</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		</main>
	</div>
</body>
</html>
