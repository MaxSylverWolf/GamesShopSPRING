<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<meta charset="UTF-8">
	<title>Wypożyczalnia gier</title>le>
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
							<h3>LISTA UŻYTKOWNIKÓW</h3>
							<div>
								<p>
<center>
<H1>LISTA UŻYTKOWNIKÓW</H1>

<c:if test="${not empty registers}">
	Lista zawiera ${fn:length(registers)} użytkowników.
	
	<table>
		<tr>
			<th>Login</th>
			<th>Hasło</th>			
			<th>Imię</th>
			<th>Nazwisko</th>
			<th>Ulica</th>
			<th>Kod pocztowy</th>
			<th>Miasto</th>
>
		</tr>
		<c:forEach items="${registers}" var="register">
			<tr>
				<td><a href="?id=${register.id}">${register.login}</a></td>
				<td>${register.password}</td>
				<td>${register.name}</td>
				<td>${register.surname}</td>
				<td>${register.street}</td>
				<td>${register.zipcode}</td>
				<td>${register.city}</td>				

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