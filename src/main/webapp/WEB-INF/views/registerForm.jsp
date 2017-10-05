<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
							<h3>ZAREJESTRUJ SIĘ</h3>
							<div>
								<p>
<center>
	<table border="1">
		<form:form commandName="register">
			<tr>
				<th>Login: </th>
				<td>
					<form:input path="login"/>
					<form:errors path="login" cssStyle="color:red"/>
				</td>
			</tr>
			<tr>
				<th>Hasło:</th>
				<td>
					<form:input path="password"/>
					<form:errors path="password" cssStyle="color:red"/>
				</td>
			</tr>
			<tr>
				<th>Imię:</th>
				<td>
					<form:input path="name"/>
					<form:errors path="name" cssStyle="color:red"/>
				</td>
			</tr>
			<tr>
				<th>Nazwisko:</th>
				<td>
					<form:input path="surname"/>
					<form:errors path="surname" cssStyle="color:red"/>
				</td>
			</tr>
			<tr>
				<th>Adres wysyłki (pełna ulica):</th>
				<td>
					<form:input path="street"/>
					<form:errors path="street" cssStyle="color:red"/>
				</td>
			</tr>

			<tr>
				<th>Kod pocztowy:</th>
				<td>
					<form:input path="zipcode"/>
					<form:errors path="zipcode" cssStyle="color:red"/>
				</td>
			</tr>
			<tr>
				<th>Miasto:</th>
				<td>
					<form:input path="city"/>
					<form:errors path="city" cssStyle="color:red"/>
				</td>
			</tr>			
			<tr><td colspan="2"><input type="submit" value="Wyślij"></td></tr>
		</form:form>
	</table></center>	
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
