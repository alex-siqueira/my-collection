<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8"/>
	<title>Veezit - Seu assistente pessoal de viagem</title>


	<link rel="stylesheet" type="text/css" href="css/style.css" />

	<!-- google fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Noto+Sans' rel='stylesheet' type='text/css'>
	<!-- google fonts -->
	
	<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
</head>

<body>
	<div id="wrapper">
		<div id="wrapper_header">
			<!-- Top header -->
			
			
			<!-- Banner -->
			<div class="bannerHeader">
				<div class="bannerImg1" >
				</div>
			</div>
	
			<!-- Search options -->
			<div class="search">
				<br/>
				<div class="searchblock" align="center">
					<p>Seu assistente pessoal de viagem</p>
					<div id="formulario">
						<input id="origin" type="text" class="inputbox_medium" value="Origem" onFocus="if(this.value == 'Origem') this.value = '';" onBlur="if(this.value == '') this.value = 'Origem';"/>&nbsp;
						<input id="destination" type="text" class="inputbox_medium" value="Destino" onFocus="if(this.value == 'Destino') this.value = '';" onBlur="if(this.value == '') this.value = 'Destino';"/>&nbsp;
						<input id="datepick" type="text" class="inputbox_small checkin" value="Ida" onFocus="if(this.value == 'Ida') this.value = '';" onBlur="if(this.value == '') this.value = 'Ida';"/>&nbsp;
						<input id="datepick2" type="text" class="inputbox_small checkout" value="Volta" onFocus="if(this.value == 'Volta') this.value = '';" onBlur="if(this.value == '') this.value = 'Volta';"/>&nbsp;<br><br>
						
						<div align="center">
							<input id="search" type="button" value="Descubra seu roteiro aqui" class="searchbutton glass" style="align:center"/>
						</div>				
						
					</div>
				</div>        
			</div> 
		</div>
	</div>
</body>
</html>