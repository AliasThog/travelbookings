<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>


<style>
	.error{
	 color : red;
	}
	
</style>


</head>

<body>
	<form:form method="post" action="doAddAddress" modelAttribute="address1" enctype="multipart/form-data">
  		
  	Address : <form:input path="nameAddress" type="text" />
  	<form:errors path="nameAddress" cssClass="error"/>
		<br>
		<br>
  	Description : <form:input path="description" type="text" />
  		<form:errors path="description" cssClass="error"/>
		<br>
		<br>
	Hinh Anh :
	<input type="file" name="image" accept="image/*" />
		<br>
		<br>
		<input type="submit" value="submit" />
	</form:form>
</body>
</html>