
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>HTML Tutorial</title>
<meta charset="utf8" />
<meta name="keywords" content="content" />
<meta name="description" content="description" />
<meta name="author" content="author" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

<link href="<c:url value="/resources/css/swiper-bundle.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/jquery-ui.min.css" />"
	rel="stylesheet">
<style type="text/css">
.error {
	color: red;
	margin-left: 190px;
}
</style>
</head>

<body>





	<div class="container-fluid">
		<!-- navbar -->
		<div class="row">
			<div class="col-12 col-lg-12 col-xl-12 p-0">
				<nav class="navbar">
					<a class="navbar-brand d-flex flex-column align-items-center"
						href="/"> <span class="d-block text-white"> <span>T</span>
							<span style="margin-left: -17px;">A</span>
					</span> <span class="d-block text-white" style="font-size: 10px;">Travel
							Amazing</span>
					</a>
					<div class="navbar-icon"></div>
					<ul class="navbar-nav">
						<li><a href="home"> Khách Sạn </a></li>
						<li><a href="tour"> Tour </a></li>
						<li><a href="#"> Thức Ăn </a></li>
						<li><a href="#"> Liên Hệ </a></li>
					</ul>
					<ul class="navbar-nav navbar-login align-items-baseline">
						<li><i class="fas fa-phone-alt text-white mr-2"></i></li>
						<li><button class="btn btn-danger text-white">09012345678</button></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- end navbar -->

		<!-- payment hotel  -->
		<input type="hidden" name="id" value="${room1.id }" />
		<form:form class="container my-2" action="paymentHotel2" method="post"
			modelAttribute="bookingDetail" onclick="getTotalPrice(event)">
			<input type="hidden" name="id" value="${room1.id }" />

			<div class="row">
				<div class="col-12 col-sm-12 col-lg-6 border rounded">
					<h3>Thông tin người đặt</h3>
					<p class="text-danger">Vui lòng điền đầy đủ thông tin*</p>
					<!-- gender -->
					<form:errors path="bookingRoomEntity.customersEntity.gender"
						cssClass="error" />
					<div class="gender row mb-2">

						<label class="col-sm-3 font-weight-bold"> Danh xưng (*)</label>
						<div class="form-check form-check-inline col-sm-3">
							<form:radiobutton cssClass="form-check-input"
								path="bookingRoomEntity.customersEntity.gender"
								name="inlineCheckbox" id="inlineCheckbox1" value="0" />
							<label class="form-check-label" for="inlineCheckbox1">
								Anh </label>
						</div>
						<div class="form-check form-check-inline col-sm-3">
							<form:radiobutton path="bookingRoomEntity.customersEntity.gender"
								cssClass="form-check-input" name="inlineCheckbox"
								id="inlineCheckbox2" value="1" />
							<label class="form-check-label" for="inlineCheckbox2">
								Chị </label>

						</div>


					</div>
					<!-- gender -->
					<!-- full name -->

					<div class="form-group row">

						<label for="fullname"
							class="col-sm-4 col-form-label font-weight-bold">Id Room
						</label>
						<div class="col-sm-8">
							<input type="text" name="id" value="${room1.id }" readonly="true"
								Class="form-control" />

						</div>
					</div>
					<div class="form-group row">

						<label for="fullname"
							class="col-sm-4 col-form-label font-weight-bold">Name
							Room </label>
						<div class="col-sm-8">
							<input type="text" name="id" value="${room1.name }"
								readonly="true" Class="form-control" />

						</div>
					</div>
					<div class="form-group row">

						<label for="fullname"
							class="col-sm-4 col-form-label font-weight-bold"> Name
							Hotel</label>
						<div class="col-sm-8">
							<input type="text" name="id" value="${room1.hotelEntity.ten }"
								readonly="true" Class="form-control" />

						</div>
					</div>
					<div class="form-group row">

						<label for="fullname"
							class="col-sm-4 col-form-label font-weight-bold">Giá
							phòng </label>
						<div class="col-sm-8">
							<input type="text" name="id" value="${room1.roomPrice }"
								readonly="true" Class="form-control" id="giaphong" />

						</div>
					</div>

					<form:errors path="bookingRoomEntity.customersEntity.fullName"
						cssClass="error" />
					<div class="form-group row">

						<label for="fullname"
							class="col-sm-4 col-form-label font-weight-bold">Họ và
							tên (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.customersEntity.fullName"
								type="text" cssClass="form-control" />

						</div>
					</div>


					<form:errors path="bookingRoomEntity.customersEntity.mail"
						cssClass="error" />
					<div class="form-group row">

						<label for="fullname"
							class="col-sm-4 col-form-label font-weight-bold">Email </label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.customersEntity.mail"
								type="text" cssClass="form-control" readonly="true" />

						</div>
					</div>
					<!-- full name -->
					<!-- Phone -->
					<form:errors path="bookingRoomEntity.customersEntity.phone"
						cssClass="error" />
					<div class="form-group row">
						<label for="phonenumber"
							class="col-sm-4 col-form-label font-weight-bold">Điện
							thoại (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.customersEntity.phone"
								type="text" cssClass="form-control" />
						</div>
					</div>
					<!-- Dob -->
					<form:errors path="bookingRoomEntity.customersEntity.dob"
						cssClass="error" />
					<div class="form-group row">
						<label for="Dob" class="col-sm-4 col-form-label font-weight-bold">Dob (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.customersEntity.dob"
								type="date" cssClass="form-control" id="phonenumber" />
						</div>
					</div>

					<!-- Địa chỉ -->
					<form:errors path="bookingRoomEntity.customersEntity.address"
						cssClass="error" />
					<div class="form-group row">
						<label for="address"
							class="col-sm-4 col-form-label font-weight-bold">Địa chỉ (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.customersEntity.address"
								type="text" cssClass="form-control" />
						</div>
					</div>
					<form:errors path="bookingRoomEntity.numOfAdults" cssClass="error" />
					<div class="form-group row">
						<label for="numOfAdults"
							class="col-sm-4 col-form-label font-weight-bold">Số người
							lớn (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.numOfAdults" type="number"
								cssClass="form-control" id="adults" />
						</div>
					</div>
					<form:errors path="bookingRoomEntity.numOfChild" cssClass="error" />
					<div class="form-group row">
						<label for="numOfChild"
							class="col-sm-4 col-form-label font-weight-bold">Số người
							trẻ em (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.numOfChild" id="children"
								type="number" cssClass="form-control" />
						</div>
					</div>
					<form:errors path="bookingRoomEntity.quantity" cssClass="error" />
					<div class="form-group row">
						<label for="quantity"
							class="col-sm-4 col-form-label font-weight-bold">Số Lượng
							Phòng (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.quantity" type="number"
								id="rooms" cssClass="form-control" />
						</div>
					</div>


					<c:if test="${message != null }">
						<span class="error"><c:out value="${message }"></c:out></span>
					</c:if>
					<form:errors path="bookingRoomEntity.startDate" cssClass="error" />
					<div class="form-group row">
						<label for="startDate"
							class="col-sm-4 col-form-label font-weight-bold">Ngày bắt
							đầu (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.startDate" type="date"
								id="startDate" cssClass="form-control" />
						</div>
					</div>
					<form:errors path="bookingRoomEntity.endDate" cssClass="error" />
					<div class="form-group row">
						<label for="endDate"
							class="col-sm-4 col-form-label font-weight-bold">Ngày kết
							thúc (*)</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.endDate" type="date"
								id="endDate" cssClass="form-control" />
						</div>
					</div>

					<div class="form-group row">
						<label for="SelectService"
							class="col-sm-4 col-form-label font-weight-bold">Service</label>
						<div class="col-sm-8 a">

							<form:select id="SelectService"
								path="bookingRoomEntity.serviceEntity.id"
								cssClass="form-control">
								<form:option value="0">---Select Service---</form:option>
								<c:forEach items="${serviceEntity }" var="item">
									<form:option value="${item.id }">${item.nameService } Price: ${item.price } Percentage: ${item.promotionEntity.percentage } %</form:option>


								</c:forEach>

							</form:select>
						</div>

					</div>


					<!-- 		<script type="text/javascript">
						
							function myfc(event) {
								console.log(event.target.value)
							    const val = event.target.value

							 //   console.log(document.querySelector('option[value="'+val+'"]').text)
							     const val1 = document.querySelector('option[value="'+val+'"]').text
							    const val2 = val1.split(' ')
							    console.log('vi tri 1 :' +  val2[1],'vi tri 2 :' + val2[2],'vi tri 3 :' +  val2[3])
							    var val3 = val2[1]*val2[2]
							}
							
					</script> -->



					<form:errors path="bookingRoomEntity.totalPrice" cssClass="error" />
					<div class="form-group row">
						<label for="phonenumber"
							class="col-sm-4 col-form-label font-weight-bold">Tổng
							tiền</label>
						<div class="col-sm-8">
							<form:input path="bookingRoomEntity.totalPrice" type="text"
								id="tongtien2" cssClass="form-control"
								onfocusout="blurFunction()" readonly="true" />
						</div>
					</div>
					<form:errors path="bookingRoomEntity.note" cssClass="error" />
					<div class="form-group">
						<label for="exampleFormControlTextarea1" class="font-weight-bold">Thông
							tin yêu cầu khác </label>
						<form:textarea path="bookingRoomEntity.note" class="form-control"
							id="exampleFormControlTextarea1" rows="3" />

					</div>

					<form:input path="bookingRoomEntity.bookingStatusEntity.id"
						type="hidden" cssClass="form-control" readonly="true" />


					<div class="form-group d-flex justify-content-around mt-4">

						<!-- <button class="btn btn-success" style="cursor: pointer">Thanh
							toán ngay</button>
						 -->
						<input type="submit" value="Thanh toán ngay"
							class="btn btn-success" style="cursor: pointer" />
					</div>
				</div>


				<div class="col-12 col-sm-12 col-lg-6 pl-5 pt-5">
					<div class="row">
						<div class="col-12">
							<p>
								<i class="fas fa-home mr-2 text-info"></i> <span>${room1.hotelEntity.ten }</span>
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<p>
								<i class="fas fa-map-marker-alt mr-2 text-info"></i><span>${room1.name }</span>
							</p>
						</div>
					</div>

					<!--  <div class="row">
              <div class="col-12">
                <p>
                  <i class="fas fa-calendar-day mr-2 text-info"></i
                  ><span>T4, 30/06/2021 → T5, 01/07/2021 · 1 đêm</span>
                </p>
              </div>
            				</div> -->
					<div class="row">
						<div class="col-12">
							<p>
								<i class="fas fa-caret-right mr-2 ml-1 text-info"></i><span>Giá
									phòng : ${room1.roomPrice } VND</span>
							</p>
						</div>
					</div>
					<!-- <div class="row">
              <div class="col-12">
                <p>
                  <i class="fas fa-caret-right mr-2 ml-1 text-info"></i
                  ><span>2 Người lớn - 0 trẻ nhỏ</span>
                </p>
              </div>
            </div> -->
					<div class="row">
						<div class="col-12">
							<input type="text" name="" id="promo"
								placeholder="Bạn có mã khuyến mãi?" />
							<button class="border-0 bg-white font-weight-bold"
								style="cursor: pointer">Nhập mã</button>
						</div>
					</div>
					<div class="row">
						<div class="col-8 d-flex my-2 mt-4">
							<input type="text" class="form-control" name="" id="giatien"
								placeholder="Tổng tiền thanh toán khánh sạn" />
							<button class="btn btn-warning text-white btn-sm ml-2"
								style="font-size: 12px" onfocusout="blurFunction()">
								Giá tiền</button>
						</div>
					</div>
					<div class="row">
						<div class="col-8 d-flex my-2">
							<input type="text" class="form-control" name="" id="tongtien"
								placeholder="Tổng tiền" />
							<button class="btn btn-warning text-white btn-sm ml-2"
								style="font-size: 12px">Tổng tiền</button>
						</div>
					</div>
					
					<h3> Các gói service</h3>
					<c:forEach items="${serviceEntity }" var="item">
							<p><b>Tên</b> : ${item.nameService }. <b>Giá</b> :${item.price } VND.<br> <b>Chi tiết</b>: ${item.mota } 
							
                               <br><b>Khuyến mãi</b>: ${item.promotionEntity.percentage } %</p>
										
					</c:forEach>
					
					
				</div>
			</div>
		</form:form>
		<script>
			function getTotalPrice(event) {
				//event.preventDefault();
				let adults = document.getElementById("adults").value;
				let children = document.getElementById("children").value;
				let rooms = document.getElementById("rooms").value;
				let startDate = document.getElementById("startDate").value;
				let endDate = document.getElementById("endDate").value;
				let promo = document.getElementById("promo").value;
				let giaphong = document.getElementById("giaphong").value;
				startDate = new Date(startDate);
				endDate = new Date(endDate);
				
				
				let khuyenmai = document.getElementById("SelectService").value;
				const val1 = document.querySelector('option[value="'+khuyenmai+'"]').text;
				const val2 = val1.split(' ');
				//console.log('vi tri 1 :' +  val2[1],'vi tri 2 :' + val2[2],'vi tri 3 :' +  val2[3]);
				var val3 = val2[2]*(val2[4] / 100);
				
				
				// To calculate the time difference of two dates
				var Difference_In_Time = endDate.getTime()
						- startDate.getTime();
				
				// To calculate the no. of days between two dates
				var tongSoNgay = Difference_In_Time / (1000 * 3600 * 24);
			
				//	if (promo == "giam50") {
				//		promo = 0.5
				//	} else if (promo == "giam30") {
				//		promo = 0.7
				//	} else {
				//		promo = 1
				//	}
				
				//tinh gia tien va tong tien
				let giatien = adults * 100000 + children * 50000 + rooms
						* tongSoNgay * giaphong + val3*tongSoNgay;

				let tongtien = giatien;
				// render gia tien va tong tien
				document.getElementById("giatien").value = giatien;
						
				document.getElementById("tongtien").value = tongtien;
						
				document.getElementById("tongtien2").value = tongtien;
					
			}
		</script>

		<!-- payment hotel  -->
	</div>

	<%-- <script src="<c:url value="/resources/js/query-ui.min.js" />"></script> --%>
	<script src="<c:url value="/resources/js/jquery-3.6.0.js" />"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
	<script src="<c:url value="/resources/js/swiper-bundle.min.js" />"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script>
		function blurFunction() {
			event.preventDefault();
			document.getElementById("giatien").value = document
					.getElementById("tongtien").value;
		}
	</script>
</body>
</html>