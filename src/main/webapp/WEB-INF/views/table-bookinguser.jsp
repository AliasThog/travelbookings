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

img {
	width: 100px;
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
								src="https://scontent.fdad3-3.fna.fbcdn.net/v/t1.6435-9/195742432_525006935298525_6400879309236686546_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=GiWsH-h5vpgAX9LREJf&tn=93qchO_iMVXbR0he&_nc_ht=scontent.fdad3-3.fna&oh=3a1625f26fe92ea4a0204f03b2411fce&oe=613F951F"
								alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>USER</h2>
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
										<li><a href="#">Dashboard</a></li>
										<li><a href="${pageContext.request.contextPath}/home">Return Home</a></li>
									</ul></li>


								<li><a><i class="fa fa-table"></i> Quản lý <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">

										<li><a
											href="${pageContext.request.contextPath}/user/history">
												Quản lý lịch sử </a></li>

									</ul></li>
								<!-- <li><a><i class="fa fa-bar-chart-o"></i> Báo cáo <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="chartjs.html">Biểu đồ</a></li>
									</ul></li> -->

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
							href="#"> <span class="glyphicon glyphicon-off"
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
									src="https://scontent.fdad3-3.fna.fbcdn.net/v/t1.6435-9/195742432_525006935298525_6400879309236686546_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=GiWsH-h5vpgAX9LREJf&tn=93qchO_iMVXbR0he&_nc_ht=scontent.fdad3-3.fna&oh=3a1625f26fe92ea4a0204f03b2411fce&oe=613F951F"
									alt="">USER
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
						<div class="title_left">
							<h3 class="text-capitalize">Quản Lý Lịch Sử Booking</h3>
						</div>

						<div class="title_right">
							<div class="col-md-5 col-sm-5   form-group pull-right top_search"
								style="margin-right: 200px">
								<div class="form-group row">
									<%-- 		<form action="doSearch6" method="get">
										<input name="keyword" type="text" style="width: 250px"
											placeholder="Search by full name or phone or address"> <input
											type="submit" value="Search">
									</form> --%>
								</div>



							</div>
						</div>
					</div>


					<div class="clearfix"></div>
					<%-- 					<form action="doSearch" method="get">
						<input name="keyword" placeholder="Search by name Hotel" /> <input
							type="submit" value="Search">

					</form> --%>
					<div class="col-md-12 col-sm-12  ">
						<div class="x_panel">
							<div class="x_title">
								<ul class="nav navbar-right panel_toolbox">
									<nav aria-label="Page navigation example"></nav>


									<%-- <a href="${pageContext.request.contextPath}/staff/addHotel" class="btn btn-primary btn-sm"
										data-whatever="@mdo"><i class="fa fa-plus"></i> Thêm Khách
										Sạn </a>
									<a href="${pageContext.request.contextPath}/staff/addRoom" class="btn btn-primary btn-sm"
										data-whatever="@mdo"><i class="fa fa-plus"></i> Thêm Phòng
										Khách Sạn </a> --%>

								</ul>
								<div class="clearfix"></div>
							</div>

							<div class="x_content">


								<div class="table-responsive">
									<table class="table table-bordered jambo_table bulk_action">
										<thead>
											<tr class="headings">
												<!-- <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th> -->
												<!-- <th class="column-title">ID </th> -->
												<!--  <th class="column-title">Tên Phòng</th>
												<th class="column-title">Tên Khách Sạn</th>
												<th class="column-title">Giá Phòng</th>  -->
												<th class="column-title">BookingDate</th>
												<th class="column-title">Email</th>
												<th class="column-title">Họ Tên</th>

												<th class="column-title">Điện Thoại</th>
												<th class="column-title">DOB</th>
												<th class="column-title">Địa chỉ</th>
												<th class="column-title">Số Người Lớn</th>
												<th class="column-title">Số Trẻ Em</th>
												<th class="column-title">Số Lượng Phòng</th>
												<th class="column-title">Ngày Bắt Đầu</th>
												<th class="column-title">Ngày Kết Thúc</th>
												<th class="column-title">Tên Dịch Vụ</th>
												<th class="column-title">Giá Dịch Vụ</th>
												<th class="column-title">Khuyến Mãi Dịch Vụ (%)</th>
												<th class="column-title">Tổng Tiền</th>
												<th class="column-title">Status</th>
												<!-- <th class="bulk-actions" colspan="9">
                              <a class="antoo" style="color:#fff; font-weight:500;">( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th> -->
											</tr>
										</thead>

										<tbody>
											<c:if test="${message != null }">
												<span class="error"><c:out value="${message }"></c:out></span>
											</c:if>
											<c:choose>
												<c:when
													test="${bookingRoomEntityList !=null && bookingRoomEntityList.size() gt 0}">
													<c:forEach items="${bookingRoomEntityList }" var="item">
														<tr class="even pointer">

															<%--  <td>${item.id }</td>
															 <td>${item.bookingDetailEntityList.roomEntity.name }</td>
															<td>${item.bookingDetailEntityList.roomEntity.hotelEntity.ten }</td>
															<td>${item.bookingDetailEntityList.roomEntity.roomPrice }</td> --%>
															<td>${item.bookingDate }</td>
															<td>${item.customersEntity.mail }</td>
															<td>${item.customersEntity.fullName }</td>


															<td>${item.customersEntity.phone }</td>
															<td>${item.customersEntity.dob }</td>
															<td>${item.customersEntity.address }</td>
															<td>${item.numOfAdults }</td>
															<td>${item.numOfChild }</td>
															<td>${item.quantity }</td>
															<td>${item.startDate }</td>
															<td>${item.endDate }</td>
															<td>${item.serviceEntity.nameService }</td>
															<td>${item.serviceEntity.price }</td>
															<td>${item.serviceEntity.promotionEntity.percentage}</td>
															<td>${item.totalPrice }</td>
															<td>${item.bookingStatusEntity.bsStatus }</td>

															<%-- <td class="last"><a
																href="${pageContext.request.contextPath}/staff/updateHotel?id=${item.id }"
																class="btn btn-primary btn-sm"> <i
																	class="fa fa-refresh"></i>
															</a> <a href="${pageContext.request.contextPath}/staff/deleteHotel?id=${item.id }"
																class="btn btn-primary btn-sm"
																onclick="showMess(${item.id})"> <i
																	class="fa fa-close"></i>

															</a></td> --%>
														</tr>
													</c:forEach>
													<%-- 	<tr>
												<td colspan="16">
														<c:import url="common/paging.jsp"/>														
													</td> 
													</tr> --%>
												</c:when>
												<c:otherwise>
													<tr>
														<td style="color: red; text-align: center" colspan="16">No
															data found</td>
													</tr>
												</c:otherwise>

											</c:choose>
										</tbody>

									</table>
								</div>

							</div>
						</div>
					</div>
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

	<script type="text/javascript">
		function showMess(id) {
			var option = confirm('Are you sure to delete');
			if (option == true) {
				windown.location.href = 'delete?id = ' + id;
			}
		}
	</script>
</body>
</html>