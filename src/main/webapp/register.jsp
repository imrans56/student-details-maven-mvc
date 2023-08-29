<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:form action="save" modelAttribute="nullStudent">  <!--  pass key which passed in controller(register) -->
<f:input path="id" placeholder="Enter Id"/> <br>
<f:input path="name" placeholder="Enter name"/> <br>
<f:input path="email" placeholder="Enter email"/> <br>
<f:input path="password" type="password" placeholder="Enter password"/> <br>
<input type="Submit" value="Register">

</f:form>

</body>
</html>