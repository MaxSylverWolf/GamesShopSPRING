<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
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
							<h3>INFO</h3>
							<div>
								<p>

<c:choose>
<c:when test="${not empty logInSession}">
<span style="color:green">Jesteś zalogowany jako <b>${logInSession.login}</b></span>

<a href="gameListUser.html">Lista gier</a><br/>
<a href="gameList.html">Dane do wysyłki</a><br/>
<a href="gameList.html">Edytuj dane do wysyłki</a><br/>
<a href="gameList.html">Historia zamówień</a><br/>
<a href="logout.html">Wyloguj</a>
</c:when>
<c:otherwise>
<span style="color:red">Panel Użytkownika. Aby dokonać zamówienia musisz się zalogować.</span>
<a href="registerForm.html">Zarejestruj się</a>
<a href="logonForm.html">Zaloguj</a>
</c:otherwise>
</c:choose>

<P>  Czas serverowy: ${serverTime}. </P>

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