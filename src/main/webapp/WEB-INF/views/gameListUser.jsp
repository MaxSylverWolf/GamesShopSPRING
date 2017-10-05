<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<meta charset="UTF-8">
	<title>Wypożyczalnia gier</title>
<c:set var="context" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${context}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${context}/css/css.css" />
</head>
<body>
	<div id="background">
		<div id="header">
			<div>
				<div>
					<a href="index.html" class="logo"><img src="images/logo.png" alt=""></a>
					<ul>
						<li class="selected">
							<a href="index.html" id="menu1">Strona główna</a>
						</li>
						<li>
							<a href="gameListUser.html" id="menu2">Lista Gier</a>
						</li>
						<li>
							<a href="gameForm.html" id="menu3">Wypożycz grę</a>
						</li>
						<li>
							<a href="home.html" id="menu4">Zaloguj się</a>
						</li>
						<li>
							<a href="homeADMIN.html" id="menu5">Panel Admina</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="body">
			<div>
				<div>
					<div class="featured">
						<img src="images/featured-game.png" alt="">
					</div>
					<div class="section">
						<div>
							<h3>LISTA GIER</h3>
							<div>
								<p>
<center>
<H1>LISTA GIER</H1>

<c:if test="${not empty games}">
	Lista zawiera ${fn:length(games)} gier.
	
	<table>
		<tr>
			<th>Obrazek</th>
			<th>Nazwa</th>			
			<th>Opis</th>
			<th>Typ</th>
			<th>Data produkcji</th>
			<th>Dodatki</th>
			<th>Cena</th>
			<th>Kup grę</th>		
		</tr>
		<c:forEach items="${games}" var="game">
			<tr>
				<td>${game.img}</td>
				<td><a href="?id=${game.id}">${game.name}</a></td>
				<td>${game.about}</td>
				<td>${game.type.name}</td>
				<td><fmt:formatDate  value="${game.releaseDate}"  type="date" timeStyle="medium"/></td>
				<td>
						<c:forEach items="${game.accessories}" var="accessory" varStatus="stat">
								<c:if test="${stat.index != 0}">
									<br/>
								</c:if>
								${stat.index}. <b>${accessory.name}</b>,
							</c:forEach>
				</td>				
				<td><fmt:formatNumber type="CURRENCY" value="${game.price}"  currencySymbol="PLN"/></td>

				<td>
					Brak opcji
				</td>
			</tr>
			
		</c:forEach>
	</table>
</c:if>
</center>
</p>
</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>

				<p>
					SylverWolf @ copyright 2017. All rights reserved.
				</p>
			</div>
		</div>
	</div>
</body>
</html>