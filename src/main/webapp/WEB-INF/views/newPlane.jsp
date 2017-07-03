
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
			<head>
				<title>Specifications plane</title>
				<link href="<c:url value="/resources/css/homelogin2.css" />" rel="stylesheet">
				<link href="<c:url value="/resources/css/homelogin3.css" />" rel="stylesheet">
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
				<!-- 	<li><a href="search_menu"action="<%=request.getContextPath()%>/search_menu"> Search</a></li>
				-->
				</ul>
				</div>
			</div>
			
			<div class="content">
				<div class="wrapper">
			
					<c:url var="addAction" value="/plane/add" ></c:url>
					<form:form action="${addAction}" commandName="plane"  class="box login">
							<fieldset class="boxBody">
								<c:if test="${!empty plane.name}">
									<tr>
										<td>
											<form:label path="id">
												<spring:message text="ID"/>
											</form:label>
										</td>
										<td>
											<form:input path="id" readonly="true" size="8"  disabled="true" />
												<form:hidden path="id" />
										</td> 
									</tr>
								</c:if>										
						
								  <form:label path="name">Name:</form:label>
								  <form:input path="name" />
						  	  
								  <form:label path="weight">Weight:</form:label>
								  <form:input path="weight"/>
		  
								  <form:label path="height">Height:</form:label>
								  <form:input path="height" />
								  
								  <form:label path="rangeOfFlight">Range of flight:</form:label>
								  <form:input path="rangeOfFlight" />
								  
								  <form:label path="dragForce">Drag force:</form:label>
								  <form:input path="dragForce" />
						 
								  <form:label path="pitch">Pitch:</form:label>
								  <form:input path="pitch" />
							  
						 		  <form:label path="momentOfInertia">Moment of inertia:</form:label>
								  <form:input path="momentOfInertia" />
						  		  
						</fieldset>
						<footer>
						    <span style="float: left"> 
								<a href="?lang=en"> Еn </a> 
								<a href="?lang=ru"> Ru </a>
							</span>													
							<td colspan="2">
								<c:if test="${!empty plane.name}">
									<input type="submit" class="btnLogin" value="EDIT PLANE" > 
								</c:if>
								<c:if test="${empty plane.name}">
									<input type="submit" class="btnLogin" value="ADD PLANE" > 
								</c:if>
										  
						</footer>
						
					</form:form>
			</div>
			</div>
			
		<footer id="main">
			<a href="https://vk.com/id107429737">Seek help from reception</a> | <a href="https://vk.com/id107429737">PSD by Alex Kirash</a>
		</footer>
</body>
</html>
