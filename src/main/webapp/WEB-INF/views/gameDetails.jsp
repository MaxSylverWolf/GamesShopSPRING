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
							<h3>INFO O GRZE</h3>
							<div>
								<p>

<H1>Dane gry</H1>
Id: <b>${game.id}</b><br/>
Nazwa: <b>${game.name}</b><br/>
Obrazek: <b>${game.img}</b><br/>
Opis: <b>${game.about}</b><br/>
Cena: <b><fmt:formatNumber type="CURRENCY" value="${game.price}"  currencySymbol="PLN"/></b><br/>
Data produkcji <b><fmt:formatDate  value="${game.releaseDate}"  type="date" timeStyle="medium"/></b><br/>
Typ: <b>${game.type.name}</b><br/>
Akcesoria: <br/>
					<c:choose>
						<c:when test="${empty game.accessories}">
							Brak
						</c:when>
						<c:otherwise>
							<c:forEach items="${game.accessories}" var="accessory" varStatus="stat">
								<c:if test="${stat.index != 0}">
									<br/>
								</c:if>
								${stat.index}. <b>${accessory.name}</b>,
							</c:forEach>
						</c:otherwise>
					</c:choose>
<br/>
<a href="gameList.html">Wstecz</a>
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