<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ page isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<title>HTML Tutorial</title>
  <meta charset="utf8" />
  <meta name="keywords" content="content" />
  <meta name="description" content="description" />
  <meta name="author" content="author" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link
    rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous"
  />
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />
  <link
    href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css"
    rel="stylesheet"
    type="text/css"
  />
  <link href="<c:url value="/resources/css/swiper-bundle.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link rel="stylesheet" href="../../Resources/css/jquery-ui.min.css" />
</head>
<body>
<div class="container-fluid">
      <!-- navbar -->
      <div class="row">
        <div class="col-12 col-lg-12 col-xl-12 p-0">
          <nav class="navbar">
            <a
              class="navbar-brand d-flex flex-column align-items-center"
              href="/"
            >
              <span class="d-block text-white">
                <span>T</span>
                <span style="margin-left: -17px">A</span>
              </span>
              <span class="d-block text-white" style="font-size: 10px"
                >Travel Amazing</span
              >
            </a>
            <div class="navbar-icon"></div>
            <ul class="navbar-nav">
              <li><a href="../../index.html"> Khách Sạn </a></li>
              <li><a href="./tour.html"> Tour </a></li>
              <li><a href="#"> Thức Ăn </a></li>
              <li><a href="#"> Liên Hệ </a></li>
            </ul>
            <ul class="navbar-nav navbar-login align-items-baseline">
              <li><i class="fas fa-phone-alt text-white mr-2"></i></li>
              <li>
                <button class="btn btn-danger text-white">09012345678</button>
              </li>
            </ul>
          </nav>
        </div>
      </div>
      <!-- end navbar -->

      <!-- payment hotel combo -->
      <form class="container" method="">
        <div class="row">
          <div class="col-12 col-lg-4">
            <div class="unit_price">
              <div class="border d-flex my-2 justify-content-around p-2 rounded">
                <p>Khách sạn A</p>
                <p>200.000 VND</p>
              </div>
              <div class="border my-2 p-2 rounded">
                <p class="font-weight-bold">Tổng thanh toán</p>
                <div class="d-flex justify-content-around">
                  <p>Tổng Cộng</p>
                  <p>2.000.000</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 col-lg-8">
            <div class="form-info mt-2">
              <div class="row">
                <div class="col-12 border p-4 rounded">
                  <p>1. Nhập họ tên</p>
                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">Họ tên</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="" />
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"
                      >Số di động</label
                    >
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="" />
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="" />
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label"
                      >Yêu cầu khác</label
                    >
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 border p-4 my-4 rounded">
                  <p>2. Phương thức thanh toán</p>
                  <div class="my-4">
                    <div
                      class="custom-control custom-radio custom-control-inline"
                    >
                      <input
                        type="radio"
                        id="customRadioInline1"
                        name="customRadioInline1"
                        class="custom-control-input"
                      />
                      <label
                        class="custom-control-label"
                        for="customRadioInline1"
                        >Chuyển Khoản</label
                      >
                    </div>
                    <div
                      class="custom-control custom-radio custom-control-inline"
                    >
                      <input
                        type="radio"
                        id="customRadioInline2"
                        name="customRadioInline1"
                        class="custom-control-input"
                      />
                      <label
                        class="custom-control-label"
                        for="customRadioInline2"
                        >Thanh Toán Trực Tiếp</label
                      >
                    </div>

                    <div
                      class="custom-control custom-radio custom-control-inline"
                    >
                      <input
                        type="radio"
                        id="customRadioInline3"
                        name="customRadioInline1"
                        class="custom-control-input"
                      />
                      <label
                        class="custom-control-label"
                        for="customRadioInline3"
                        >Thẻ tín dụng</label
                      >
                    </div>
                  </div>
                  <div class="custom-control custom-checkbox">
                    <input
                      type="checkbox"
                      class="custom-control-input"
                      id="customCheck1"
                    />
                    <label class="custom-control-label" for="customCheck1">
                      Tôi đồng ý các <a href="#">điều khoản</a> đặt phòng và huỷ
                      phòng của khách sạn và tourliver
                    </label>
                  </div>
                  <a
                    href="./payment.html"
                    class="btn btn-warning text-white mt-4 d-block mx-auto col-6"
                  >
                    Thanh toán và đặt phòng ngay
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
      <!-- payment hotel combo -->
    </div>

    <script src="<c:url value="/resources/js/jquery-3.6.0.js" />"></script>
    <script src="../../Resources/js/jquery-ui.min.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
    <script src="<c:url value="/resources/js/swiper-bundle.min.js" />"></script>


	<script src="<c:url value="/resources/js/script.js" />"></script>

</body>
</html>