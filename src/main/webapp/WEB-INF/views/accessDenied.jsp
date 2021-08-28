<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
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
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/jquery-ui.min.css" />"
	rel="stylesheet">
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
					<ul class="navbar-nav navbar-login align-items-baseline">
						<li><i class="fas fa-phone-alt text-white mr-2"></i></li>
						<li><button class="btn btn-danger text-white">09012345678</button></li>
						<li><form:form
								action="${pageContext.request.contextPath}/logout" method="post">
								<a href="${pageContext.request.contextPath}/home">Back To
									Index</a>&nbsp;<input type="submit" value="Logout" />
							</form:form></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- end navbar -->

		<!--notification payment  -->
		<div class="row">
			<div class="col-12 d-flex justify-content-center align-items-center"
				style="height: 80vh;">
				<div class="card col-sm-3 px-0 rounded" style="background: #003c71;">
					<div class="card-body" style="text-align: center">
						<p class="text-white">You are not authorized to access this
							page</p>
						<div class="text-white">
							User :
							<sec:authentication property="principal.username" />
						</div>
						<div class="text-white">
							Role :
							<sec:authentication property="principal.authorities" />
						</div>
						<div class="row mx-auto">
							<a class="col-sm-5 btn btn-info mx-3 text-white mb-3"
								href="${pageContext.request.contextPath}/home"> Home </a> <a
								class="col-sm-5 btn btn-danger mx-3 text-white mb-3"
								href="${pageContext.request.contextPath}/home"> Close </a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- notification payment  -->
	</div>
	<script src="<c:url value="/resources/js/jquery-3.6.0.js" />">
		
	</script>
	<script src="<c:url value="/resources/js/swiper-bundle.min.js" />"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>
