<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        	<meta name="description" content="Slide Down Box Menu with jQuery and CSS3" />
        	<meta name="keywords" content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails"/>				
			<link rel="stylesheet" href="<c:url value="/resources/css/menu.css" />" type="text/css" media="screen"/>
			<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
		
		<title> Measure the parameters of the plane </title>
		
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
							<strong>  Welcome to my program</strong>
						</h2>		
					</div>
					<div class="item">
									<img src=<c:url value="/resources/images/11.jpg" />>
					</div>
				</div>	
				</div>
				
			</div>
			
			<div class="content">
			<div class="wrapper">
			<ul id="sdt_menu" class="sdt_menu">
				<li>
					<a href="aboutMe"action="/aboutMe">
						<img src=<c:url value="/resources/images/aboutMe.png" /> alt="">
					
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">About me</span>
							<span class="sdt_descr">Get to know me</span>
						</span>
					</a>
				</li>
				<li>
					<a href="authorization-person" action="/authorization-person">
						<img src=<c:url value="/resources/images/addPerson.png" /> alt="">
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">ADD PERSON</span>
							<span class="sdt_descr">User list management</span>
						</span>
					</a>
				</li>
				<li>
					<a href="authorization" action="/authorization">
						<img src=<c:url value="/resources/images/addPlane.jpg" /> alt="">
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">ADD PLANE</span>
							<span class="sdt_descr">Add the characteristics of the aircraft</span>
						</span>
					</a>
				</li>
				<li>
					<a href="information"action="/information">
						<img src=<c:url value="/resources/images/projectinfo.gif" /> alt="">
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Information</span>
							<span class="sdt_descr">Project information</span>
						</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="images/5.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Other</span>
							<span class="sdt_descr">Other</span>
						</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src=<c:url value="/resources/images/search.jpg" /> alt="">
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">SEARCH</span>
							<span class="sdt_descr">Search according to the characteristics of the aircraft</span>
						</span>
					</a>
					<div class="sdt_box">
						<a href="search_name" action="/search_name">Search by name</a>
						<a href="search_weight"' action="/search_weight">Search by weight</a>
						<a href="search_height"' action="/search_height">Search by height</a>
						<a href="search_rangeOfFlight"'action="/search_rangeOfFlight">Search by range</a>
						<a href="search_dragForce"' action="/search_dragForce">Search by drag force</a>						
						<a href="search_pitch"' action="/search_pitch">Search by pitch</a>
						<a href="search_momentOfInertia"' action="/search_momentOfInertia">Search by moment</a>
					</div>
				</li>
			</ul>
	
	
		 <!-- The JavaScript -->
		 
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript" src=<c:url value="/resources/css/jquery.easing.1.3.js" />></script>
		
        <script type="text/javascript">
            $(function() {
                $('#sdt_menu > li').bind('mouseenter',function(){
					var $elem = $(this);
					$elem.find('img')
						 .stop(true)
						 .animate({
							'width':'170px',
							'height':'170px',
							'left':'0px'
						 },400,'easeOutBack')
						 .andSelf()
						 .find('.sdt_wrap')
					     .stop(true)
						 .animate({'top':'140px'},500,'easeOutBack')
						 .andSelf()
						 .find('.sdt_active')
					     .stop(true)
						 .animate({'height':'150px'},300,function(){
						var $sub_menu = $elem.find('.sdt_box');
						$elem.find('.sdt_box')
						.animate({'width':'170px',
							'height':'230px',
							'left':'0px'
						 },400,'easeOutBack');
						
						if($sub_menu.length){
							var left = '170px';
							if($elem.parent().children().length == $elem.index()+1)
								left = '-170px';
							$sub_menu.show().animate({'left':left},200);
						}	
					});
				}).bind('mouseleave',function(){
					var $elem = $(this);
					var $sub_menu = $elem.find('.sdt_box');
					if($sub_menu.length)
						$sub_menu.hide().css('left','0px');
					
					$elem.find('.sdt_active')
						 .stop(true)
						 .animate({'height':'0px'},300)
						 .andSelf().find('img')
						 .stop(true)
						 .animate({
							'width':'0px',
							'height':'0px',
							'left':'85px'},400)
						 .andSelf()
						 .find('.sdt_wrap')
						 .stop(true)
						 .animate({'top':'25px'},500);
					});
            		});
       		 </script>
		</div>
	</div>
				
			<div class="content">
				<div class="wrapper">
						 <img src=<c:url value="/resources/images/10.jpg" /> class="left">  
				<h2>Introduction</h2>
				<hr>
				<p>
					    Одним із способів доставки вантажів в будь-яку точку планети є його транспортування літальним апаратом (ЛА) з подальшим скиданням. При цьому економиться час і забезпечується можливість доставки вантажу в заданий район.
						У роботі розглянуто метод математичного та програмного моделювання параметрів збуреного руху ЛА при скиданні вантажів, наведені системи рівнянь для різних способів скидання, а також наведено опис комп'ютерної програми розрахунку параметрів збуреного руху ЛА при скиданні розподіленого вантажу і моновантажу.
						Політ літального апарату характеризується багатьма взаємопов'язаними параметрами. Завдання та підтримання режиму польоту можливо в тому випадку, коли його основні параметри відомі і їх можна змінювати за бажанням. Такими параметрами є лінійні і кутові координати, швидкості, прискорення і т.д. Завдання режиму польоту зводиться до завдання окремих його параметрів в такому поєднанні, при якому забезпечуються оптимальні умови польоту.
						Для підтримки режиму польоту незмінним або для зміни його за певним законом в змінних зовнішніх умовах при безперервних збуреннях необхідно впливати на органи управління літального апарату. Це управління може бути як ручним, так і автоматичним.
						Для управління кожним параметром режиму польоту окремо необхідні свої незалежні контури, оскільки ж число параметрів велике, то система автоматичного управління польотом виходить багатоконтурною. Окремі контури управління для приватних видів руху (поздовжнього, бокового і т.п.) об'єднуються в канали управління. Виходами каналів є виконавчі механізми (приводи), що діють на керуючі органи літального апарату.
						При скиданні вантажу літальний апарат переходить в режим збуреного руху, що негативно впливає на рух літака у повітрі. Різка зміна маси літака може призвести до дуже поганих наслідків, а саме різкого перепаду висоти та відхиленням літака від осі польоту, що в свою чергу може призвести до падіння літака. Дана робота саме і полягає в створенні системи прогнозування поведінки літака в тих чи інших ситуаціях.			   
				</p>
					
				</div>
			</div>
			
			<div class="footer">
				<div class="wrapper">
					&copy;  Alex Kirash
				</div>
			</div>			

		</body>
</html>
