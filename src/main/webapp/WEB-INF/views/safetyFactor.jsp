
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Specifications plane list</title>
		<link href="<c:url value="/resources/css/homelogin2.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/homelogin1.css" />" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>

<body>

<div class="header">
				<div class="wrapper">
				<div class="welcome">
					<div class="item">				
							<img src="java/header.jpg">	
					</div>
					<div class="item">
						<h2>
							<strong> Welcome to my programm</strong>
						</h2>		
					</div>
					<div class="item">
							<img src="java/header.jpg">	
					</div>
				</div>	
				</div>
				
			</div>
			
			<div class="menu">
				<div class="wrapper">
				<ul>
				
					<li><a href="fon" action="<%=request.getContextPath()%>/fon"> Back  </a></li>
					<li><a href="information"action="<%=request.getContextPath()%>/information"> Information</a></li>
					<li><a href="search_menu"action="<%=request.getContextPath()%>/search_menu"> Search</a></li>
				</ul>
				</div>
			</div>
			
			<div class="content">
				<div class="wrapper">
		
				
						  	<h3>Plane List</h3>
							<c:if test="${!empty listPlanes}">
								<table class="tg">
								<tr>
							
									<th width="80">Plane ID</th>
									<th width="120">Plane Name</th>
									<th width="120">Plane weight</th>
									<th width="120">Plane height</th>
									<th width="120">Plane rangeOfFlight</th>
									<th width="120">Plane dragForce</th>
									<th width="120">Plane pitch</th>
									<th width="120">Plane momentOfInertia</th>
									<th width="60">coefficient</th>

								</tr>
								<c:forEach items="${listPlanes}" var="plane">
									<tr>
										<td>${plane.weight}</td>
										<td>${plane.height}</td>
										<td>${plane.rangeOfFlight}</td>
										<td>${plane.dragForce}</td>
										<td>${plane.pitch}</td>
										<td>${plane.momentOfInertia}</td>
										<td><a href="<c:url value='/calculate-coefficient/${plane.weight}' />" >Сalculate</a></td>
									</tr>
								</c:forEach>
								</table>
							</c:if>
						
				
			</div>
			</div>
			
		<footer id="main">
			<a href="https://vk.com/id107429737">Seek help from reception</a> | <a href="https://vk.com/id107429737">PSD by Alex Kirash</a>
		</footer>
</body>
</html>
