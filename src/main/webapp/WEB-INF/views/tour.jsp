<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<meta charset="UTF-8" />
<meta name="keywords" content="content" />
<meta name="description" content="description" />
<meta name="author" content="author" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<c:url value="/resources/css/swiper-bundle.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>


	<div class="container-fluid">
		<!-- <div class="dropdown-menu dropdown-usermenu pull-right"
			aria-labelledby="navbarDropdown">
			<a class="dropdown-item" href="login.html"><i
				class="fa fa-sign-out pull-right"></i> Log Out</a>
		</div> -->


		<!-- navbar -->
		<div class="row">
			<div class="col-12 col-lg-12 col-xl-12 p-0">
				<nav class="navbar">
					<a class="navbar-brand d-flex flex-column align-items-center"
						href="/"> <span class="d-block text-white"> <span>T</span>
							<span style="margin-left: -17px">A</span>
					</span> <span class="d-block text-white" style="font-size: 10px">Travel
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

		<form class="search-fixed" action="searchTour" method="get">
			<div class="bg-blue p-2">
				<div class="form-group">
					<label class="text-white">Search :</label> <input type="text"
						class="form-control" name="keyword" placeholder="Bạn muốn đi đâu" />
				</div>
				<div class="form-row">
					<div class="col-6">
						<input type="date" class="form-control" />
					</div>
					<div class="col-6">
						<input type="date" class="form-control" />
					</div>
				</div>
				<input type="submit" class="btn btn-warning text-white my-3 col-4"
					value="Search">
			</div>
			<div class="button-toggle">
				<p class="text-white">Find Your Tour</p>
			</div>
		</form>

		<!-- banner -->
		<div class="row">
			<div class="col-12 col-lg-12 col-xl-12 p-0">
				<div class="hotel-swiper">
					<div class="swiper-container mySwiper2">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img
									src="https://www.vietnamairlinesgiare.vn/wp-content/uploads/2019/09/ve-may-bay-di-chu-lai-gia-re-14112019-4.jpg" />
							</div>
							<div class="swiper-slide">
								<img
									src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/vinh-ninh-van-370x395.jpg" />
							</div>
							<div class="swiper-slide">
								<img
									src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg" />
							</div>
						</div>
						<!-- <div class="swiper-button-next"></div>
              <div class="swiper-button-prev"></div> -->
					</div>
					<div thumbsSlider="" class="swiper-container mySwiper">
						<div class="row swiper-wrapper d-flex justify-content-center">
							<div class="swiper-slide col-2 col-md-1 p-0">
								<img
									src="https://www.vietnamairlinesgiare.vn/wp-content/uploads/2019/09/ve-may-bay-di-chu-lai-gia-re-14112019-4.jpg" />
							</div>
							<div class="swiper-slide col-2 col-md-1 p-0">
								<img
									src="https://cdn1.ivivu.com/iVivu/2021/07/08/10/vinh-ninh-van-370x395.jpg" />
							</div>
							<div class="swiper-slide col-2 col-md-1 p-0">
								<img
									src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end banner -->
		<!-- content -->
		<div class="row">
			<div class="col-12 col-md-3 col-lg-3 col-xl-3 p-0">
				<!-- content sort -->
				<form class="sort" action="" method="POST">
					<div class="sort-icon">
						<i class="fas fa-search"></i>
					</div>
					<div class="sort-support" style="padding-left: 90px">
						<p>Bạn cần trợ giúp? Hãy gọi ngay</p>
						<p>0979797979</p>
					</div>
					<div class="sort-search">
						<div class="search-box">
							<i class="fas fa-search"></i> <input type="text" name="" id="" />
						</div>
						<button type="submit" class="btn btn-secondary">Tìm</button>
					</div>
					<div class="sort-rating">
						<h5>Hạng sao</h5>
						<div class="rating-checkbox">
							<label for="star-one"> <i class="fas fa-star"></i>
							</label> <input type="checkbox" name="star-one" id="star-one" />
						</div>
						<div class="rating-checkbox">
							<label for="star-two"> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i>
							</label> <input type="checkbox" name="star-two" id="star-two" />
						</div>
						<div class="rating-checkbox">
							<label for="star-three"> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i>
							</label> <input type="checkbox" name="star-three" id="star-three" />
						</div>
						<div class="rating-checkbox">
							<label for="star-four"> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i>
							</label> <input type="checkbox" name="star-four" id="star-four" />
						</div>
						<div class="rating-checkbox">
							<label for="star-five"> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i>
							</label> <input type="checkbox" name="star-five" id="star-five" />
						</div>
					</div>
					<div class="sort-area">
						<h5>Khu vực</h5>
						<div class="area-checkbox">
							<label for="area-bacmyan"> Bãi biển Bắc Mỹ An </label> <input
								type="checkbox" name="area-bacmyan" id="area-bacmyan" />
						</div>
						<div class="area-checkbox">
							<label for="area-mykhe"> Bãi biển Mỹ Khê </label> <input
								type="checkbox" name="area-mykhe" id="area-mykhe" />
						</div>
						<div class="area-checkbox">
							<label for="area-nonnuoc"> Bãi biển Non Nước </label> <input
								type="checkbox" name="area-nonnuoc" id="area-nonnuoc" />
						</div>
						<div class="area-checkbox">
							<label for="area-phamvandong"> Bãi biển Phạm Văn Đồng </label> <input
								type="checkbox" name="area-phamvandong" id="area-phamvandong" />
						</div>
						<div class="area-checkbox">
							<label for="area-t20"> Bãi tắm T20 </label> <input
								type="checkbox" name="area-t20" id="area-t20" />
						</div>
						<div class="area-checkbox">
							<label for="area-sontra"> Bán đảo Sơn Trà </label> <input
								type="checkbox" name="area-sontra" id="area-sontra" />
						</div>
					</div>
				</form>
				<!-- content sort -->
			</div>
			<div class="col-12 col-md-9 col-lg-9 col-xl-9 p-0">
				<!-- content local -->
				<div class="content">
					<div class="content-seen my-5 px-3">
						<h5>Tours du lịch bạn đã xem gần đây</h5>

						<div class="d-flex flex-wrap">
							<div class="box-seen m-3">
								<div class="box-img">
									<img
										src="https://toplist.vn/images/800px/chua-tran-quoc-205660.jpg"
										alt="" />
								</div>
								<div class="p-2">
									<a href="#" class="m-0 font-weight-bold text-primary"
										style="text-decoration: none"> Tour du lịch lý sơn </a>
									<p style="font-size: 12px">
										<span class="badge badge-success">10.0</span> <span
											class="text-success"> Tuyệt vời </span> | <span>2 Đánh
											giá </span>
									</p>
									<p class="text-primary position-absolute"
										style="bottom: -10px; right: 5px">5.000.000 VND</p>
								</div>
							</div>

							<div class="box-seen m-3">
								<div class="box-img">
									<img
										src="https://toplist.vn/images/800px/chua-tran-quoc-205660.jpg"
										alt="" />
								</div>
								<div class="p-2">
									<a href="#" class="m-0 font-weight-bold text-primary"
										style="text-decoration: none"> Tour du lịch lý sơn </a>
									<p style="font-size: 12px">
										<span class="badge badge-success">10.0</span> <span
											class="text-success"> Tuyệt vời </span> | <span>2 Đánh
											giá </span>
									</p>
									<p class="text-primary position-absolute"
										style="bottom: -10px; right: 5px">5.000.000 VND</p>
								</div>
							</div>
						</div>
					</div>
					<div class="content-type my-5">
						<h5>Tour</h5>
						<div class="type-travel">

							<c:forEach items="${listTour}" var="item">
								<div class="card-travel m-4">
									<div class="ribbon">
										<div class="content text-center text-white">
											<i class="fas fa-luggage-cart text-white"></i>
										</div>
									</div>
									<img
										src="${pageContext.request.contextPath}/image/${item.urlImage1}" />
									<div class="info-travel p-4">
										<p class="text-title text-white m-0 d-block"
											style="font-size: 2em; text-decoration: none">${item.nameTour }</p>
										<span> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
										</span>
										<p class="text-white m-0"></p>

										<p class="text-white m-0">Id Tour : ${item.idtour }</p>
										<p class="text-white m-0">${item.schedule }</p>
										<p class="text-white m-0">Địa điểm : ${item.address }</p>
										<p class="text-white m-0">Phương tiện : ${item.vehicle }</p>
										<p class="text-white m-0"></p>
										<!-- 		<p class="text-white m-0">
											Transport: <a href="#"
												class="fas fa-plane-departure text-primary"
												style="text-decoration: none"></a> Plane
										</p> -->
										<p class="text-white m-0">
											Share on: <a href="#"
												class="fab fa-facebook text-primary mx-1"
												style="text-decoration: none"></a> <a href="#"
												class="fab fa-instagram text-danger mx-1"
												style="text-decoration: none"></a> <a href="#"
												class="fab fa-linkedin-in text-info mx-1"
												style="text-decoration: none"></a> <a href="#"
												class="fab fa-twitter text-primary mx-1"
												style="text-decoration: none"></a>
										</p>
										<a href="#" class="btn btn-primary btn-sm mt-2"
											style="font-size: 12px"> Details </a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="content-type my-5">
						<h5>Khách Sạn</h5>
						<div class="type-travel">

							<c:forEach items="${listHotel }" var="item">
								<div class="card-travel m-4">
									<div class="ribbon">
										<div class="content text-center text-white">
											<i class="fas fa-luggage-cart text-white"></i>
										</div>
									</div>
									<img
										src="${pageContext.request.contextPath}/image/${item.urlImage}" />
									<div class="info-travel p-4">
										<p class="text-title text-white m-0 d-block"
											style="font-size: 2em; text-decoration: none">${item.ten }</p>
										<span> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
										</span>
										<%-- 	<p class="text-white m-0">Tên khách sạn : ${item.ten }</p> --%>
										<p class="text-white m-0">${item.hotelTypeEntity.name }</p>
										<p class="text-white m-0">Thành phố :
											${item.addressEntity.nameAddress }</p>
										<p class="text-white m-0">Đánh giá : ${item.danhGia }</p>
										<p class="text-white m-0">${item.traiNghiem }</p>
										<p class="text-white m-0">Gần Trung Tâm</p>
										<!-- 		<p class="text-white m-0">
											Transport: <a href="#"
												class="fas fa-plane-departure text-primary"
												style="text-decoration: none"></a> Plane
										</p> -->
										<p class="text-white m-0">
											Share on: <a href="#"
												class="fab fa-facebook text-primary mx-1"
												style="text-decoration: none"></a> <a href="#"
												class="fab fa-instagram text-danger mx-1"
												style="text-decoration: none"></a> <a href="#"
												class="fab fa-linkedin-in text-info mx-1"
												style="text-decoration: none"></a> <a href="#"
												class="fab fa-twitter text-primary mx-1"
												style="text-decoration: none"></a>
										</p>
										<a href="./Assets/page/detail_hotel.html"
											class="btn btn-primary btn-sm mt-2" style="font-size: 12px">
											Details </a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>

				</div>
				<!-- content local -->
			</div>
		</div>
		<!-- end content -->
		<!-- Messenger Plugin chat Code -->
		<div id="fb-root"></div>

		<!-- Your Plugin chat code -->
		<div id="fb-customer-chat" class="fb-customerchat"></div>

		<div class="container" style="margin-bottom: 100px">
			<div class="row">
				<div class="col-12 col-md-12">
					<h2 class="text-center text-capitalize mt-5 mb-3">our members</h2>

					<div class="d-flex flex-wrap justify-content-center">
						<div class="row m-2">
							<div class="col-md-12 col-6">
								<div class="card hovercard">
									<div class="cardheader"></div>
									<div class="avatar">
										<img alt=""
											src="https://scontent-hkg4-2.xx.fbcdn.net/v/t1.6435-9/139784413_1399326560411115_7720290590963628337_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=174925&_nc_ohc=8_gCmLaMcNQAX9cRzdp&_nc_ht=scontent-hkg4-2.xx&oh=0fc4f38d2f52ddb8936764b03f1047c5&oe=6120E750" />
									</div>
									<div class="info">
										<div class="title">
											<a target="_blank" href="#" style="text-decoration: none">Khắc
												Tài</a>
										</div>
										<div class="desc">Developer</div>
									</div>
									<div class="bottom">
										<a class="btn btn-primary btn-facebook btn-sm btn-contact"
											href="https://www.facebook.com/khactai2101"> <i
											class="fab fa-facebook-f mt-1"></i>
										</a> <a class="btn btn-danger btn-sm btn-contact" rel="publisher"
											href="#"> <i class="fab fa-google-plus-g mt-1"></i>
										</a> <a class="btn btn-primary btn-sm btn-contact" rel="publisher"
											href="#"> <i class="fab fa-twitter mt-1"></i>
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="row m-2">
							<div class="col-md-12 col-6">
								<div class="card hovercard">
									<div class="cardheader"></div>
									<div class="avatar">
										<img alt=""
											src="https://pixwares.com/wp-content/uploads/2021/01/anh-gai-xinh.jpg" />
									</div>
									<div class="info">
										<div class="title">
											<a target="_blank" href="#" style="text-decoration: none">Your
												Name</a>
										</div>
										<div class="desc">Developer</div>
									</div>
									<div class="bottom">
										<a class="btn btn-primary btn-twitter btn-sm btn-contact"
											href="#"> <i class="fab fa-facebook-f mt-1"></i>
										</a> <a class="btn btn-danger btn-sm btn-contact" rel="publisher"
											href="#"> <i class="fab fa-google-plus-g mt-1"></i>
										</a> <a class="btn btn-primary btn-sm btn-contact" rel="publisher"
											href="#"> <i class="fab fa-twitter mt-1"></i>
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="row m-2">
							<div class="col-md-12 col-6">
								<div class="card hovercard">
									<div class="cardheader"></div>
									<div class="avatar">
										<img alt=""
											src="https://scontent-hkg4-2.xx.fbcdn.net/v/t1.6435-9/217950590_578503789986644_7011961192344155562_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=YLnpnj6ZiWcAX_FNgI8&_nc_oc=AQnQ6ACBLv9A1Z194eja8YagBvu_O3TdpSbj6skhME0gh7kybZ7LNXYfPtsbImr6VjUbf71Ruwe7gPxYHB8gl1bo&_nc_ht=scontent-hkg4-2.xx&oh=cffe16a9cc3f2a2dbbd2ebf974bfb8cb&oe=6122FEB0" />
									</div>
									<div class="info">
										<div class="title">
											<a target="_blank" href="#" style="text-decoration: none">Chương
												Blu</a>
										</div>
										<div class="desc">Developer</div>
									</div>
									<div class="bottom">
										<a class="btn btn-primary btn-twitter btn-sm btn-contact"
											href="#"> <i class="fab fa-facebook-f mt-1"></i>
										</a> <a class="btn btn-danger btn-sm btn-contact" rel="publisher"
											href="#"> <i class="fab fa-google-plus-g mt-1"></i>
										</a> <a class="btn btn-primary btn-sm btn-contact" rel="publisher"
											href="#"> <i class="fab fa-twitter mt-1"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			var chatbox = document.getElementById("fb-customer-chat");
			chatbox.setAttribute("page_id", "100309992344402");
			chatbox.setAttribute("attribution", "biz_inbox");

			window.fbAsyncInit = function() {
				FB.init({
					xfbml : true,
					version : "v11.0",
				});
			};

			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id))
					return;
				js = d.createElement(s);
				js.id = id;
				js.src = "https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js";
				fjs.parentNode.insertBefore(js, fjs);
			})(document, "script", "facebook-jssdk");
		</script>
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
								<li class="text-secondary my-1" style="font-size: 13px"><i
									class="fas fa-map-marker-alt text-secondary"></i> HCM: Lầu 2,
									Tòa nhà Anh Đăng, 215 Nam Kỳ Khởi Nghĩa, Phường 7, Quận 3, Tp.
									Hồ Chí Minh</li>
								<li class="text-secondary my-1" style="font-size: 13px"><i
									class="fas fa-map-marker-alt text-secondary"></i> HN: Tầng 1,
									Tòa nhà Ladeco, 266 Đội Cấn, Phường Liễu Giai, Quận Ba Đình, Hà
									Nội</li>
								<li class="text-secondary my-1" style="font-size: 13px"><i
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
									style="font-size: 20px"><i class="fas fa-phone-alt"></i>
										1900 2045</a></li>
								<li><a href="#" class="text-secondary">Tư vấn với
										Olivia - chatbot của chúng tôi</a></li>
								<li>
									<p class="font-weight-bold">Đặt phòng dễ dàng hơn qua ứng
										dụng của chúng tôi</p> <img
									src="https://cdn1.ivivu.com/app-icon/iVIVUcode.png" alt=""
									width="60" /> <img class="d-inline-block"
									src="https://cdn1.ivivu.com/app-icon/tai-appstore.png" alt="" />
									<img class="d-inline-block"
									src="https://cdn1.ivivu.com/app-icon/tai-google-play.png"
									alt="" />
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