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

<link href="<c:url value="/resources/css/swiper-bundle.min.css" />"
	rel="stylesheet">
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
		<!-- banner -->

		<!------------------------------------ content ----------------------------------------------------->
		<!------------------------------------ content ----------------------------------------------------->
		<!------------------------------------ content ----------------------------------------------------->
		<!------------------------------------ content ----------------------------------------------------->


		<div class="row">
			<div class="col-12 col-lg-12 col-xl-12 p-0">
				<div style="display: flex; justify-content: center" class="filter">
					<form class="filter-hotel" action="" method="POST">
						<select class="form-select">
							<option value="danang" selected>Đà Nẵng</option>
							<option value="hanoi">Hà Nội</option>
							<option value="hoian">Hội An</option>
							<option value="phuquoc">Phú Quốc</option>
						</select>
						<div class="hotel-start">
							<input type="date" name="" id="" />
						</div>
						<div class="hotel-room">
							<select class="form-select">
								<option value="danang" selected>Khởi hành từ</option>
								<option value="hanoi">...</option>
							</select>
						</div>
						<button type="submit" class="btn btn-warning">Tìm</button>
					</form>
				</div>
			</div>
		</div>
		<!-- end banner -->
		<!-- hotel local -->
		<div class="row" style="margin-left: 380px">
			<h3>${tour.nameTour }</h3>
		</div>
		<!-- end hotel local -->

		<!-- content detail tour -->
		<div class="container">
			<div class="row">
				<div class="col-12 col-xl-8">
					<div class="content-detail-tour">
						<div class="tour-review">
							<img style="margin-top: 25px;"
								src="${pageContext.request.contextPath}/image/${tour.urlImage1}" />
							<h3 class="mt-4 mb-3">${tour.description }</h3>
							<p>${tour.descriptionChitiet }</p>
							<h3 class="mt-4 mb-3">Những trải nghiệm thú vị trong chương
								trình</h3>
							<ul>
								<li>${tour.traiNghiem }</li>
								<li>${tour.traiNghiem1 }</li>
								<li>${tour.traiNghiem2 }</li>

							</ul>
							<h3 id="chuongtrinhtour" class="mt-4 mb-3">Chương trình tour
							</h3>
							<strong> NGÀY 01: </strong>
							<p>${tour.chuongtrinhtour1 }</p>
							<!--  <p>Buổi sáng: HDV đón khách tại sân bay Phú Quốc hoặc bến
								tàu. Xe đưa đoàn tham quan Đông Đảo:</p>
							<p>Tham quan các làng nghề truyền thống nổi tiếng trên đảo.</p>
							<ul>
								<li>Hồ tiêu Phú Quốc.</li>
								<li>Nhà thùng nước mắm truyền thống.</li>
								<li>Rượu sim.</li>
								<li>Khu du lịch Suối Tranh.</li>
							</ul>
							<img
								src="https://cdn2.ivivu.com/2017/04/26/13/ivivu-suoi-tranh-2.jpg"
								alt="not image" />
							<p class="mt-4 mb-3">Trưa: Đoàn đến nhà hàng tự do dùng hải
								sản. Sau đó về khách sạn nhận phòng nghỉ ngơi. Chiều: Đoàn khám
								phá nam đảo:</p>
							<ul>
								<li>Di tích lịch sử nhà tù Phú Quốc.</li>
								<li>Tắm biển Bãi sao.</li>
								<li>Thiền viện trúc lâm Hộ Quốc</li>
							</ul> -->
							<strong class="mt-4 mb-3 d-block">NGÀY 02</strong>
							<p>${tour.chuongtrinhtour2 }
							<p>
								<!-- </p>Buổi sáng: Qúy khách dùng điểm tâm sáng buffet tại khách
								sạn. Đoàn đến với chương trình cano 4 đảo:</p>
							<p>Cano sẽ đưa đoàn đến khu vực Hòn Rõi - Công viên san hô –
								một trong 3 công viên san hô hiếm hoi tại Việt Nam, Quý khách có
								thể trải nghiệm dịch vụ đi bộ dưới đáy biển (ngoài chương trình,
								chi phí tự túc):Đoàn tiếp tục lên cano rẽ sóng qua các đảo, lắng
								nghe thuyết minh về 12 hòn đảo xinh đẹp của huyện đảo Phú Quốc,
								chuẩn bị dụng cụ để câu cá biển đông.</p>
							<img
								src="https://cdn2.ivivu.com/2017/11/07/11/ivivu-hon-dam-hon-dua-hon-roi.jpg"
								alt="not image" />
							<p class="mt-4 mb-3">Sau khi thỏa sức khám phá đại dương,
								đoàn tiếp tục hành trình đến với Hòn Móng Tay – là viên ngọc ẩn
								giấu ở phía Nam đảo Phú Quốc, một trong những đảo sở hữu bãi cát
								trắng mịn với làn nước trong xanh tuyệt đẹp. Đoàn nghỉ ngơi, tắm
								biển, thư giãn.</p>
							<img
								src="https://cdn2.ivivu.com/2019/07/11/17/ivivu-hon-mong-tay-2.jpg"
								alt="not image" />
							<p class="mt-4 mb-3">Cano đưa đoàn đến Hòn Gầm Ghì – hòn đảo
								được mệnh danh là Vương Quốc San Hô – Quý khách lặn ngắm san hô
								với các dụng cụ được chuẩn bị sẵn: Ống thở, kính lặn, chân vịt,
								áo phao. Nước rất cạn và trong khe, nhìn tận đáy, đây là điểm
								ngắm san hô rất lý tưởng.</p>
							<img
								src="https://cdn2.ivivu.com/2019/07/11/17/ivivu-hon-gam-ghi.jpg"
								alt="not image" />
							<p class="mt-4 mb-3">Cano đưa đoàn đến Hòn Dăm Trong – Quý
								khách có thể chiêm ngưỡng khung cảnh thiên nhiên hoang sơ, tận
								hưởng hoàng hôn tuyệt đẹp trên biển. Dùng cơm trưa trên tàu tự
								túc. quý khách tự do tắm biển lặn ngắm san hô. Buổi chiều: Đoàn
								di chuyển về khách sạn nghỉ ngơi và dùng bữa tối tại nhà hàng.
								Qúy khách có thể khám phá café du thuyền, câu mực về đêm, chi
								phí từ 60.000 – 100.000vnd/ly.</p> -->
								<strong class="mt-4 mb-3 d-block">NGÀY 03:</strong>
							<p>${item.chuongtrinhtour3 }
							<p>
							<p>
								<!-- Buổi sáng: Đoàn dùng điểm tâm sáng. Tự do sinh hoạt.</p>
							<p>Có các gợi ý cho đoàn như sau:</p>
							<p>Gần khách sạn đoàn ờ có cafe Chuồn Chuồn nổi tiếng phong
								cảnh đẹp và nằm trên cao đoàn có thể ngắm toàn cảnh Phú Quốc khi
								đến đây.</p>
							<img
								src="https://cdn2.ivivu.com/2020/07/10/10/ivivu-cafe-chuon-chuon.gif"
								alt="not image" />
							<p class="mt-4 mb-3">Có thể đến chợ Dương Đông để mua đặc sản
								của người dân vừa đánh bắt vào bán rất tươi sống. Gần khách sạn
								có bãi biển rất đẹp đoàn có thể đến đây để tắm biển chụp hình và
								thưởng thức hải sản cũng như ngắm biển vào buổi sáng.</p>
							<p>Buổi trưa: Qúy khách trả phòng.</p> -->
						</div>

						<div class="tour-departure-schedule">
							<div class="title d-flex justify-content-between mb-4">
								<h3 id="lichkhoihanh">Lịch khởi hành</h3>
								<input type="date" name="" id="" />
							</div>
							<table class="table table-striped">
								<thead>
									<tr>
										<td>Ngày khởi hành</td>
										<td>Ngày về</td>
										<td>Tình trạng</td>
										<td>Giá</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>T6, 16/07/2021</td>
										<td>CN 18/07/2021</td>
										<td>liên hệ</td>
										<td>2.450.000 VND</td>
									</tr>
									<tr>
										<td>T6, 16/07/2021</td>
										<td>CN 18/07/2021</td>
										<td>liên hệ</td>
										<td>2.450.000 VND</td>
									</tr>
									<tr>
										<td>T6, 16/07/2021</td>
										<td>CN 18/07/2021</td>
										<td>liên hệ</td>
										<td>2.450.000 VND</td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- Service -->
						<div class="row">
							<div class="col-12">
								<h3 id="dichvu" class="mt-4 mb-3">Dịch vụ đi kèm</h3>
								<div class="service d-flex flex-wrap">
									<div class="my-2 mx-4">
										<i class="fas fa-check text-primary mr-2"></i> <span
											style="font-size: 12px">Bảo hiểm</span>
									</div>
									<div class="my-2 mx-4">
										<i class="fas fa-utensils text-primary mr-2"></i> <span
											style="font-size: 12px">Bữa ăn</span>
									</div>
									<div class="my-2 mx-4">
										<i class="fas fa-flag text-primary mr-2"></i> <span
											style="font-size: 12px">Hướng dẫn viên</span>
									</div>
									<div class="my-2 mx-4">
										<i class="fas fa-ticket-alt text-primary mr-2"></i> <span
											style="font-size: 12px">Vé tham quan</span>
									</div>
									<div class="my-2 mx-4">
										<i class="fas fa-bus text-primary mr-2"></i> <span
											style="font-size: 12px">Xe đưa đón</span>
									</div>
								</div>
							</div>
						</div>
						<!-- Service -->
						<!-- Rules -->
						<div class="row">
							<div class="col-12">
								<h3 id="dieukhoan" class="mt-4 mb-3">Điều khoản</h3>
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item"><a class="nav-link text-dark active"
										data-toggle="tab" href="#tabs-1" role="tab">Giá bao gồm</a></li>
									<li class="nav-item"><a class="nav-link text-dark"
										data-toggle="tab" href="#tabs-2" role="tab">không bao gồm</a></li>
									<li class="nav-item"><a class="nav-link text-dark"
										data-toggle="tab" href="#tabs-3" role="tab">Huỷ đổi</a></li>
									<li class="nav-item"><a class="nav-link text-dark"
										data-toggle="tab" href="#tabs-4" role="tab">Lưu ý</a></li>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane active p-3" id="tabs-1" role="tabpanel">
										<h6>VẬN CHUYỂN:</h6>
										<ul>
											<li>Xe du lịch 16 - 29 - 35 - 45 chỗ (Tủy vào số lượng
												khách) sang trọng, lái xe chuyên nghiệp, lịch sự phục vụ
												theo hành trình.</li>
											<li>Vé tàu cao tốc khứ hồi Vũng Đục - Cô Tô - Vân Đồn.</li>
											<li>Xe điện đưa đón tham quan theo chương trình tại Cô
												Tô.</li>
										</ul>
										<h6>LƯU TRÚ:</h6>
										<ul>
											<li>Khách sạn 2 sao theo tiêu chuẩn địa phương đảo đầy
												đủ tiện nghi. (4 khách/ phòng)</li>
										</ul>
										<h6>KHÁC:</h6>
										<ul>
											<li>Ăn uống theo chương trình tham quan.</li>
											<li>Hướng dẫn viên chuyên nghiệp phục vụ nhiệt tình chu
												đáo suốt chuyến đi.</li>
											<li>Vé thắng cảnh tại tất cả các điểm thăm quan theo
												hành trình tại đảo Cô Tô</li>
											<li>Vé tham quan hang động Vũng Đục</li>
											<li>Bảo hiểm du lịch mức đền bù tối đa
												50.000.000Đ/vụ/người.</li>
											<li>Mũ công ty du lịch , voucher khuyến mãi.</li>
											<li>Baner chụp hình</li>
										</ul>
									</div>
									<div class="tab-pane p-3" id="tabs-2" role="tabpanel">
										<ul>
											<li>Đồ uống: rượu, bia, nước ngọt và các loại đồ uống cá
												nhân không đề cập.</li>
											<li>Các chi phí cá nhân: mua sắm, điện thoại, thăm quan
												tự do ngoài lịch trình.</li>
											<li>Thuế giá trị gia tăng VAT 10%.</li>
											<li>Chương trình đi Cô tô Con 100.000 VNĐ/khách.</li>
										</ul>
									</div>
									<div class="tab-pane p-3" id="tabs-3" role="tabpanel">
										<h5>Chính huỷ đổi</h5>
										<ul>
											<li>Trường hợp hủy chuyến du lịch ngay sau khi đăng ký,
												Quý khách sẽ chịu phí 10% trên giá vé du lịch.</li>
											<li>Trường hợp hủy chuyến du lịch trong vòng từ 10 đến
												15 ngày trước ngày khởi hành, Quý khách sẽ chịu phí 30% trên
												giá vé du lịch.</li>
											<li>Trường hợp hủy chuyến du lịch trong vòng từ 5 đến 10
												ngày trước ngày khởi hành, Quý khách sẽ chịu phí 50% trên
												giá vé du lịch.</li>
											<li>Trường hợp hủy chuyến du lịch trong vòng từ 3 đến 4
												ngày trước ngày khởi hành, Quý khách sẽ chịu phí 75% trên
												giá vé du lịch.</li>
											<li>Quý khách hủy chuyến du lịch trong vòng từ 0 đến 2
												ngày trước ngày khởi hành, Quý khách sẽ chịu phí 100% trên
												giá vé du lịch.</li>
											<li>Lễ Tết không hoàn, không hủy, quý khách hủy đổi mất
												phí 100% giá trị tour.</li>
										</ul>
									</div>
									<div class="tab-pane p-3" id="tabs-4" role="tabpanel">
										<h6>Lưu ý</h6>
										<p>Vì lý do thời tiết (thiên tai, bão lũ, gió giật mạnh,
											giông lốc), chiến tranh, phong tỏa do các hoạt động quân sự…
											cảng vụ không cấp phép cho tàu cao tốc Cái Rồng – Cô Tô – Cái
											Rồng hoạt động sẽ giải quyết như sau:</p>
										<p>Thông báo đến trước khi khởi hành tour từ Hà Nội: Công
											ty sẽ đổi ngày khởi hành theo yêu cầu của Quý khách. Trong
											trường hợp hai bên không thỏa thuận được ngày đi cụ thể bên B
											sẽ hoàn trả lại 100% toàn bộ tiền đặt cọc tour cho Bên A.</p>
										<p>Nếu thông báo cấm tàu chiều về Cô Tô – Vân Đồn: Quý
											khách chịu toàn bộ chi phí phát sinh: ăn, phòng nghỉ và các
											chi phí khác, công ty sẽ thanh toán công tác phí hướng dẫn
											viên phát sinh trong những ngày ở lại đảo và xe ô tô lưu đêm
											trên cảng Cái Rồng.</p>
									</div>
								</div>
							</div>
						</div>
						<!-- Rules -->

						<!-- image like -->
						<div class="row">
							<div class="col-12">
								<div class="hotel-evaluate">
									<p>Đánh giá khách hàng về Tour Phú Quốc</p>
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
									</div>
								</div>
							</div>
						</div>
						<!-- image like -->
					</div>
				</div>
				<div class="col-12 col-xl-4">
					<!-- order tour -->
					<form class="order-tour" action="" method="">
						<input type="hidden" name="nguoilon" id="nguoilon" value="" /> <input
							type="hidden" name="treem" id="nguoilon" value="" />
						<div style="margin-top: 24px" class="card">
							<div class="card-body">
								<div class="body-item">
									<label for=""> Chọn ngày khởi hành </label> <input type="date"
										name="" id="" value="" />
								</div>
								<div class="body-item">
									<label for=""> Người lớn <span id="money_adultus">0</span></label>
									<div class="count">
										<span class="minus" style="font-size: 18px; cursor: pointer">-</span>
										<span class="number"> 0 </span> <span class="plus"
											style="font-size: 18px; cursor: pointer">+</span>
									</div>
								</div>
								<div class="body-item">
									<label for=""> Trẻ em <span id="money_children">
											0 </span></label>
									<div class="count">
										<span class="minus" style="font-size: 18px; cursor: pointer">-</span>
										<span class="number"> 0 </span> <span class="plus"
											style="font-size: 18px; cursor: pointer">+</span>
									</div>
								</div>
								<p class="all-money my-4 ml-3">
									<span class="money">0</span> <span style="font-size: 10px">VND</span>
								</p>
								<a href="./payment_tour.html"
									class="btn btn-warning text-white py-3 px-5 mx-auto d-block mb-2">
									Yêu Cầu Đặt </a>
							</div>
						</div>
						<ul style="padding-left: 0; margin-top: 25px;"
							class="list-landingpage">
							<li><a href="#chuongtrinhtour">Chương trình tour</a></li>
							<li><a href="#lichkhoihanh">Lịch khởi Hành</a></li>
							<li><a href="#dichvu">Dịch vụ</a></li>
							<li><a href="#dieukhoan">Điều khoản</a></li>
						</ul>
					</form>
					<!-- order tour -->

				</div>
			</div>
			<!-- end content detail tour -->
		</div>

		<div class="container">
			<!-- tour in country -->
			<div class="row">
				<div class="col-12">
					<h5>Tour Trong nước</h5>
					<div class="tour-in-country d-flex flex-wrap">
						<div class="card m-3" href="#"
							style="width: 18rem; cursor: pointer" data-src="#">
							<div class="ribbon ribbon-top-left">
								<span>Tốt</span>
							</div>
							<img
								src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<p class="card-title font-weight-bold text-primary">Tour Cô
									Tô 3N2D: Du Lịch Miền Cát Trắng</p>
								<p class="card-text">
									<span class="badge badge-success">6.0</span> <span
										class="text-success" style="font-size: 12px"> tạm được
									</span> <span style="font-size: 12px"> 1 đánh giá </span>
								</p>
								<ul>
									<li class="text-primary" style="font-size: 12px">Đảo hoang
										Sơ Quang Lạn</li>
									<li class="text-primary" style="font-size: 12px">Móng Cái
									</li>
								</ul>
								<p class="text-primary">
									5.998.000 <span style="font-size: 10px">VND</span>
								</p>
							</div>
						</div>

						<div class="card m-3" href="#"
							style="width: 18rem; cursor: pointer" data-src="#">
							<div class="ribbon ribbon-top-left">
								<span>Tốt</span>
							</div>
							<img
								src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<p class="card-title font-weight-bold text-primary">Tour Cô
									Tô 3N2D: Du Lịch Miền Cát Trắng</p>
								<p class="card-text">
									<span class="badge badge-success">6.0</span> <span
										class="text-success" style="font-size: 12px"> tạm được
									</span> <span style="font-size: 12px"> 1 đánh giá </span>
								</p>
								<ul>
									<li class="text-primary" style="font-size: 12px">Đảo hoang
										Sơ Quang Lạn</li>
									<li class="text-primary" style="font-size: 12px">Móng Cái
									</li>
								</ul>
								<p class="text-primary">
									5.998.000 <span style="font-size: 10px">VND</span>
								</p>
							</div>
						</div>

						<div class="card m-3" href="#"
							style="width: 18rem; cursor: pointer" data-src="#">
							<div class="ribbon ribbon-top-left">
								<span>Tốt</span>
							</div>
							<img
								src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<p class="card-title font-weight-bold text-primary">Tour Cô
									Tô 3N2D: Du Lịch Miền Cát Trắng</p>
								<p class="card-text">
									<span class="badge badge-success">6.0</span> <span
										class="text-success" style="font-size: 12px"> tạm được
									</span> <span style="font-size: 12px"> 1 đánh giá </span>
								</p>
								<ul>
									<li class="text-primary" style="font-size: 12px">Đảo hoang
										Sơ Quang Lạn</li>
									<li class="text-primary" style="font-size: 12px">Móng Cái
									</li>
								</ul>
								<p class="text-primary">
									5.998.000 <span style="font-size: 10px">VND</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- tour trong nuoc -->

			<!-- tour in country -->

			<div class="row">
				<div class="col-12">
					<h5>Tour ngoài nước</h5>
					<div class="tour-in-country d-flex flex-wrap">
						<div class="card m-3" href="#"
							style="width: 18rem; cursor: pointer" data-src="#">
							<div class="ribbon ribbon-top-left">
								<span>Tốt</span>
							</div>
							<img
								src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<p class="card-title font-weight-bold text-primary">Tour Cô
									Tô 3N2D: Du Lịch Miền Cát Trắng</p>
								<p class="card-text">
									<span class="badge badge-success">6.0</span> <span
										class="text-success" style="font-size: 12px"> tạm được
									</span> <span style="font-size: 12px"> 1 đánh giá </span>
								</p>
								<ul>
									<li class="text-primary" style="font-size: 12px">Đảo hoang
										Sơ Quang Lạn</li>
									<li class="text-primary" style="font-size: 12px">Móng Cái
									</li>
								</ul>
								<p class="text-primary">
									5.998.000 <span style="font-size: 10px">VND</span>
								</p>
							</div>
						</div>

						<div class="card m-3" href="#"
							style="width: 18rem; cursor: pointer" data-src="#">
							<div class="ribbon ribbon-top-left">
								<span>Tốt</span>
							</div>
							<img
								src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<p class="card-title font-weight-bold text-primary">Tour Cô
									Tô 3N2D: Du Lịch Miền Cát Trắng</p>
								<p class="card-text">
									<span class="badge badge-success">6.0</span> <span
										class="text-success" style="font-size: 12px"> tạm được
									</span> <span style="font-size: 12px"> 1 đánh giá </span>
								</p>
								<ul>
									<li class="text-primary" style="font-size: 12px">Đảo hoang
										Sơ Quang Lạn</li>
									<li class="text-primary" style="font-size: 12px">Móng Cái
									</li>
								</ul>
								<p class="text-primary">
									5.998.000 <span style="font-size: 10px">VND</span>
								</p>
							</div>
						</div>

						<div class="card m-3" href="#"
							style="width: 18rem; cursor: pointer" data-src="#">
							<div class="ribbon ribbon-top-left">
								<span>Tốt</span>
							</div>
							<img
								src="https://cdn1.ivivu.com/iVivu/2020/01/03/19/d2e65d47159d81e16c466d331a232978-2751-800x450.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<p class="card-title font-weight-bold text-primary">Tour Cô
									Tô 3N2D: Du Lịch Miền Cát Trắng</p>
								<p class="card-text">
									<span class="badge badge-success">6.0</span> <span
										class="text-success" style="font-size: 12px"> tạm được
									</span> <span style="font-size: 12px"> 1 đánh giá </span>
								</p>
								<ul>
									<li class="text-primary" style="font-size: 12px">Đảo hoang
										Sơ Quang Lạn</li>
									<li class="text-primary" style="font-size: 12px">Móng Cái
									</li>
								</ul>
								<p class="text-primary">
									5.998.000 <span style="font-size: 10px">VND</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- tour trong nuoc -->
		</div>

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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


	<script src="<c:url value="/resources/js/jquery-3.6.0.js" />"></script>
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
		// sự kiên giảm dần
		$(".minus")
				.on(
						"click",
						function() {
							var count = this.closest(".count");
							var bodyItem = this.closest(".body-item");

							var number = Number.parseInt($(count).find(
									".number").html()) - 1;

							// BUG
							// var moneyAdultus = TEMP.TEMP_MONEY_ADULTUS / number;
							// var moneyChildren = TEMP.TEMP_MONEY_CHILDREN / number;

							if (moneyAdultus == Infinity || number < 0) {
								$(bodyItem).find("#money_adultus").html(0);
								$(bodyItem).find("#money_children").html(0);
							} else {
								$(bodyItem)
										.find("#money_adultus")
										.html(
												new Intl.NumberFormat(
														"vi-VN",
														{
															maximumSignificantDigits : TEMP.TEMP_FORMAT_MONEY,
														}).format(moneyAdultus));
								$(bodyItem)
										.find("#money_children")
										.html(
												new Intl.NumberFormat(
														"vi-VN",
														{
															maximumSignificantDigits : TEMP.TEMP_FORMAT_MONEY,
														})
														.format(moneyChildren));
							}

						});

		// sự kiện tăng dần
		$(".plus")
				.on(
						"click",
						function() {
							var count = this.closest(".count");
							var bodyItem = this.closest(".body-item");

							var number = Number.parseInt($(count).find(
									".number").html()) + 1;

							var moneyAdultus = TEMP.TEMP_MONEY_ADULTUS * number;
							var moneyChildren = TEMP.TEMP_MONEY_CHILDREN
									* number;

							$(bodyItem)
									.find("#money_adultus")
									.html(
											new Intl.NumberFormat(
													"vi-VN",
													{
														maximumSignificantDigits : TEMP.TEMP_FORMAT_MONEY,
													}).format(moneyAdultus));
							$(bodyItem)
									.find("#money_children")
									.html(
											new Intl.NumberFormat(
													"vi-VN",
													{
														maximumSignificantDigits : TEMP.TEMP_FORMAT_MONEY,
													}).format(moneyChildren));

						});
		var TEMP = {
			TEMP_COUNT_NAV : 0, // biến đếm tạm
			TEMP_COUNT_SORT : 0, // biến đếm tạm
			TEMP_LOOP : 3, // số lần lặp data
			TEMP_MONEY_ADULTUS : 1990000, // số tiền người lớn mặc định
			TEMP_MONEY_CHILDREN : 800000, // số tiền trẻ nhở mặc định
			TEMP_FORMAT_MONEY : 3, // định dạng 3 chữ số (VND)
			TEMP_COUNT_SEARCH : 0
		// biến đếm tạm
		};
	</script>
</body>
</html>