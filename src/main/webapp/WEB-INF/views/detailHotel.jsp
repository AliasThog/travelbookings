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
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
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
					<ul class="navbar-nav navbar-login">
						<c:choose>
							<c:when test="${sessionScope.email == null}">
								<li><a href="login"> Đăng nhập </a></li>
								<li><a href="register"> Đăng ký </a></li>
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
		<!-- end navbar -->
		<!-- path-->
		<div class="row">
			<!-- <div class="col-12 col-xl-12">
				<div class="path">
					<span><a href="../../index.html">Trang chủ </a></span> <span><a
						href="../../index.html"> Việt Nam </a></span> <span><a
						href="../../index.html"> Đà Nẵng </a></span> <span><a
						href="../../index.html"> Dân chơi hotel </a></span>
				</div>
			</div> -->
		</div>
		<!-- end path -->
		<!------------------------------------ content ----------------------------------------------------->
		<!------------------------------------ content ----------------------------------------------------->
		<!------------------------------------ content ----------------------------------------------------->
		<!------------------------------------ content ----------------------------------------------------->




		<div class="row">
			<div class="col-12 col-md-3 col-lg-3 col-xl-3 p-0">
				<div class="intro">
					<div class="experience">
						<h5 style="margin-top: 15px">Trải nghiệm phải thử ở ${hotel.ten }</h5>
						<ul>
							<li>${hotel.moTa }
							<li>
							<li>${hotel.tienIch2 }
							<li>
						</ul>
					</div>
					<div class="hotel-same">
						<h5>Khách sạn tương tự</h5>
						<div class="list-hotel">
							<c:forEach items="${listHotel}" var="item">
								<a href="detailHotel?id=${item.id }" > 
								<img style="height: 20%; width: 40%;"
									src="${pageContext.request.contextPath}/image/${item.urlImage}" />
									<div class="hotel hotel-title">
										<p class="m-0" style="font-size: 20px">${item.ten } </p>
										
										<span for="star-five"> ${item.hotelTypeEntity.name } </span>
									</div>
									<div class="hotel hotel-comment">
										<p>${item.diaChi }</p>
									</div></a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>



			<!-- content detail hotel -->
			<div class="col-12 col-md-9 col-lg-9 col-xl-9 p-0">
				<div class="content-detail-hotel">
					<div class="hotel-card">
						<div class="title">

							<h2>${hotel.ten }</h2>

							<%-- 		<h5> ${hotel.diaChi }  </h5>	
						<h5> ${hotel.cachTrungTam }  </h5>	
						<h5> ${hotel.moTa }  </h5>	
						<c:forEach items="${hotel.roomEntityList}" var="room">	
						<h5> ${room.name }  </h5>
						
						</c:forEach> --%>
							<div class="view">
								<span for="star-five" style="color: green;">
									${hotel.hotelTypeEntity.name } </span> <span class="ml-2"><a
									href="#">${hotel.danhGia }</a></span>
							</div>
							<p>Bãi Bắc , Bắc Bán Đảo Sơn Trà , Đà Nẵng , Việt Nam</p>
						</div>
						<!-- <div class="price">
							<p style="font-size: 12px">Giá chỉ từ</p>
							<strong class="d-block mb-2"> 14.420.000 VND </strong> <a
								href="../page/payment_hotel.html"
								class="btn btn-warning text-white" style="font-size: 12px">
								Đặt ngay </a>
						</div> -->
					</div>
					<div class="hotel-swiper">
						<div class="swiper-container mySwiper2">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img
										src="${pageContext.request.contextPath}/image/${hotel.urlImage}" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/vinh-ninh-van-370x395.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/sapa-370x190.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/mai-chau-370x190.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/con-dao-370x395.png" />
								</div>
							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
						<div thumbsSlider="" class="swiper-container mySwiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img
										src="${pageContext.request.contextPath}/image/${hotel.urlImage}" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/vinh-ninh-van-370x395.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/sapa-370x190.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/mai-chau-370x190.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg" />
								</div>
								<div class="swiper-slide">
									<img
										src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/con-dao-370x395.png" />
								</div>
							</div>
						</div>
					</div>
					<div class="hotel-detail">
						<div class="detail detail-text">
							<p style="font-weight: bold;">${hotel.combo }</p>
							<p class="font-weight-bold">Thông tin Khu nghỉ dưỡng
								${hotel.ten } :</p>
							<ul class="p-0">
								<li>${hotel.dichvu }</li>
								<li>${hotel.dichvu1 }</li>
								<li>${hotel.dichvu2 }</li>
								<li>${hotel.dichvu3 }</li>

							</ul>
						</div>


						 	
						<div class="detail detail-order">
							<img style="width: 25%"  alt=""
											src="https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-9/202800258_326992695787520_8183699490161190532_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=HXCePLUl1QgAX-Lbxmy&_nc_ht=scontent-sin6-1.xx&oh=235e114c3afb10c3c7bb7bc8324136c5&oe=613D72E2" />
							<p class="mt-5" style="font-size: 20px;font-weight: bolder;">Cần hỗ trợ? Gọi ngay tổng đài</p>
							<span><i class="fas fa-phone-alt"></i> <a href="#">
									0979797979 </a></span>
						</div> 
					</div>

					<div class="hotel-datetime my-4">
						<form:form class="d-flex border p-2 rounded"
							action="searchHotelRoom" method="GET">
							<input class="mx-1" type="date" name="" id="" />
							<input class="mx-1" type="date" name="" id="" />
							<input type="hidden" name="id" value="${hotel.id }" />
							<input name="keyword" type="text" style="width: 400px"
								placeholder="Search by Name Room or Type Room or Status Room">

							<input type="submit" value="Search">
						</form:form>
					</div>
					<div class="border p-2 rounded">
						<p class="m-0">
							Trả góp chỉ từ 1.598.000 VND/tháng qua thẻ tín dụng Visa,
							Mastercard, JCB <a href="#"> xem chi tiết </a>
						</p>
					</div>
					<c:choose>
						<%--  <c:if test="${rooms == null || rooms.size() eq 0} ">  --%>
						<%-- <c:if test="${rooms == null } ">  --%>
						<c:when test="${rooms == null || rooms.size() eq 0}">
							<c:forEach items="${hotel.roomEntityList}" var="room">
								<div class="hotel-option d-flex mt-3">
									<div class="option">
										<h4 class="text-center">Loại Phòng</h4>
										<p style="color: #26BED6; font-weight: bold; font-size: 20px;">${room.name }</p>
										<div class="image">
											<img style="width: 100%"
												src="${pageContext.request.contextPath}/image/${room.urlImageRoom}" />
										</div>
										<p>${room.convenient }</p>
										<p>Diện tích: ${room.area }</p>
										<p>Loại giường: ${room.bedType }</p>
										<p style="font-weight: bold;">Tình trạng phòng:
											${room.roomStatusEntity.rsRoomStatus }</p>
									</div>
									<div class="option">
										<h4 class="text-center">Các lựa chọn</h4>
										<p>${room.description }</p>
										<p>${room.description1 }</p>
										<p>${room.description2 }</p>

									</div>
									<div class="option">
										<h4 class="text-center">Tổng giá</h4>
										<p>
											Giá 1 đêm đã bao gồm thuế phí : <span
												style="font-weight: bold;"> ${room.roomPrice } VND</span>
										</p>
										<p>Tích lũy thêm 20 điểm khi đặt phòng này</p>
									</div>
									<div class="option">
										<h4 class="text-center">Giữ phòng</h4>


										<c:choose>
											<c:when
												test="${room.roomStatusEntity.rsRoomStatus == 'Hết Phòng'}">
												<h3
													class="btn btn-success text-white w-50 mx-auto d-block mt-3">
													Hết phòng</h3>
											</c:when>
											<c:when
												test="${room.roomStatusEntity.rsRoomStatus != 'Hết Phòng'}">

												<a href="paymentHotel?id=${room.id }"
													class="btn btn-warning text-white w-50 mx-auto d-block mt-3"
													style="font-size: 14px"> Đặt </a>

											</c:when>
										</c:choose>
									</div>
								</div>
							</c:forEach>
						</c:when>

						<c:when test="${rooms != null && rooms.size() gt 0}">
							<c:forEach items="${rooms}" var="room">



								<div class="hotel-option d-flex mt-3">
									<div class="option">
										<h4 class="text-center">Loại Phòng</h4>
										<p style="color: #26BED6; font-weight: bold; font-size: 20px;">${room.name }</p>
										<div class="image">
											<img style="width: 100%"
												src="${pageContext.request.contextPath}/image/${room.urlImageRoom}" />
										</div>
										<p>${room.convenient }</p>
										<p>Diện tích: ${room.area }</p>
										<p>Loại giường: ${room.bedType }</p>
										<p style="font-weight: bold;">Tình trạng phòng:
											${room.roomStatusEntity.rsRoomStatus }</p>
									</div>
									<div class="option">
										<h4 class="text-center">Các lựa chọn</h4>
										<p>${room.description }</p>
										<p>${room.description1 }</p>
										<p>${room.description2 }</p>

									</div>
									<div class="option">
										<h4 class="text-center">Tổng giá</h4>
										<p>
											Giá 1 đêm đã bao gồm thuế phí : <span
												style="font-weight: bold;"> ${room.roomPrice } VND</span>
										</p>
										<p>Tích lũy thêm 20 điểm khi đặt phòng này</p>
									</div>
									<div class="option">
										<h4 class="text-center">Giữ phòng</h4>

										<c:choose>
											<c:when
												test="${room.roomStatusEntity.rsRoomStatus == 'Hết Phòng'}">
												<h3
													class="btn btn-success text-white w-50 mx-auto d-block mt-3">
													Hết phòng</h3>
											</c:when>
											<c:when
												test="${room.roomStatusEntity.rsRoomStatus != 'Hết Phòng'}">

												<a href="paymentHotel?id=${room.id }"
													class="btn btn-warning text-white w-50 mx-auto d-block mt-3"
													style="font-size: 14px"> Đặt </a>

											</c:when>
										</c:choose>







										<%-- 	<c:choose>
											<c:when test="${flag != null }">
												<span class="error"><c:out value="${message }"></c:out></span>
											</c:when>
											<c:when test="${flag == null}">
												<!-- <li><a href="logout"> Logout </a></li>  -->
												<a href="paymentHotel?id=${room.id }"
													class="btn btn-warning text-white w-50 mx-auto d-block mt-3"
													style="font-size: 14px"> Đặt </a>
											</c:when>
										</c:choose> --%>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">No
									data found</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<%-- </c:if> --%>

















					<div class="hotel-evaluate">
						<p>Đánh giá khách hàng về Dân Chơi Hotel</p>
						<div class="evaluate-image">
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
							<div class="box rounded"
								style="background-image: url(https://cdn1.ivivu.com/iVivu/2021/07/08/10/ninh-binh-370x190.jpg);"></div>
						</div>
						<p class="my-2">Đánh giá gần đây</p>
						<div class="evaluate-comment">
							<!-- render data  -->




							<div
								class="
                    col-xs-12 col-sm-12 col-md-12 col-lg-12
                    mrg-lr-mb-0
                    d-flex
                    my-4
                  ">
								<div class="horizontalLine"></div>
								<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
									<div class="row">
										<div
											class="
                          col-xs-12 col-sm-12 col-md-12 col-lg-12
                          vspacing3
                        ">
											<i class="fas fa-user"></i> <span> Nguyễn Đình Dũng</span>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
									<div class="row">
										<div
											class="
                          col-xs-12 col-sm-12 col-md-12 col-lg-12
                          vspacing3
                        ">
											<span class="badge badge-primary">10.0</span> <span
												class="badge badge-success">Tuyệt vời </span> <span
												class="badge badge-secondary">18-05-2021</span>
										</div>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
											<span class="customerReviewContent"> Bữa sáng ngon. Vị
												trí đẹp. Nhiều hồ bơi cho trẻ nhỏ. Resort cực kỳ thích hợp
												cho gia đình có trẻ nhỏ. An ninh tốt. Resort kiểm soát và
												sàn lọc khách trong mùa nhạy cảm này, đi đâu cũng có nước
												rửa tay, nhân viên mang khẩu trang cẩn thận. Các bạn cần 1
												nơi thực sự để nghỉ dưỡng mùa dịch thì với mình Carmelina là
												1 sự lựa chọn hoàn hảo. </span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end content detail hotel -->
		</div>

		<!-- end content -->
		<!-- footer -->

		<div class="row">
			<div class="col-12 col-md-12 p-0">
				<div class="footer">
					<div class="row">
						<div class="col-12 d-flex flex-wrap">
							<ul>
								<li class="font-weight-bold">Về chúng tôi</li>
								<li><a class="text-secondary" href="#">Chúng tôi</a></li>
								<li><a class="text-secondary" href="#">PMS - Miễn phí</a></li>
							</ul>
							<ul>
								<li class="font-weight-bold">Thông Tin Cần Biết</li>
								<li><a class="text-secondary" href="#">Điều kiện & Điều
										khoản</a></li>
								<li><a class="text-secondary" href="#">Quy chế hoạt
										động</a></li>
								<li><a class="text-secondary" href="#">Câu hỏi thường
										gặp</a></li>
							</ul>
							<ul>
								<li class="font-weight-bold">Đối tác</li>
								<li><a class="text-secondary" href="#">Quy chế bảo hiểm
										Cathay</a></li>
								<li><a class="text-secondary" href="#">Yêu cầu bồi
										thường Cathay</a></li>
								<li><a class="text-secondary" href="#">Quy chế trả góp</a>
								</li>
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
								2020 - Đại lý Du lịch Trực tuyến Hàng đầu Việt Nam 2020</p>
							<p class="text-secondary">DKKD: 0312788481, Ngày cấp:
								21/05/2014, Sở kế hoạch đầu tư thành phố Hồ Chí Minh</p>
							<ul>
								<li class="text-secondary my-1" style="font-size: 13px;"><i
									class="fas fa-map-marker-alt text-secondary"></i> HCM: Lầu 2,
									Tòa nhà Anh Đăng, 215 Nam Kỳ Khởi Nghĩa, Phường 7, Quận 3, Tp.
									Hồ Chí Minh</li>
								<li class="text-secondary my-1" style="font-size: 13px;"><i
									class="fas fa-map-marker-alt text-secondary"></i> HN: Tầng 1,
									Tòa nhà Ladeco, 266 Đội Cấn, Phường Liễu Giai, Quận Ba Đình, Hà
									Nội</li>
								<li class="text-secondary my-1" style="font-size: 13px;"><i
									class="fas fa-map-marker-alt text-secondary"></i> Cần Thơ: Tầng
									7 - Tòa nhà STS - 11B Đại Lộ Hòa Bình, P. Tân An, Q. Ninh Kiều,
									TP. Cần Thơ</li>
							</ul>
						</div>
						<div class="col-12 col-md-4">
							<ul>
								<li class="font-weight-bold text-secondary">Bạn cần trợ
									giúp? Hãy gọi ngay</li>
								<li><a href="#" class="text-warning"
									style="font-size: 20px;"><i class="fas fa-phone-alt"></i>
										1900 2045</a></li>
								<li><a href="#" class="text-secondary">Tư vấn với
										Olivia - chatbot của chúng tôi</a></li>
								<li>
									<p class="font-weight-bold">Đặt phòng dễ dàng hơn qua ứng
										dụng của chúng tôi</p> <img
									src="https://cdn1.ivivu.com/app-icon/iVIVUcode.png" alt=""
									width="60"> <img class="d-inline-block"
									src="https://cdn1.ivivu.com/app-icon/tai-appstore.png" alt="">
									<img class="d-inline-block"
									src="https://cdn1.ivivu.com/app-icon/tai-google-play.png"
									alt="">
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
	</script>
</body>
</html>
