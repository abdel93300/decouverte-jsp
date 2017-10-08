<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <jsp:useBean id="listUser" scope="request" class="java.util.ArrayList" /> --%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World</title>

</head>
<body class="css_body">

	<%-- 	<% for(int i = 0; i < listUser.size(); i+=1) { %> --%>
	<!-- 	<h1> -->
	<!-- 		Personne n° -->
	<%-- 		<%=i+1 %> --%>
	<!-- 		&nbsp; -->
	<%-- 		<%=listUser.get(i).toString()%> --%>
	<!-- 	</h1> -->
	<%-- 	<% } %> --%>

	<h1>Utilisation de JSTL</h1>


	<c:forEach var="user" items="${listUser}">
		<p>${user.nom}- ${user.prenom}- ${user.age} </p>
	</c:forEach>

	<table>
		<tr>
			<th>Nom</th>
			<th>Prénom</th>
			<th>Age</th>
		</tr>

		<c:forEach items="${listUser}" var="i">
			<tr>
				<td>${i.nom}</td>
				<td>${i.prenom}</td>
				<td>${i.age}</td>
			</tr>
		</c:forEach>

	</table>

	<c:set var="today" value="<%=new java.util.Date()%>" />
<p>Heure : <strong><fmt:formatDate type="time" value="${today}" /></strong></p>
<p>Date : <strong><fmt:formatDate type="date" value="${today}" /></strong></p>
<p>Date et Heure : <strong><fmt:formatDate type="both" value="${today}" /></strong></p>
<p>Date et Heure Short :
<strong>
    <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${today}" />
</strong>
</p>
<p>Date et Heure Medium:
<strong>
    <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${today}" />
</strong></p>
<p>Date et Heure Long:
<strong>
    <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${today}" />
</strong></p>
<p>Date au format (yyyy-MM-dd):
<strong>
    <fmt:formatDate pattern="yyyy-MM-dd" value="${today}" />
</strong></p>

	<h2 class=css_h2>Vous naviguez avec le USER :
		${header['User-Agent']}</h2>


</body>
<style>
.css_h2 {
	background-color: yellow;
	color: red;
	all: initial;
}
th {
	background-color: purple;
	color: white;
	
	
}
</style>
</html>
