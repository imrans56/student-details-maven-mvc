<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:form action="saveUpdatedStudent" modelAttribute="existingStudent">  
<!-- readonly :- cannot change or alter the value present here in this input tag -->
<f:input path="id" readonly="true"/> <br>
<f:input path="name" placeholder="Enter name"/> <br>
<f:input path="email" placeholder="Enter email"/> <br>
<f:input path="password" placeholder="Enter password"/> <br>
<input type="Submit" value="update">
</f:form>
</body>
</html>