<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Search by name</title>		
		<meta charset="UTF-8" />
		<link href="<c:url value="/resources/css/homelogin2.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/search.css" />" rel="stylesheet"> 
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
				
					<li><a href="search_menu"action="<%=request.getContextPath()%>/search_menu"> Back  </a></li>
					<li><a href="#"> Information</a></li>

				</ul>
				</div>
			</div>
					
			<div class="content">
				<div class="wrapper">
				<c:url var="addAction" value="/search-planeName" ></c:url>
			
					<form:form action="${addAction}" commandName="plane"  class="box search" >
					
						<fieldset class="boxBody">
								  <label><strong>Search by name:</strong></label>					  
						</fieldset>
						<footer>
						  
						  <div class="box">
							  <div class="container-1">
								  <span class="icon"><i class="fa fa-search"></i></span>
								 	<form:input path="name" type="text" id="search"  placeholder="Enter name..." />
							  </div>
							</div>
						</footer>
						
					</form:form>
			</div>
			</div>
			
			
		<footer id="main">
			<a href="https://vk.com/id107429737">Seek help from reception</a> | <a href="https://vk.com/id107429737">PSD by Alex Kirash</a>
		</footer>
</body>
</html>
