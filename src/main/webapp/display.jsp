<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="10px">
		<tr>
			<th>Student_Id</th>
			<th>Student_Name</th>
			<th>Student_Email</th>
			<th>Student_Password</th>
			<th>EDIT</th>
			<th>DELETE </th>
			
		</tr>
		<c:forEach var="student" items="${students}">
			<tr>
				<td>${student.getId()}</td>
				<td>${student.getName()}</td>
				<td>${student.getEmail()}</td>
				<td>${student.getPassword()}</td>
				<td><a href="updateStudent?id=${student.getId()}">EDIT here</a></td>
	            <td><a href="deleteStudent?id=${student.getId()}">delete student</a></td>
			</tr>
		</c:forEach>


	</table>
</body>
</html>