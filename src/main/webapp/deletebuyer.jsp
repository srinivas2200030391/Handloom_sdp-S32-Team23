<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@include file="adminnavbar.jsp"  %><br/>
<h3 align="center">Delete Buyer</h3>
<table align = "center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
<th>ACTION</th>
</tr>
<c:forEach items="${buyerlist}" var="buyer">
<tr>
<td><c:out value="${buyer.id}"></c:out></td>
<td><c:out value="${buyer.name}"></c:out></td>
<td><c:out value="${buyer.gender}"></c:out></td>
<td><c:out value="${buyer.dateofbirth}"></c:out></td>
<td><c:out value="${buyer.email}"></c:out></td>
<td><c:out value="${buyer.location}"></c:out></td>
<td><c:out value="${buyer.contact}"></c:out></td>

<td>
<a href='<c:url value='delete?id=${buyer.id}'></c:url>'>Delete</a>
</td>

</tr>
</c:forEach>
</table>
</body>
</html>