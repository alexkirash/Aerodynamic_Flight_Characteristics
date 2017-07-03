
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
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
					<li><a href="search_menu"action="<%=request.getContextPath()%>/search_menu"> Search</a></li>
				</ul>
				</div>
			</div>
			
			<div class="content">
				<div class="wrapper">
		
							
						<h1>
							Add a User
						</h1>
						
						<c:url var="addAction" value="/person/add" ></c:url>
						
						<form:form action="${addAction}" commandName="person">
							<fieldset class="boxBody">
							<table>
							<c:if test="${!empty person.username}">
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
							<tr>
								<td>
									<form:label path="username">
										Username:
									</form:label>
								</td>
								<td>
									<form:input path="username" />
								</td> 
							</tr>
							<tr>
								<td>
									<form:label path="password">
										Password:	
									</form:label>
								</td>
								<td>
									<form:input path="password" />
								</td>
							</tr>
							<tr>
		<td colspan="2">
			<c:if test="${!empty person.username}">
						<input type="submit" class="btnLogin" value="EDIT USER" > 
			</c:if>
			<c:if test="${empty person.username}">
				<input type="submit" class="btnLogin" value="ADD USER" > 
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Users List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">User ID</th>
		<th width="120">Username</th>
		<th width="120">Password</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.id}</td>
			<td>${person.username}</td>
			<td>${person.password}</td>
			<td><a href="<c:url value='/edit/${person.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
		</fieldset>
			</div>
			</div>
			
		<footer id="main">
			<a href="https://vk.com/id107429737">Seek help from reception</a> | <a href="https://vk.com/id107429737">PSD by Alex Kirash</a>
		</footer>
</body>
</html>
