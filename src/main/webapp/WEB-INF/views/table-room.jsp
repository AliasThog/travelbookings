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
							<img src="https://scontent.fdad3-1.fna.fbcdn.net/v/t1.6435-9/174126692_497956414670244_9103577407738642445_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=J6W0fl9E6X4AX8iUF-C&_nc_ht=scontent.fdad3-1.fna&oh=3974fcad5342de8585baa764e2c85fb0&oe=61406894" alt="..."
								class="img-circle profile_img">
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
								aria-expanded="false"> <img src="https://scontent.fdad3-1.fna.fbcdn.net/v/t1.6435-9/174126692_497956414670244_9103577407738642445_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=J6W0fl9E6X4AX8iUF-C&_nc_ht=scontent.fdad3-1.fna&oh=3974fcad5342de8585baa764e2c85fb0&oe=61406894" alt="">Staff
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
							<h3 class="text-capitalize">Quản Lý Phòng Khách Sạn</h3>
						</div>

						<div class="title_right">
							<div class="col-md-5 col-sm-5   form-group pull-right top_search"
								style="margin-right: 10px">
								<div class="form-group row">
									<form action="doSearch1" method="get">
										<input name="keyword" type="text" style="width: 231px"
											placeholder="Search by Name Room or Type Room or Name Hotel or Status Room">
										<input type="submit" value="Search">
									</form>
								</div>



							</div>
						</div>
					</div>


					<div class="clearfix"></div>

					<div class="col-md-12 col-sm-12  ">
						<div class="x_panel">
							<div class="x_title">
								<ul class="nav navbar-right panel_toolbox">
							


									<a href="${pageContext.request.contextPath}/staff/addHotel" class="btn btn-primary btn-sm"
										data-whatever="@mdo"><i class="fa fa-plus"></i> Thêm Khách
										Sạn </a>
									<a href="${pageContext.request.contextPath}/staff/addRoom" class="btn btn-primary btn-sm"
										data-whatever="@mdo"><i class="fa fa-plus"></i> Thêm Phòng
										Khách Sạn </a>

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
												<th class="column-title">ID</th>
												<th class="column-title">Tên phòng</th>
												<th class="column-title">Tiện nghi</th>
												<th class="column-title">Diện tích</th>
												<th class="column-title">Mô tả</th>
												<th class="column-title">Loại Giường</th>
												<th class="column-title">Hình ảnh</th>
												<th class="column-title">Loại Phòng</th>
												<th class="column-title">Giá Phòng</th>
												<th class="column-title">Trạng thái phòng</th>
												<th class="column-title">Khách Sạn</th>
												<th class="column-title">Action</th>
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
												<c:when test="${listRoom !=null && listRoom.size() gt 0}">
													<c:forEach items="${listRoom }" var="item">
														<tr class="even pointer">
															<td>${item.id }</td>
															<td>${item.name }</td>
															<td>${item.convenient }</td>
															<td>${item.area }</td>
															<td>${item.description }</td>
															<td>${item.bedType }</td>
															<td><img
																src="${pageContext.request.contextPath}/image/${item.urlImageRoom}" />
															</td>
															<td>${item.roomTypeEntity.rtRoomtype }</td>
															<td>${item.roomPrice }</td>
															<td>${item.roomStatusEntity.rsRoomStatus }</td>
															<td>${item.hotelEntity.ten }</td>
															<td class="last"><a href="${pageContext.request.contextPath}/staff/updateRoom?id=${item.id }"
																class="btn btn-primary btn-sm"> <i
																	class="fa fa-refresh"></i>
															</a> <a href="${pageContext.request.contextPath}/staff/deleteRoom?id=${item.id }"
																class="btn btn-primary btn-sm"
																onclick="showMess(${item.id})"> <i
																	class="fa fa-close"></i>

															</a></td>
														</tr>
													</c:forEach>
													<tr>
														<td colspan="12"><c:import url="common/paging.jsp" />
														</td>
													</tr>
												</c:when>
												<c:otherwise>
													<tr>
														<td style="color: red; text-align: center" colspan="12">No
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
			if(option == true) {
				windown.location.href = 'delete?id = ' + id;
			}
		}
    
    	
    </script>
</body>
</html>