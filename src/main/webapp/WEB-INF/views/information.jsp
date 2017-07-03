<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Simple information Form</title>
		<meta charset="UTF-8" />
		<link href="<c:url value="/resources/css/homelogin2.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/information.css" />" rel="stylesheet"> 
	</head>

<body>
			<div class="header">
				<div class="wrapper">
				<div class="welcome">
					<div class="item">				
						<img src=<c:url value="/resources/images/12.jpg" />>	
					</div>
					<div class="item">
						<h2>
							<strong> Welcome to my programm</strong>
						</h2>		
					</div>
					<div class="item">
						<img src=<c:url value="/resources/images/11.jpg" />>	
					</div>
				</div>	
				</div>
				
			</div>
			
			<div class="menu">
				<div class="wrapper">
				<ul>				
					<li><a href="fon" action="<%=request.getContextPath()%>/fon"> Home  </a></li>
				</ul>
				</div>
			</div>
			
			<div class="content">
				<div class="wrapper">

				<h2><strong>Information about the project description</strong></h2>
				<hr>
				<p>
				The main purpose of master's work is to create a system simulation predict the behavior of the aircraft at dumping a load, which allows to determine in advance the behavior of the aircraft at dumping cargo and assess possible risks. The main objective is to create software for prediction and representation of the behavior of the aircraft in the air at rest and when resetting cargo. To collect and process measuring and certain information I apply the principle of object-oriented programming, and simulation and specialized tools and officially approved information about the aircraft.
				</p>
				</div>
			</div>
			
			<div class="footer">
				<div class="wrapper">
				<footer id="main">
					<a href="https://vk.com/id107429737">Seek help from reception</a> | <a href="https://vk.com/id107429737">PSD by Alex Kirash</a>
				</footer>
				</div>
			</div>			

		</body>
</html>
