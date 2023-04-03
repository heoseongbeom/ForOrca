<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

</head>
<body>

	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <h1 class="logo me-auto me-lg-0"><a href="main.me"><img src="${pageContext.request.contextPath}/resources/img/orca.jpg">orca</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a href="mainPage.me">Home</a></li>
          <li><a href="about.me">About</a></li>
          <li><a href="schedule.me">Schedule</a></li>
          <li><a href="finance.me">Finance</a></li>
          <li><a class="active" href="portfolio.po">Portfolio</a></li>
          <li><a href="contact.me">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        &nbsp;
        <a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">Logout</a>
		&nbsp;
        <c:if test="${ loginUser.memState eq '1' }">
        	<a href="portfolioAdd.po" data-toggle="modal">Upload File</a>
        </c:if>
      </div>

    </div>

  </header><!-- End Header -->
	
	<main id="main">

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio">
		  <div class="container" data-aos="fade-up">
	
			<div class="section-title">
			  <h2>Portfolio</h2>
			  <p>원래는 여보 타투 작업 사진 넣어야 되지만! 지금은 우리의 추억을 한번 담아봤옹 ㅎㅎ</p>
			</div>
	
			<div class="row" data-aos="fade-up" data-aos-delay="100">
			  <div class="col-lg-12 d-flex justify-content-center">
				<ul id="portfolio-flters">
				  <li data-filter="*" class="filter-active">All</li>
				  <li data-filter="#animal">Traveling</li>
				  <li data-filter=".filter-card">Daily</li>
				  <li data-filter=".filter-web">Events</li>
				</ul>
			  </div>
			</div>
			
			<br>

			<div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

				<div class="col-lg-4 col-md-6 portfolio-item filter-card" id="animal">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/언니카페.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>룡언니 카페에서 저떄 너무 좋아떠 ㅎㅎ</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/언니카페.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="룡언니 카페에서 저떄 너무 좋아떠 ㅎㅎ"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>	

				<div class="col-lg-4 col-md-6 portfolio-item filter-card">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/말똥.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>말똥 도넛! 이 때 우리 싸워따..? ㅋㅋㅋ</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/말똥.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="말똥 도넛! 이 때 우리 싸워따..? ㅋㅋㅋ"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>
				  

	
				<div class="col-lg-4 col-md-6 portfolio-item filter-web">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/생일.webp" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>생일 서프라이즈.. 너무 감동이어서 눈물 참느라 힘드러따..!</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/생일.webp" data-gallery="portfolioGallery" class="portfolio-lightbox" title="생일 서프라이즈.. 너무 감동이어서 눈물 참느라 힘드러따..!"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-card">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/한강.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>여의도 한강공원에서 곧 캐나다로 떠날 때라 많이 무서워찡..</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/한강.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="여의도 한강공원에서 곧 캐나다로 떠날 때라 많이 무서워찡.."><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/영종도.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>영종도에서 진짜 진짜 더웠는뎅 그래두 행복해찌 힣</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/영종도.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="영종도에서 진짜 진짜 더웠는뎅 그래두 행복해찌 힣"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-web">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/공항.webp" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>우리가 만나고 처음 떨어진 날.. 진짜 슬펐는데 지금은 여보가 옆에 있넹~~?</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/공항.webp" data-gallery="portfolioGallery" class="portfolio-lightbox" title="우리가 만나고 처음 떨어진 날.. 진짜 슬펐는데 지금은 여보가 옆에 있넹~~?"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>
	
			 
				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/고성.webp" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>강원도 고성 펜션 테라스 쨩!</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/고성.webp" data-gallery="portfolioGallery" class="portfolio-lightbox" title="강원도 고성 펜션 테라스 쨩!"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/루지.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>강화도 루지 잼써따!!</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/루지.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="강화도 루지 잼써따!!"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>
		
				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/카페.webp" class="img-fluid" alt="">
							<div class="portfolio-info">
								<h4>펜션 앞 카페 루프탑도 좋아찌~</h4>
								<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/카페.webp" data-gallery="portfolioGallery" class="portfolio-lightbox" title="펜션 앞 카페 루프탑도 좋아찌~"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>
		
				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/등대.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>내가 소중이 같다고 한...ㅎㅎ</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/등대.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="내가 소중이 같다고 한...ㅎㅎ"><i class="bx bx-plus"></i></a>
								<a href="https://www.instagram.com/p/Cni-S74rDOJ/" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-web">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/결혼식.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>룡언니 결혼식 후 대곶 카페.. 여기 시그니처 커피가 쨩이어찌~~</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/결혼식.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="룡언니 결혼식 후 대곶 카페.. 여기 시그니처 커피가 쨩이어찌~~"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-card">
					<div class="portfolio-wrap">
						<img src="${pageContext.request.contextPath}/resources/img/김현아.jpg" class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>버미랑 버미 엄마 누나랑 김현아에서 쇼핑~~</h4>
							<div class="portfolio-links">
								<a href="${pageContext.request.contextPath}/resources/img/김현아.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="버미랑 버미 엄마 누나랑 김현아에서 쇼핑~~"><i class="bx bx-plus"></i></a>
								<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

			  
	
			</div>
	
		  </div>
		</section><!-- End Portfolio Section -->
	
	  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp" />

	<div class="container">
		<div class="copyright">
		  &copy; Copyright <strong><span>Kelly</span></strong>. All Rights Reserved
		</div>
		<div class="credits">
		  <!-- All the links in the footer should remain intact. -->
		  <!-- You can delete the links only if you purchased the pro version. -->
		  <!-- Licensing information: https://bootstrapmade.com/license/ -->
		  <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/kelly-free-bootstrap-cv-resume-html-template/ -->
		  Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	  </div>

</body>
</html>