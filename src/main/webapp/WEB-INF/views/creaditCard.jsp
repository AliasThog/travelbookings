<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<title>HTML Tutorial</title>
<meta charset="utf8" />
<meta name="keywords" content="content" />
<meta name="description" content="description" />
<meta name="author" content="author" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<c:url value="/resources/css/swiper-bundle.min.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/js/jquery-ui.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/fontawesome.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/fontawesome.min.css" />"
	rel="stylesheet">
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%;
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%;
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%;
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type=date] {
	width: 100%;
	margin-bottom: 20px;
	padding: 11px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 10px 0 5 5;
	font-size: 35px;
}

.btn {
	background-color: #003c71;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #003c71;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

.error {
	color: red;
	font-weight: border;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>

<body>

	<!-- navbar -->
	<div class="row">
		<div class="col-12 col-lg-12 col-xl-12" style="height: 100%">
			<nav class="navbar">
				<a class="navbar-brand d-flex flex-column align-items-center"
					href="/"> <span class="d-block text-white"> <span>T</span>
						<span style="margin-left: -17px;">A</span>
				</span> <span class="d-block text-white" style="font-size: 10px;">Travel
						Amazing</span>
				</a>
				<div class="navbar-icon"></div>
				<ul class="navbar-nav">
					<li><a href="../../index.html"> Kh??ch S???n </a></li>
					<li><a href="./tour.html"> Tour </a></li>
					<li><a href="#"> Th???c ??n </a></li>
					<li><a href="#"> Li??n H??? </a></li>
				</ul>
				<ul class="navbar-nav navbar-login">
					<c:choose>
						<c:when test="${sessionScope.email == null}">
							<li><a href="login"> ????ng nh???p </a></li>
							<li><a href="register"> ????ng k?? </a></li>
						</c:when>
						<c:when test="${sessionScope.email != null}">
							<!-- <li><a href="logout"> Logout </a></li>  -->
							<li>
								<div style="position: absolute; top: 10px; right: 25px;">
									<form:form action="logout" method="post">
										<input type="submit" value="Logout" />
									</form:form>
								</div>
							</li>
						</c:when>
					</c:choose>
				</ul>
			</nav>
		</div>
	</div>

	<div class="row">
		<div class="col-75">
			<div class="container">
				<form:form action="${pageContext.request.contextPath}/doCredit"
					method="post" modelAttribute="creditCard">

					<div class="row">
						<%-- T???ng gi?? ti???n c???a b???n l?? :	<c:out value="${sessionScope.totalPrice }"></c:out> --%>


						<div class="col-50">
							<h3 style="margin-top: 15px">Payment</h3>
							<label for="fname">Accepted Cards</label>
							<div class="icon-container">
								<i class="fab fa-cc-visa" style="color: navy;"></i> <i
									class="fab fa-cc-amex" style="color: blue;"></i> <i
									class="fab fa-cc-mastercard" style="color: red;"></i> <i
									class="fab fa-cc-discover" style="color: orange;"></i>
							</div>
							<label for="cname">Balance (*)</label>
							<c:if test="${message != null }">
								<span class="error"><c:out value="${message }"></c:out></span>
							</c:if>
							<form:errors path="creditCardEntity.balance" cssClass="error" />
							<form:input type="text" id="cname" name="cardname"
								path="creditCardEntity.balance" />

							<label for="ccnum">Credit card number (*)</label>
							<form:errors path="creditCardEntity.cardNumber" cssClass="error" />
							<form:input type="text" id="ccnum" name="cardnumber"
								path="creditCardEntity.cardNumber" />

							<div class="row">
								<div class="col-50">
									<label for="expyear">Expriration Date (*)</label>
									<form:errors path="creditCardEntity.expirationDate"
										cssClass="error" />
									<form:input type="date" name="expyear"
										path="creditCardEntity.expirationDate" />

								</div>

								<div class="col-50">
									<label for="cvv">CVV (*)</label>
									<form:errors path="creditCardEntity.cvv" cssClass="error" />
									<form:input type="text" id="cvv" name="cvv"
										path="creditCardEntity.cvv" />

								</div>
							</div>
						</div>

						<div class="col-50">
							<h3 style="margin-top: 15px">Billing Address</h3>
							<label for="fname"><i class="fa fa-user"></i> First Name
								(*)</label>
							<form:errors path="creditCardEntity.firstName" cssClass="error" />
							<form:input type="text" id="fname" name="firstName"
								path="creditCardEntity.firstName" />

							<label for="fname"><i class="fa fa-user"></i> Last Name
								(*)</label>
							<form:errors path="creditCardEntity.lastName" cssClass="error" />
							<form:input type="text" id="fname" name="lastName"
								path="creditCardEntity.lastName" />

							<h4>S??? ti???n b???n c???n thanh to??n l?? : <c:out value="${sessionScope.totalPrice }"> VND. </c:out> </h4>
							
						</div>
					</div>
					<%-- <form:input path="bookingRoomEntity.bookingStatusEntity.id"
							type="text" cssClass="form-control" readonly="true" /> --%>


					<input type="submit" value="Continue to checkout" class="btn">
				</form:form>
			</div>
		</div>


	</div>


	</div>



	</div>
	<!-- footer -->

	<div class="row">
		<div class="col-12 col-md-12 p-0">
			<div class="footer">
				<div class="row">
					<div class="col-12 d-flex flex-wrap">
						<ul>
							<li class="font-weight-bold">V??? ch??ng t??i</li>
							<li><a class="text-secondary" href="#">Ch??ng t??i</a></li>
							<li><a class="text-secondary" href="#">PMS - Mi???n ph??</a></li>
						</ul>
						<ul>
							<li class="font-weight-bold">Th??ng Tin C???n Bi???t</li>
							<li><a class="text-secondary" href="#">??i???u ki???n & ??i???u
									kho???n</a></li>
							<li><a class="text-secondary" href="#">Quy ch??? ho???t ?????ng</a>
							</li>
							<li><a class="text-secondary" href="#">C??u h???i th?????ng
									g???p</a></li>
						</ul>
						<ul>
							<li class="font-weight-bold">?????i t??c</li>
							<li><a class="text-secondary" href="#">Quy ch??? b???o hi???m
									Cathay</a></li>
							<li><a class="text-secondary" href="#">Y??u c???u b???i
									th?????ng Cathay</a></li>
							<li><a class="text-secondary" href="#">Quy ch??? tr??? g??p</a></li>
						</ul>
						<ul>
							<li><a href="#"> <img
									src="https://cdn1.ivivu.com/bocongthuong.png" alt="" />
							</a></li>
						</ul>
						<ul>
							<li><a href="#"> <img
									src="https://res.ivivu.com/hotel/img/vic.png" alt="" />
							</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-md-8">
						<p class="mb-3 mt-5 text-secondary font-weight-bold">&copy
							2020 - ?????i l?? Du l???ch Tr???c tuy???n H??ng ?????u Vi???t Nam 2020</p>
						<p class="text-secondary">DKKD: 0312788481, Ng??y c???p:
							21/05/2014, S??? k??? ho???ch ?????u t?? th??nh ph??? H??? Ch?? Minh</p>
						<ul>
							<li class="text-secondary my-1" style="font-size: 13px;"><i
								class="fas fa-map-marker-alt text-secondary"></i> HCM: L???u 2,
								T??a nh?? Anh ????ng, 215 Nam K??? Kh???i Ngh??a, Ph?????ng 7, Qu???n 3, Tp.
								H??? Ch?? Minh</li>
							<li class="text-secondary my-1" style="font-size: 13px;"><i
								class="fas fa-map-marker-alt text-secondary"></i> HN: T???ng 1,
								T??a nh?? Ladeco, 266 ?????i C???n, Ph?????ng Li???u Giai, Qu???n Ba ????nh, H??
								N???i</li>
							<li class="text-secondary my-1" style="font-size: 13px;"><i
								class="fas fa-map-marker-alt text-secondary"></i> C???n Th??: T???ng
								7 - T??a nh?? STS - 11B ?????i L??? H??a B??nh, P. T??n An, Q. Ninh Ki???u,
								TP. C???n Th??</li>
						</ul>
					</div>
					<div class="col-12 col-md-4">
						<ul>
							<li class="font-weight-bold text-secondary">B???n c???n tr???
								gi??p? H??y g???i ngay</li>
							<li><a href="#" class="text-warning"
								style="font-size: 20px;"><i class="fas fa-phone-alt"></i>
									1900 2045</a></li>
							<li><a href="#" class="text-secondary">T?? v???n v???i Olivia
									- chatbot c???a ch??ng t??i</a></li>
							<li>
								<p class="font-weight-bold">?????t ph??ng d??? d??ng h??n qua ???ng
									d???ng c???a ch??ng t??i</p> <img
								src="https://cdn1.ivivu.com/app-icon/iVIVUcode.png" alt=""
								width="60"> <img class="d-inline-block"
								src="https://cdn1.ivivu.com/app-icon/tai-appstore.png" alt="">
								<img class="d-inline-block"
								src="https://cdn1.ivivu.com/app-icon/tai-google-play.png" alt="">
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	</div>

	<script src="<c:url value="/resources/js/jquery-3.6.0.js" />"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/swiper-bundle.min.js" />"></script>


	<script src="<c:url value="/resources/js/script.js" />"></script>
	<script>
		var swiper = new Swiper(".mySwiper", {
			spaceBetween : 10,
			slidesPerView : 4,
			freeMode : true,
			watchSlidesVisibility : true,
			watchSlidesProgress : true,
		});
		var swiper2 = new Swiper(".mySwiper2", {
			spaceBetween : 10,
			navigation : {
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev",
			},
			thumbs : {
				swiper : swiper,
			},
		});

		$("#datepicker").datepicker();
	</script>
</body>

</html>
