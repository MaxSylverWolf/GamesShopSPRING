<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<H1><fmt:message key="logonADMINForm.label"/></H1>
<h3>LOG SYLVERWOLF PASS ARCANINE</h3>
	<form:form commandName="logonCommand">
		<table>
		<tr><th><fmt:message key="logonADMINForm.login"/></th>
			<td>
				<form:input path="login" /><form:errors path="login" cssStyle="color:red;"/>
			</td>
		</tr>
		<tr>	
			<th><fmt:message key="logonADMINForm.password"/></th>
			<td>
				<form:password path="password" /><form:errors path="password" cssStyle="color:red;"/>
			</td>
		</tr>
		<tr>	
			<th></th>
			<td>
				<form:checkbox path="remember" />
					&nbsp; <b><fmt:message key="logonADMINForm.remember"/></b>
					
			</td>
		</tr>		
		<tr><td colspan="2"><input type="submit" value="<fmt:message key="logonADMINForm.submit"/>"></td></tr>	
		</table>	
	</form:form>	
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