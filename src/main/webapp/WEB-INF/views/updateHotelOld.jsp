<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
        <form:form method="post" action="doUpdateHotel" modelAttribute="hotel1">
  	
  	  ID(*) <form:input path="id" readonly="true" />
  	  
  	  <br>
  	  <br>
  	Ten : <form:input path="ten" type="text" />
  	       <form:errors path="ten" cssClass="error"/>
		<br>
		<br>
  	
  	Dia chi : <form:input path="diaChi" type="text" />
  	<form:errors path="diaChi" cssClass="error"/>
		<br>
		<br>
  	Cach trung tam : <form:input path="cachTrungTam" type="text" />
  		<form:errors path="cachTrungTam" cssClass="error"/>
		<br>
		<br>
		Mo ta : <form:input path="moTa" type="text" />
  		<form:errors path="moTa" cssClass="error"/>
		<br>
		<br>
		Giap Bien : <form:input path="giapBien" type="text" />
  		<form:errors path="giapBien" cssClass="error"/>
		<br>
		<br>
		Danh gia : <form:input path="danhGia" type="text" />
  		<form:errors path="danhGia" cssClass="error"/>
		<br>
		<br>
		Phan hoi : <form:input path="phanHoi" type="text" />
  		<form:errors path="phanHoi" cssClass="error"/>
		<br>
		<br>
		
		Dia diem :
		<form:select path="addressEntity.id">
			<form:option value="0">---Select Dia Diem---</form:option>
			<c:forEach items="${address1 }" var="item">
				<form:option value="${item.id }">${item.nameDiaDiem }</form:option>
			</c:forEach>
		</form:select>
		
		<input type="submit" value="Update" />
	</form:form>
	<a href="list">Return list</a>
</body>
</html>