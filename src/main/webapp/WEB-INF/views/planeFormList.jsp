
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Specifications plane list</title>
		<style type="text/css">
			.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
			.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
			.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
			.tg .tg-4eph{background-color:#f9f9f9}
		</style>
		<link href="<c:url value="/resources/css/homelogin2.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/homelogin1.css" />" rel="stylesheet">
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
				</ul>
				</div>
			</div>
			
			<div class="content">
				<div class="wrapper">
						  	
							<c:if test="${!empty listPlanes}">
							<h3>Plane List</h3>
								<table class="tg">
								<tr>							
									<th width="80">Plane ID</th>
									<th width="120"> Name</th>
									<th width="120"> Weight</th>
									<th width="120"> Height</th>
									<th width="120"> Range of flight</th>
									<th width="120"> Drag force</th>
									<th width="120"> Pitch</th>
									<th width="120"> Moment of inertia</th>
									<th width="60">Edit</th>
									<th width="60">Delete</th>
								</tr>
								<c:forEach items="${listPlanes}" var="plane">
									<tr>
										<td>${plane.id}</td>
										<td>${plane.name}</td>
										<td>${plane.weight}</td>
										<td>${plane.height}</td>
										<td>${plane.rangeOfFlight}</td>
										<td>${plane.dragForce}</td>
										<td>${plane.pitch}</td>
										<td>${plane.momentOfInertia}</td>
										<td><a href="<c:url value='/edit-plane/${plane.id}' />" >Edit</a></td>
										<td><a href="<c:url value='/remove-plane/${plane.id}' />" >Delete</a></td>
									</tr>
								</c:forEach>
								</table>
							</c:if>
				
				
			</div>
			</div>
	
</body>
</html>
