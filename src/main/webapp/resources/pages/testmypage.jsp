<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Edufair - Multipurpose HTML Template For Education With
	Course Builder</title>
<!-- Favicon icon -->
<link rel="shortcut icon" type="image/png"
	href="<%=request.getContextPath()%>/images/favicon.png" />
<!-- Google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,400,500,700"
	rel="stylesheet">


<!-- Bootstrap -->
<link href="<%=request.getContextPath()%>/pages/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Fontawsome -->
<link
	href="<%=request.getContextPath()%>/pages/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Lightbox Gallery -->
<link
	href="<%=request.getContextPath()%>/pages/inc/lightbox/css/jquery.fancybox.css"
	rel="stylesheet">
<!-- Animate CSS-->
<link href="<%=request.getContextPath()%>/pages/css/animate.css"
	rel="stylesheet">
<!-- Preloader CSS-->
<link href="<%=request.getContextPath()%>/pages/css/fakeLoader.css"
	rel="stylesheet">
<!-- Main CSS -->
<link href="<%=request.getContextPath()%>/pages/css/style.css"
	rel="stylesheet">

<!-- Responsive CSS -->
<link href="<%=request.getContextPath()%>/pages/css/responsive.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->



</head>
<body class="carrer-details-1x">

	<!-- Preloader -->
	<div id="fakeloader"></div>

	<div class="edufair-container">

		<!-- Top menu -->
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top-menu-left">
							<p>Need help?</p>
							<b><i class="fa fa-phone"></i> (00) 123 456 789</b> <b><i
								class="fa fa-envelope"></i> support@edufair.com</b>
						</div>
					</div>
					<div class="col-md-6">
						<div class="top-menu-right">
							<a href="#" class="" data-toggle="modal" data-target="#regiater"><i
								class="fa fa-user"></i> Register</a> <a href="#" class=""
								data-toggle="modal" data-target="#log-in"><i
								class="fa fa-lock"></i> Login</a>


						</div>
					</div>

					<div class="col-md-12">
						<!-- Modal -->
						<div class="modal fade" id="regiater" tabindex="-1" role="dialog">
							<div class="modal-dialog modal-sm" role="document">
								<div class="modal-content">

									<div class="modal-body">
										<div class="edufair-subscription-1x">
											<div class="edufair-subscription-title-1x">
												<h3>Register Now</h3>
											</div>
											<div class="edufair-subscription-form-1x">
												<form
													action="<%=request.getContextPath()%>/pages/bootstrap/php/contact-form.php"
													method="POST">
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block facebook-login"><i
															class="fa fa-facebook"></i> Register with Facebook </a>
													</div>
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block google-login"><i
															class="fa fa-google"></i> Register with Google </a>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="text" id="name" class="form-control"
																placeholder="Name" required>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="email" class="form-control" id="email1"
																placeholder="Email" required>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="password" class="form-control"
																id="password1" placeholder="Password" required>
														</div>
													</div>
													<div class="col-md-12">
														<a href="#" class="edufair-btn-larg btn-block"> Submit
														</a>
													</div>
													<div class="col-md-12 terms-condition">
														<p>
															Already a member? <a href="#" class=""
																data-toggle="modal" data-target="#log-in"> Login </a>
														</p>
														<h6>
															By signing up, you agree to our <a href="#" class="">
																Terms of Use and Privacy Policy. </a>
														</h6>
													</div>
												</form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="log-in" tabindex="-1" role="dialog">
							<div class="modal-dialog modal-sm" role="document">
								<div class="modal-content">

									<div class="modal-body">
										<div class="edufair-subscription-1x">
											<div class="edufair-subscription-title-1x">
												<h3>Login</h3>
											</div>
											<div class="edufair-subscription-form-1x">
												<form
													action="<%=request.getContextPath()%>/pages/php/contact-form.php"
													method="POST">
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block facebook-login"><i
															class="fa fa-facebook"></i> Login with Facebook </a>
													</div>
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block google-login"><i
															class="fa fa-google"></i> Login with Google </a>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="email" class="form-control" id="email2"
																placeholder="Email" required>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="password" class="form-control"
																id="password2" placeholder="Password" required>
														</div>
													</div>
													<div class="col-md-12">
														<a href="#" class="edufair-btn-larg btn-block"> Login
														</a>
													</div>
													<div class="col-md-12 terms-condition">
														<p>
															Or <a href="#" class=""> Forget Password </a>
														</p>
														<h6>
															By signing up, you agree to our <a href="#" class="">
																Terms of Use and Privacy Policy. </a>
														</h6>
													</div>

												</form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- End top menu -->

	<!-- Start Main Nav -->
	<div class="edufair-header edufair-course-header">
		<nav class="navbar navbar-default edufair-nav">
			<div class="container">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <i
								class="fa fa-align-right fa-2"></i>
						</button>
						<a class="navbar-brand edufair-brand edufair-light" href="#"><img
							src="<%=request.getContextPath()%>/pages/images/edufair-light.png"
							alt="Logo"></a> <a
							class="navbar-brand edufair-brand edufair-dark" href="#"><img
							src="<%=request.getContextPath()%>/pages/images/edufair.png"
							alt="Logo"></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">


						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Home <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="online-course-one.html" target="_blank">Online
											Course One</a></li>
									<li><a href="online-course-two.html" target="_blank">Online
											Course Two</a></li>
									<li><a href="university-one.html" target="_blank">University
											One</a></li>
									<li><a href="university-two.html" target="_blank">University
											Two</a></li>
									<li><a href="high-school.html" target="_blank">High
											School</a></li>
									<li><a href="kindergarten.html" target="_blank">Kindergarten</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Course <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="course-one.html">Course One</a></li>
									<li><a href="course-two.html">Course Two</a></li>
									<li><a href="single-course.html">Course Single</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="admission-apply.html">Admission Apply</a></li>
									<li><a href="vice-chancellor.html">Vice Chancellor</a></li>
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="offer.html">Offer</a></li>
									<li><a href="schollarship.html">Schollarship</a></li>
									<li><a href="atletics.html">Atletics</a></li>
									<li><a href="events-one.html">Events</a></li>
									<li><a href="gallery.html">Gallery</a></li>
									<li><a href="notice.html">Notice</a></li>
									<li><a href="notice-details.html">Notice Single</a></li>
									<li><a href="carrer.html">Carrer</a></li>
									<li><a href="carrer-details.html">Carrer Single</a></li>
									<li><a href="contact-us.html">Contact Us</a></li>
									<li><a href="teacher.html">Teachers</a></li>
									<li><a href="commingsoon.html">Comming Soon</a></li>
									<li><a href="404.html">404 Page</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Blog <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="blog.html">Blog </a></li>
									<li><a href="blog-right-sidebar.html">Blog Right
											Sidebar</a></li>
									<li><a href="single.html">Blog Single</a></li>
								</ul></li>

							<li><a href="shop.html">Shop</a></li>
							<li><a href="components.html">Component</a></li>
						</ul>

						<div class="edufair-cart hidden-xs">
							<div class="box">
								<div class="container-2">
									<span class="icon"><i class="fa fa-search"></i></span> <input
										type="search" id="search" placeholder="Search..." />
								</div>
							</div>
							<a href="#"><i class="fa fa-shopping-cart"></i><span
								class="cart-no">0</span></a>
						</div>

					</div>
					<!-- /.navbar-collapse -->

				</div>
				<!-- /.container-fluid -->
			</div>
		</nav>
	</div>
	<!-- End Main Menu -->



	<!-- =============================================== -->


