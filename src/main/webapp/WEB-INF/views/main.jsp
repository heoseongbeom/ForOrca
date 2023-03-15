<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
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
	
	<style>
		#hero {
		  width: 100%;
		  height: 100vh;
		  background: url(${mp.mainPhotoChange}) top right;
		  background-size: cover;
		}
	</style>
</head>
<body>

	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <h1 class="logo me-auto me-lg-0"><a href="mainPage.me"><img src="${pageContext.request.contextPath}/resources/img/orca.jpg">${ mp.mainAdminName }</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="mainPage.me">Home</a></li>
          <li><a href="about.me">About</a></li>
          <li><a href="schedule.me">schedule</a></li>
          <li><a href="finance.me">finance</a></li>
          <li><a href="portfolio.me">Portfolio</a></li>
          <li><a href="contact.me">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      
         
      
     

      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        &nbsp;
        <a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">logout</a>
        <c:if test="${ loginUser.memState eq '1' }">
        	<a href="mainUpdateForm.me" data-toggle="modal">Update Page</a>
        </c:if>
      </div>

	
    </div>

  </header><!-- End Header -->

<!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container d-flex flex-column align-items-center" id="mainForm" data-aos="zoom-in" data-aos-delay="100">
      <h1  style="margin-bottom:10px; text-shadow:0px 0px 1px">${ mp.mainAdminName }</h1>
      <h2>${ mp.mainAdminIntro }</h2>
      <a href="about.me" class="btn-about">About Me</a>
    </div>
  </section><!-- End Hero -->

  <jsp:include page="common/footer.jsp"/>

</body>
</html>