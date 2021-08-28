<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  Bootstrap -->
<link
	href="<c:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="<c:url value="/resources/vendors/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="<c:url value="/resources/vendors/nprogress/nprogress.css" />"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="<c:url value="/resources/vendors/iCheck/skins/flat/green.css" />"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="<c:url value="/resources/css1/custom.min.css" />"
	rel="stylesheet">

<style type="text/css">
.error {
	color: red;
}
</style>
<title>Manager Travel</title>
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="../index.html" class="site_title"><i
							class="fa fa-plane"></i> <span>Manager Travel</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img
								src="https://scontent.fdad3-1.fna.fbcdn.net/v/t1.6435-9/162166716_477456876720198_322481996919890125_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=0debeb&_nc_ohc=jmquZCKeK68AX-iLtBQ&_nc_ht=scontent.fdad3-1.fna&oh=822c294591f5513e026d9445379be7d7&oe=613DD582"
								alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>Staff</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> Home <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="../index.html">Dashboard</a></li>

									</ul></li>


								<li><a><i class="fa fa-table"></i> Quản lý <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a
											href="${pageContext.request.contextPath}/staff/tourAdmin">
												Quản lý Tour </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/tourPriceAdmin">Quản
												lí giá tour </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/hotelAdmin">
												Quản lý khách sạn </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/roomAdmin">Quản
												lí phòng khách sạn </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/staffService">Quản
												lí Service </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/staffPromotion">Quản
												lí Khuyến mãi </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/adressAdmin">Quản
												lí địa điểm </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/cityAdmin">Quản
												lí thành phố </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/bookingAdmin">Quản
												lí BookingHotel </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addCity">Thêm
												thành phố </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addAddress">Thêm
												Địa Điểm </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addTour">Thêm
												tour mới </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addTourPrice">Thêm
												giá tour </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addHotel">Thêm
												khách sạn </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addRoom">Thêm
												phòng khách sạn </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addService">Thêm
												Service và Khuyến mãi </a></li>
										<li><a
											href="${pageContext.request.contextPath}/staff/addPromotion">Thêm
												Khuyến mãi </a></li>
									</ul></li>
								<li><a><i class="fa fa-bar-chart-o"></i> Báo cáo <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="chartjs.html">Biểu đồ</a></li>
									</ul></li>

							</ul>
						</div>


					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="login.html"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<nav class="nav navbar-nav">
						<ul class=" navbar-right">
							<li class="nav-item dropdown open" style="padding-left: 15px;">
								<a href="javascript:;" class="user-profile dropdown-toggle"
								aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
								aria-expanded="false"> <img
									src="https://scontent.fdad3-1.fna.fbcdn.net/v/t1.6435-9/162166716_477456876720198_322481996919890125_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=0debeb&_nc_ohc=jmquZCKeK68AX-iLtBQ&_nc_ht=scontent.fdad3-1.fna&oh=822c294591f5513e026d9445379be7d7&oe=613DD582"
									alt="">Staff
							</a>
								<div class="dropdown-menu dropdown-usermenu pull-right"
									aria-labelledby="navbarDropdown">
									<form:form action="${pageContext.request.contextPath}/logout"
										method="post">
										<%-- 	<a class="dropdown-item" href="${pageContext.request.contextPath }/home"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a> --%>
										<input class="dropdown-item" type="submit" value="Logout" />
									</form:form>
								</div>
							</li>

							<li role="presentation" class="nav-item dropdown open">
								<!-- <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">6</span>
                    </a> -->
								<ul class="dropdown-menu list-unstyled msg_list" role="menu"
									aria-labelledby="navbarDropdown1">
									<li class="nav-item"><a class="dropdown-item"> <span
											class="image"><img src="images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li class="nav-item"><a class="dropdown-item"> <span
											class="image"><img src="images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li class="nav-item"><a class="dropdown-item"> <span
											class="image"><img src="images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li class="nav-item"><a class="dropdown-item"> <span
											class="image"><img src="images/img.jpg"
												alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li class="nav-item">
										<div class="text-center">
											<a class="dropdown-item"> <strong>See All Alerts</strong>
												<i class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div style="padding-bottom: 20px" class="title_left">
							<h3 class="text-capitalize">Sửa Booking</h3>


						</div>
					</div>


					<div class="clearfix"></div>

					<form:form method="post" action="doUpdateBooking"
						enctype="multipart/form-data" modelAttribute="bookingDetailEntity">

						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Ten
								ID</label>
							<div class="col-4 mb-4">

								<form:input path="id" type="text" cssClass="form-control"
									readonly="true" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Tên
								Phòng </label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.name" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.name" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Tên
								Khách Sạn</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.hotelEntity.ten" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">description</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.description" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>

						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">convenient</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.convenient" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">bedType</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.bedType" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">area</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.area" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">area</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.area" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">description1</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.description1" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">description2</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.description2" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.hotelEntity.ten" cssClass="error" /> --%>
							</div>
						</div>

						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Giá
								Phòng</label>
							<div class="col-4 mb-4">

								<form:input path="roomEntity.roomPrice" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="roomEntity.roomPrice" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">BookingDate</label>
							<div class="col-4 mb-4">
								<form:input path="bookingRoomEntity.bookingDate" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.bookingDate"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Họ
								tên</label>
							<div class="col-4 mb-4">
								<form:input path="bookingRoomEntity.customersEntity.fullName"
									type="text" cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.customersEntity.phone"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Email</label>
							<div class="col-4 mb-4">
								<form:input path="bookingRoomEntity.customersEntity.mail"
									type="text" cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.customersEntity.phone"
									cssClass="error" /> --%>
							</div>
						</div>

						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Điện
								Thoại</label>
							<div class="col-4 mb-4">
								<form:input path="bookingRoomEntity.customersEntity.phone"
									type="text" cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.customersEntity.phone"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">
								Gender</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.customersEntity.gender"
									type="text" cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.customersEntity.gender"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">DOB</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.customersEntity.dob"
									type="text" cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.customersEntity.dob"
									cssClass="error" /> --%>
							</div>
						</div>

						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Địa
								chỉ</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.customersEntity.address"
									type="text" cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.customersEntity.address"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Số
								Người Lớn</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.numOfAdults" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.numOfAdults"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Số
								Trẻ Em</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.numOfChild" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.numOfChild"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Số
								Lượng Phòng</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.quantity" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.quantity" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Ngày
								Bắt Đầu</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.startDate" type="text"
									cssClass="form-control" readonly="true" />
								<form:errors path="bookingRoomEntity.startDate" cssClass="error" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Ngày
								Kết Thúc</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.endDate" type="text"
									cssClass="form-control" readonly="true" />
								<form:errors path="bookingRoomEntity.endDate" cssClass="error" />
							</div>
						</div>
						<%-- 	<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Tên
								Dịch Vụ</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.serviceEntity.nameService"
									type="text" cssClass="form-control" readonly="true"/>
								<form:errors path="bookingRoomEntity.serviceEntity.nameService"
									cssClass="error" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Giá
								Dịch Vụ</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.serviceEntity.price"
									type="text" cssClass="form-control" readonly="true" />
								<form:errors path="bookingRoomEntity.serviceEntity.price"
									cssClass="error" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Khuyến
								Mãi Dịch Vụ</label>
							<div class="col-4 mb-4">

								<form:input
									path="bookingRoomEntity.serviceEntity.promotionEntity.percentage"
									type="text" cssClass="form-control" readonly="true"/>
								<form:errors
									path="bookingRoomEntity.serviceEntity.promotionEntity.percentage"
									cssClass="error" />
							</div>
						</div> --%>
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
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Tổng
								Tiền</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.totalPrice" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.totalPrice"
									cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Status</label>
							<div class="col-4 mb-4">

								<form:input
									path="bookingRoomEntity.bookingStatusEntity.bsStatus"
									type="text" cssClass="form-control" readonly="true" />
								<form:errors
									path="bookingRoomEntity.bookingStatusEntity.bsStatus"
									cssClass="error" />
							</div>
						</div>
						<form:input path="bookingRoomEntity.bookingStatusEntity.id"
							type="hidden" cssClass="form-control" readonly="true" />
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Note</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.note" type="text"
									cssClass="form-control" readonly="true" />
								<%-- <form:errors path="bookingRoomEntity.note" cssClass="error" /> --%>
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Cancel</label>
							<div class="col-4 mb-4">

								<form:input path="bookingRoomEntity.cancel" type="text"
									cssClass="form-control" />
								<form:errors path="bookingRoomEntity.cancel" cssClass="error" />
							</div>
						</div>


						<div class="form-group row">
							<div class="col-sm-offset-2 col-sm-12">
								<input style="margin-left: 500px; width: 150px;" type="submit"
									value="submit" class="btn btn-primary" />
							</div>
						</div>
					</form:form>
					<a style="font-size: 20px" href="bookingAdmin">Return Quản Lý
						Booking</a>
				</div>
			</div>
		</div>
		<!-- /page content -->



		<!-- footer content -->
		<!-- <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer> -->
		<!-- /footer content -->
	</div>



	<!-- jQuery -->
	<script
		src="<c:url value="/resources/vendors/jquery/dist/jquery.min.js" />"></script>
	<!-- Bootstrap -->
	<script
		src="<c:url value="/resources/vendors/bootstrap/dist/js/bootstrap.bundle.min.js" />"></script>
	<!-- FastClick -->
	<script
		src="<c:url value="/resources/vendors/fastclick/lib/fastclick.js" />"></script>
	<!-- NProgress -->
	<script
		src="<c:url value="/resources/vendors/nprogress/nprogress.js" />"></script>
	<!-- iCheck -->
	<script src="<c:url value="/resources/vendors/iCheck/icheck.min.js" />"></script>

	<!-- Custom Theme Scripts -->

	<script src="<c:url value="/resources/js1/custom.min.js" />"></script>


</body>
</html>