<!-- 여기서 부터 수정 -->

<!-- Start main slider -->
<div id="carousel-example-generic"
	class="carousel slide edufair-slide carousel-fade" data-ride="carousel">
	<!-- Wrapper for slides -->
	<div class="carousel-inner edufair-inner single-inner" role="listbox">
		<div class="edufair-overlay">
			<img
				src="<%=request.getContextPath()%>/pages/images/university/testimonial-bg.jpg"
				alt="slide 1" class="edufair-slider-image edufair-single-image">
			<div class="carousel-caption edufair-caption edufair-single-caption">
				<div class="edufair-slider-middle">
					<div class="container edufair-slider-text">
						<h2 class="fadeInLeft">My page</h2>
						<ol class="breadcrumb edufair-single-breadcrumbs">
							<li><a href="#">Home</a></li>
							<li><a href="#">My page</a></li>
							<li class="active">마이 페이지</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End main slider -->
</div>

<!--  메인 박스 -->
<!-- Start edufair features -->
<div class="online-course-category-1x  margin-bottom-large">
	<div class="container">
		<div class="row">

			<h2>Help me!</h2>

			<div class="online-category">

				<div class="col-md-2">
					<div
						class="single-kindergarten-features single-kindergarten-features-1x">
						<img
							src="<%=request.getContextPath()%>/pages/images/icon/update1.png"
							alt="" />
						<h4>
							<a href="${pageContext.request.contextPath}/mypage/myblock.do">차단/신고
								조회</a>
						</h4>
					</div>
				</div>
				<div class="col-md-2">
					<div
						class="single-kindergarten-features single-kindergarten-features-2x">
						<img
							src="<%=request.getContextPath()%>/pages/images/icon/list.png"
							alt="" />
						<h4>
							<a href="${pageContext.request.contextPath}/mypage/mydeal.do">거래
								내역 보기</a>
						</h4>
					</div>
				</div>
				<div class="col-md-2">
					<div
						class="single-kindergarten-features single-kindergarten-features-3x">
						<img
							src="<%=request.getContextPath()%>/pages/images/icon/document.png"
							alt="" />
						<h4>
							<a
								href="${pageContext.request.contextPath}/mypage/latestservice.do">최근
								본 서비스</a>
						</h4>
					</div>
				</div>
				<div class="col-md-2">
					<div
						class="single-kindergarten-features single-kindergarten-features-4x">

						<img
							src="<%=request.getContextPath()%>/pages/images/icon/review1.png"
							alt="" />
						<h4>
							<a href="${pageContext.request.contextPath}/mypage/reviewlist.do">작성
								후기</a>
						</h4>
					</div>
				</div>

				<div class="col-md-2">
					<div
						class="single-kindergarten-features single-kindergarten-features-5x">
						<img
							src="<%=request.getContextPath()%>/pages/images/icon/envelope.png"
							alt="" />
						<h4>
							<a href="${pageContext.request.contextPath}/mypage/qnalist.do">1:1
								문의 내역</a>
						</h4>
					</div>
				</div>
				<div class="col-md-2">
					<div
						class="single-kindergarten-features single-kindergarten-features-6x">
						<img
							src="<%=request.getContextPath()%>/pages/images/icon/likecheck.png"
							alt="" />
						<h4>
							<a href="${pageContext.request.contextPath}/mypage/likelist.do">찜
								목록</a>
						</h4>
					</div>
				</div>
			</div>
		</div>

		<div>
			<h2>회원 정보</h2>
			<table id="myInfo" border="1">
				<tr>
					<th>회원ID</th>
					<td>1 ${member.userId}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>2 ${member.userEmail}</td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td>3 ${member.userName}</td>
				</tr>
				<tr>
				<th>전화번호</th>
				<td>4 ${member.phone}</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>5 ${member.gender}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>6 ${member.address}</td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td>7 ${member.regDate}</td>
				</tr>

				<tr>
					<th>SMS 수신여부</th>
					<td>8 ${member.sms}</td>
				</tr>

				<tr>
					<th>회원등급</th>
					<td>9 ${member.userRank}</td>
				</tr>
				<tr>
					<th>나의 적립금</th>
					<td><button class="btn btn-transparent" style="color: #fff"
							type="button"
							onclick="location.href='${pageContext.request.contextPath}/mypage/mypoint.do'">적립금
							확인</button></td>
				</tr>
				<tr>
			</table>
			<button class="btn btn-transparent" style="color: #fff" type="button"
				onclick="location.href='${pageContext.request.contextPath}/mypage/changeInfo.do'">회원
				정보 수정</button>
			<button class="btn btn-transparent" style="color: #fff" type="button"
				onclick="location.href='${pageContext.request.contextPath}/mypage/delete.do'">회원
				탈퇴</button>
		</div>


	</div>
