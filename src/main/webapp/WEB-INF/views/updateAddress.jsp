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
	font-size: 16px;
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
							<img src="images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>Staff</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->


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
									<li><a href="${pageContext.request.contextPath}/staff/tourAdmin"> Quản lý Tour </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/tourPriceAdmin">Quản lí giá tour </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/hotelAdmin"> Quản lý khách sạn </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/roomAdmin">Quản lí phòng khách sạn </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/staffService">Quản lí Service </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/staffPromotion">Quản lí Khuyến mãi </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/adressAdmin">Quản lí địa điểm </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/cityAdmin">Quản lí thành phố </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/bookingAdmin">Quản lí BookingHotel </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addCity">Thêm thành phố </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addAddress">Thêm Địa Điểm </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addTour">Thêm tour mới </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addTourPrice">Thêm giá tour </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addHotel">Thêm khách sạn </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addRoom">Thêm phòng khách sạn </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addService">Thêm Service và Khuyến mãi </a></li>
										<li><a href="${pageContext.request.contextPath}/staff/addPromotion">Thêm Khuyến mãi </a></li>

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
								aria-expanded="false"> <img src="images/img.jpg" alt="">Staff
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
							<h3 class="text-capitalize">Thêm Địa Điểm</h3>


						</div>
					</div>


					<div class="clearfix"></div>

					<form:form method="post" action="doUpdateAddress"
						enctype="multipart/form-data" modelAttribute="address1">
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Ten
								ID</label>
							<div class="col-4 mb-4">

								<form:input path="id" type="text" cssClass="form-control"
									readonly="true" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Ten
								Địa Điểm</label>
							<div class="col-4 mb-4">

								<form:input path="nameAddress" type="text"
									cssClass="form-control" />
								<form:errors path="nameAddress" cssClass="error" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Description
							</label>
							<div class="col-4 mb-4">

								<form:input path="description" type="text"
									cssClass="form-control" />
								<form:errors path="description" cssClass="error" />
							</div>
						</div>
						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Hình
								ảnh :</label>
							<div class="col-4 mb-4">

								<input type="file" name="image" accept="image/*" />
							</div>
						</div>

						<div class="form-group row">
							<label style="font-size: 16px" class="col-sm-1 col-form-label">Tên
								thành phố</label>
							<div class="col-4 mb-4">

								<form:select path="cityEntity.id" cssClass="form-control">
									<form:option value="0">---Select thành phố---</form:option>
									<c:forEach items="${cityList }" var="item">
										<form:option value="${item.id }">${item.nameCity }</form:option>
									</c:forEach>
								</form:select>
							</div>
						</div>




						<div class="form-group row">
							<div class="col-sm-offset-2 col-sm-12">
								<input style="margin-left: 500px; width: 150px;" type="submit"
									value="submit" class="btn btn-primary" />
							</div>
						</div>
					</form:form>
					<a style="font-size: 20px" href="adressAdmin">Return Quản lý
						Địa Điểm Khách Sạn</a>
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