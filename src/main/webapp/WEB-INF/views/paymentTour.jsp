<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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
<body>
	<form class="container payment-tour">
		<div class="row">
			<div class="col-12 col-lg-12">
				<h3 class="ml-5 my-4">THANH TOÁN</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-6">
				<div class="image-tour rounded"
					style="background-image: url(https://www.roadaffair.com/wp-content/uploads/2017/12/hoi-an-vietnam-shutterstock_543460288-1024x679.jpg);"></div>
			</div>
			<div class="col-12 col-lg-6">
				<div class="form-payment">
					<div class="row">
						<div class="col-12 my-2 mt-4">
							<p class="font-weight-bold">TOUR HỘI AN- ĐÀ NẴNG</p>
						</div>
					</div>
					<div class="row my-2">
						<div class="col-12">
							<p>
								Mã Tour: <span class="ml-3">A0386 </span>
							</p>
						</div>
					</div>
					<div class="row my-2">
						<div class="col-12">
							<p>
								Ngày khởi hành: <span class="ml-5 font-weight-bold">21/1/2021</span>
							</p>
						</div>
					</div>
					<div class="row my-2">
						<div class="col-12">
							<div class="row">
								<p class="col-4">
									<span>Người lớn</span> <span class="px-2" id="money_adultus">
										0 </span>
								</p>
								<div class="count col-4">
									<span class="minus font-weight-bold"
										style="font-size: 18px; cursor: pointer">-</span>
									<span class="number mx-3"> 0 </span> <span
										class="plus font-weight-bold"
										style="font-size: 18px; cursor: pointer">+</span>
								</div>
							</div>
						</div>
					</div>
					<div class="row my-2">
						<div class="col-12">
							<div class="row">
								<p class="col-4">
									<span>Trẻ em</span> <span class="px-2" id="money_children">
										0 </span>
								</p>
								<div class="count col-4">
									<span class="minus font-weight-bold"
										style="font-size: 18px; cursor: pointer">-</span>
									<span class="number mx-3"> 0 </span> <span
										class="plus font-weight-bold"
										style="font-size: 18px; cursor: pointer">+</span>
								</div>
							</div>
						</div>
					</div>
					<div class="row my-5">
						<div class="col-12 col-lg-3">
							<p class="font-weight-bold">Tổng tiền</p>
						</div>
						<div class="col-12 col-lg-3">
							<p>550.000</p>
						</div>
						<div class="col-12 col-lg-3">
							<p>VND</p>
						</div>
					</div>
					<div></div>
					<div class="row">
						<div class="col-12 col-lg-12">
							<button type="button" class="btn btn-outline-danger d-block">
								Tôi đồng ý</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-5 px-5">
			<div class="col-12 col-lg-12">
				<div class="form-group row">
					<label for="" class="col-sm-2 col-form-label">TÊN
						KHÁCH HÀNG </label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="" class="col-sm-2 col-form-label">SDT </label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="" class="col-sm-2 col-form-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="" />
					</div>
				</div>
				<div class="row my-5">
					<div class="col-12 d-flex justify-content-around">
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadioInline1"
								name="customRadioInline1" class="custom-control-input" />
							<label class="custom-control-label" for="customRadioInline1"
								style="cursor: pointer;">Chuyển
								Khoản</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadioInline2"
								name="customRadioInline1" class="custom-control-input" />
							<label class="custom-control-label" for="customRadioInline2"
								style="cursor: pointer;">Thanh Toán
								Trực Tiếp</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadioInline3"
								name="customRadioInline1" class="custom-control-input" />
							<label class="custom-control-label" for="customRadioInline3"
								style="cursor: pointer;">Thẻ tín
								dụng</label>
						</div>
					</div>
				</div>
		<!-- 		<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadioInline4"
								name="customRadioInline1" class="custom-control-input" />
							<label class="custom-control-label" for="customRadioInline4"
								style="cursor: pointer;">tôi đồng ý
								các điều khoản đặt tour</label>
						</div>
					</div>
				</div> -->
				<div class="row my-4">
					<div class="col-12">
						<a href="./payment.html"
							class="col-2 btn btn-success text-white mx-auto d-block mt-3">
							THANH TOÁN </a>
					</div>
				</div>
			</div>
		</div>
	</form>

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
</body>
</html>