</div>


<!--  메인 박스 끝 -->





		<!-- Start Footer -->
		<footer class="edufair-footer-1x margin-top-large">		
			
			  <div class="edufair-footer-content ">
					<div class="container">
						<div class="row">
							<div class="col-md-12 edufair-footer-subscription">	
								
							</div>	
							<div class="col-md-4 edufair-footer-address">	
								<a href="#"><img src="<%=request.getContextPath()%>/pages/images/edufair-light.png" alt="Logo"></a><br>
								
									<p> <i class="fa fa-phone"></i>(00) 123 456 789 </p>				
									<p> <i class="fa fa-envelope"></i>hello@edufair.com </p>								
									<p> <i class="fa fa-map-marker"></i> 123 walton gorgia street,<br> west town hall, London, UK. </p>											
							</div>
							<div class="col-md-2">
								<h5> Company </h5>
								<ul>
									<li><a href="#"> Help Center </a></li>				
									<li><a href="#"> Student support </a></li>				
									<li><a href="#"> Language Packs </a></li>				
									<li><a href="#"> Privacy policy </a></li>				
									<li><a href="#"> Become a Teacher </a></li>	
								</ul>
							</div>
							
							<div class="col-md-2">	
								<h5> Useful Links </h5>
								<ul>
									<li><a href="#"> Help Center </a></li>				
									<li><a href="#"> Student support </a></li>				
									<li><a href="#"> Language Packs </a></li>				
									<li><a href="#"> Privacy policy </a></li>				
									<li><a href="#"> Become a Teacher </a></li>				
								</ul>			
							</div>
							<div class="col-md-2">	
								<h5> Support </h5>
								<ul>
									<li><a href="#"> Help Center </a></li>				
									<li><a href="#"> Student support </a></li>				
									<li><a href="#"> Language Packs </a></li>				
									<li><a href="#"> Privacy policy </a></li>				
									<li><a href="#"> Become a Teacher </a></li>				
								</ul>			
							</div>
							<div class="col-md-2">	
								<h5> Community </h5>
								<ul>
									<li><a href="#"> Help Center </a></li>				
									<li><a href="#"> Student support </a></li>				
									<li><a href="#"> Language Packs </a></li>				
									<li><a href="#"> Privacy policy </a></li>				
									<li><a href="#"> Become a Teacher </a></li>				
								</ul>			
							</div>					
							
							<div class="col-md-12 footer-info">	
								<div class="row">	
									<div class="col-md-6 footer-info-left">	
										<p>Education WordPress Theme by Edufair. Powered by <a href="#"> BanyanTheme </a></p>
									</div>			
									<div class="col-md-6 footer-info-right">
										<ul>
											<li><a href="#"> <i class="fa fa-facebook"></i> </a></li>										
											<li><a href="#"> <i class="fa fa-twitter"></i> </a></li>											
											<li><a href="#"> <i class="fa fa-google"></i> </a></li>									
											<li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>											
										</ul>					
									</div>					
								</div>					
							</div>					
						</div>					
					</div>			
			  </div>		  
		</footer>	
		<!-- End Footer -->	
	</div>

		
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/pages/js/bootstrap.min.js"></script>		
	<!-- Preloader js -->
    <script src="<%=request.getContextPath()%>/pages/js/fakeLoader.min.js"></script>	
	<!-- Masonry Portfolio Script -->
    <script src='https://cdn.jsdelivr.net/jquery.mixitup/latest/jquery.mixitup.min.js'></script>
	<!-- Lightbox js -->
	<script src="<%=request.getContextPath()%>/pages/inc/lightbox/js/jquery.fancybox.pack.js"></script>
	<script src="<%=request.getContextPath()%>/pages/inc/lightbox/js/lightbox.js"></script>
	<!-- Wow js -->
    <script src="<%=request.getContextPath()%>/pages/js/wow.min.js"></script>
	<!-- Counter Script -->
	<script src="<%=request.getContextPath()%>/pages/js/waypoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/pages/js/jquery.counterup.min.js"></script>
	<!-- Scroll bottom to top -->
	<script src="<%=request.getContextPath()%>/pages/js/scrolltopcontrol.js"></script>	
	<!-- Stiky menu -->
	<script src="<%=request.getContextPath()%>/pages/js/jquery.sticky.js"></script>	
	<!-- Stiky Sidebar -->
	<script src="<%=request.getContextPath()%>/pages/js/theia-sticky-sidebar.min.js"></script>
	
	<!-- Custom script -->
    <script src="<%=request.getContextPath()%>/pages/js/custom.js"></script>
	
  </body>
</html>