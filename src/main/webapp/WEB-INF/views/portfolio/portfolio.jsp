<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicons -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
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

  <!-- Font Awesome cdn -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
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
          <li><a href="about.ab">About</a></li>
          <li><a href="schedule.me">Schedule</a></li>
          <li><a href="finance.me">Finance</a></li>
          <li><a class="active" href="portfolio.po">Portfolio</a></li>
          <li><a href="contact.co">Contact</a></li>
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
		<section id="portfolio" class="portfolio" style="height: 80vh;">
			<div class="container" data-aos="fade-up">
	
				<div class="section-title">
				<h2>Portfolio</h2>
				</div>
		
				<div class="row" data-aos="fade-up" data-aos-delay="100">
				<div class="col-lg-12 d-flex justify-content-center">
					<ul id="portfolio-flters">
					<li data-filter="*" class="filter-active">All</li>
					<li data-filter="#animal">Animal</li>
					<li data-filter="#nature">Nature</li>
					<li data-filter="#etc">Etc</li>
					</ul>
				</div>
				</div>
				
				<br>

				<div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

					<c:choose>
						<c:when test="${ empty list }">
							<div class="" >
								<br><br><br><br><br>
								<h1 style="text-align-last: center;">Empty Photo</h1>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="p"  items="${ list }">
								<div class="col-lg-4 col-md-6 portfolio-item filter-card" id="${ p.portCategory }">
									<div class="portfolio-wrap">
										<input type="hidden" class="portNo" value="${p.portNo}">
										<img src="${ p.portChangePhoto }" class="img-fluid" alt="">
										<div class="portfolio-info">
											<h4>${ p.portText }</h4>
											<div class="portfolio-links">
												<a href="${ p.portChangePhoto }" data-gallery="portfolioGallery" class="portfolio-lightbox" title="${ p.portText }"><i class="bx bx-plus"></i></a>
												<c:if test="${ loginUser.memState eq '1' }">
													<a href="portfolioUpdateForm.po?no=${p.portNo}" title="Edit" class="updatePort"><i class="fas fa-pencil" style="font-size: smaller;"></i></a>&nbsp;&nbsp;
													<a onclick="deletePort();" title="Delete"><i class="fa-regular fa-trash-can" style="font-size: smaller;"></i></a>
												</c:if>
												<input type="hidden" class="deletePort" value="${p.portNo}">
												<!--<a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>-->
												<script>
													function deletePort(){
														Swal.fire({
														text: "정말 삭제하시겠습니까?",
														allowOutsideClick: true,
														showConfirmButton: true,
														showCancelButton: true,
														closeOnConfirm: true,
														closeOnCancel: true,
														confirmButtonText: 'OK',
														confirmButtonColor: 'slategray',
														cancelButtonText: 'Cancel',
														imageUrl: null,
														imageSize: null,
														timer: null,
														customClass: '',
														html: false,
														animation: true,
														allowEscapeKey: true,
														inputType: 'text',
														inputPlaceholder: '',
														inputValue: '',
														showLoaderOnConfirm: false
														}).then((result) => {
															if (result.isConfirmed) {
																location.href = 'portfolioDelete.po?no=' + $('.deletePort').val();
															}
														});
														
														// if($('.swal2-confirm swal2-styled').click()){
														// 	location.href = 'portfolioDelete.po?no=' + $('.deletePort').val();
														// }else{
														// 	false;
														// }
													}
												</script>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>    
						</c:otherwise>
					</c:choose>
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
		</div>
	  </div>

</body>
</html>