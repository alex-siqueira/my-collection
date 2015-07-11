<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>MyCollection</title>
	</head>
	
	<body>
		<form method="post" action="<c:url value="/j_security_check" />">
			User: <input type="text" name="j_username"/><br/>
			Password: <input type="password" name="j_password"/><br/>
			<input type="submit" value="Login!"/> 
		</form>
	</body>
</html>