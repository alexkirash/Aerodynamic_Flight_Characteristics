<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Simple Search Form</title>
		<link href="<c:url value="/resources/css/homelogin2.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/searchMenu.css" />" rel="stylesheet">
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
							<strong> Welcome to my program</strong>
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
					<li><a href="information"action="<%=request.getContextPath()%>/information"> Information</a></li>
				</ul>
				</div>
			</div>
			
			<div class="content">
				<div class="wrapper">
				
				<form:form    class="box Search">
				
								 <input type="button1" class="knopka01"  value="Name" onClick='location.href="search_name"' action="/search_name"/>
								 <hr>  
								 <input  type="button2" class="knopka01" value="Weight" onClick='location.href="search_weight"' action="/search_weight"/>
								 <hr>
								 <input type="button3" class="knopka01" value="Height" onClick='location.href="search_height"' action="/search_height"/>
								 <hr>
								 <input type="button4" class="knopka01" value="Range of flight" onClick='location.href="search_rangeOfFlight"'action="/search_rangeOfFlight"/ >
								 <hr>
								 <input type="button5" class="knopka01" value="Drag force" onClick='location.href="search_dragForce"' action="/search_dragForce"/>
								 <hr>
								 <input type="button6" class="knopka01" value="Pitch" onClick='location.href="search_pitch"' action="/search_pitch"/>
								 <hr>
								 <input type="button7" class="knopka01" value="Moment of inertia" onClick='location.href="search_momentOfInertia"' action="/search_momentOfInertia"/>
						
					</form:form>
			</div>
			</div>
			
	<!-- 	<footer id="main">
			<a href="https://vk.com/id107429737">Seek help from reception</a> | <a href="https://vk.com/id107429737">PSD by Alex Kirash</a>
		</footer> -->
</body>
</html>
