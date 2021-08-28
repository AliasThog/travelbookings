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

<style type="text/css">
.error {
	color: red;
}
img {
 width: 100px;
}
</style>
</head>
<body>
	<div style="position: absolute; top: 10px; right: 25px;">
		<form:form action="logout" method="post">
			<input type="submit" value="log out" />
		</form:form>
	</div>

	<a href="addHotel">Add Hotel</a>
	<a href="addAddress">Add Adress</a>

	<h1>List Hotel</h1>

	<c:if test="${message != null }">
		<span class="error"><c:out value="${message }"></c:out></span>
	</c:if>
	<table style="margin: auto;" border="1">
		<tr>
			<th>ID</th>
			<th>Tên khách sạn</th>
			<th>Địa chỉ</th>
			<th>Cách trung tâm</th>
			<th>Mô tả</th>
			<th>Đánh giá</th>
			<th>Hinh anh</th>
			<th>Tên Địa Điểm</th>
			<th>Description</th>
       
			<th></th>
		</tr>
		<c:forEach items="${listHotel }" var="item">
			<tr>
				<td>${item.id }</td>
				<td>${item.ten }</td>
				<td>${item.diaChi }</td>
				<td>${item.cachTrungTam }</td>
				<td>${item.moTa }</td>

				<td>${item.danhGia }</td>
				<%-- <td>${item.urlImage }</td> --%>
				<td>
				<img src="${pageContext.request.contextPath}/image/${item.urlImage}"/>
				</td>
				<td>${item.addressEntity.nameAddress }</td>

				<td>${item.addressEntity.description }</td>

				<td><a href="deleteHotel?id=${item.id }"
					onclick="return confirm('Are you sure?')">Delete Hotel</a> <a
					href="updateHotel?id=${item.id }">Update Hotel</a></td>
			</tr>
		</c:forEach>























	</table>
</body>
</html>