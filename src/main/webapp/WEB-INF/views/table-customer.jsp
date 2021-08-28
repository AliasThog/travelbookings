<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  Bootstrap -->
    <link href="<c:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">   
   <!-- Font Awesome -->
   <link href="<c:url value="/resources/vendors/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">   
    <!-- NProgress -->
   <link href="<c:url value="/resources/vendors/nprogress/nprogress.css" />" rel="stylesheet"> 
   <!-- iCheck -->
   <link href="<c:url value="/resources/vendors/iCheck/skins/flat/green.css" />" rel="stylesheet"> 
   
    <!-- Custom Theme Style --> 
    <link href="<c:url value="/resources/css1/custom.min.css" />" rel="stylesheet">
    
    
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
							<h2>Admin</h2>
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
										<li><a href="tourAdmin"> Quản lý Tour </a></li>
										<li><a href="hotelAdmin"> Quản lý khách sạn </a></li>
										<li><a href="customerAdmin"> Quản lý khách </a></li>
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
								aria-expanded="false"> <img src="images/img.jpg" alt="">Admin
							</a>
								<div class="dropdown-menu dropdown-usermenu pull-right"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="login.html"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a>
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
							<h3 class="text-capitalize">Quản Lý khách sạn</h3>
						</div>

						<div class="title_right">
							<div class="col-md-5 col-sm-5   form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search for..."> <span
										class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</div>


					<div class="clearfix"></div>

					<div class="col-md-12 col-sm-12  ">
						<div class="x_panel">
							<div class="x_title">
								<ul class="nav navbar-right panel_toolbox">
									<nav aria-label="Page navigation example">
										<ul class="pagination position-absolute" style="left: 20px">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
													<span class="sr-only">Previous</span>
											</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">&raquo;</span>
													<span class="sr-only">Next</span>
											</a></li>
										</ul>
									</nav>


									<a href="#" class="btn btn-primary btn-sm" data-toggle="modal"
										data-target="#exampleModal" data-whatever="@mdo"><i
										class="fa fa-plus"></i> Thêm mới </a>
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
												<th class="column-title">Tên tài khoản</th>
												<th class="column-title">Mật khẩu</th>
												<th class="column-title">Họ Tên</th>
												<th class="column-title">Giới tính</th>
												<th class="column-title">Số điện thoại</th>
												<th class="column-title">Email</th>
												<th class="column-title">Admin</th>
												<th class="column-title no-link last"><span
													class="nobr">Thao tác</span></th>
												<!-- <th class="bulk-actions" colspan="9">
                              <a class="antoo" style="color:#fff; font-weight:500;">( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th> -->
											</tr>
										</thead>

										<tbody>
											<tr class="even pointer">
												<!-- <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td> -->
												<td class=" ">121000040</td>
												<td class=" ">123456</td>
												<td class=" ">Lý Thánh Tông</td>
												<td class=" ">Nam</td>
												<td class=" ">091234567</td>
												<td class="a-right a-right ">lytong@gmail.com</td>
												<td class=" ">Có</td>
												<td class="last"><a href="#"
													class="btn btn-primary btn-sm"> <i
														class="fa fa-refresh"></i>
												</a> <a href="#" class="btn btn-primary btn-sm"> <i
														class="fa fa-close"></i>
												</a></td>
											</tr>
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


		<form action="" method="" class="modal fade" id="exampleModal"
			tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Thêm mới</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-row">
							<div class="col-12 mb-4">
								<label>Tên tài khoản</label> <input type="text"
									class="form-control" placeholder="Tên tài khoản">
							</div>
							<div class="col-12 mb-4">
								<label>Mật khẩu</label> <input type="text" class="form-control"
									placeholder="Mật khẩu">
							</div>
						</div>
						<div class="form-row mb-4">
							<div class="col">
								<label>Họ Tên</label> <input type="text" class="form-control"
									placeholder="Họ Tên">
							</div>
							<div class="col">
								<label>Gender</label> <select class="form-control">
									<option value="">Nam</option>
									<option value="">Nữ</option>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="col-12 mb-4">
								<label>Số điện thoại</label> <input type="text"
									class="form-control" placeholder="Số điện thoại">
							</div>
							<div class="col-12 mb-4">
								<label>Email</label> <input type="text" class="form-control"
									placeholder="Email">
							</div>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox3" value="option3"> <label
								class="form-check-label text-danger" for="inlineCheckbox3">
								Bạn là người quản trị ?</label>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary w-25"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary w-25">Tạo</button>
					</div>
				</div>
			</div>
		</form>
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
    <script src="<c:url value="/resources/vendors/jquery/dist/jquery.min.js" />"></script>
    <!-- Bootstrap -->
   <script src="<c:url value="/resources/vendors/bootstrap/dist/js/bootstrap.bundle.min.js" />"></script>
    <!-- FastClick -->
    <script src="<c:url value="/resources/vendors/fastclick/lib/fastclick.js" />"></script>
    <!-- NProgress -->
    <script src="<c:url value="/resources/vendors/nprogress/nprogress.js" />"></script>
    <!-- iCheck -->
    <script src="<c:url value="/resources/vendors/iCheck/icheck.min.js" />"></script>

    <!-- Custom Theme Scripts -->
    
    <script src="<c:url value="/resources/js1/custom.min.js" />"></script>
    
    
</body>
</html>