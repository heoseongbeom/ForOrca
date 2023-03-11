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
<style>
  .btn {
	background-color: #000000;
	background-image: linear-gradient(90deg, #3c454a 0%, #687576 74%);
	border-radius: 20px;
	border: 1px solid #606468;
	color: white;
	cursor: pointer;
	font-size: 0.8rem;
	font-weight: bold;
	letter-spacing: 0.1rem;
	padding: 0.9rem 4rem;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

.form > .btn {
	margin-top: 1.5rem;
}

.btn:active {
	transform: scale(0.95);
}

.btn:focus {
	outline: none;
}
</style>
  <!-- Template Main CSS File -->
</head>
<body>
<form action="">
	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <h1 class="logo me-auto me-lg-0"><img src="${pageContext.request.contextPath}/resources/img/orca.jpg"><input type="text" value="$"></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="main.me">Home</a></li>
          <li><a href="about.me">About</a></li>
          <li><a href="schedule.me">schedule</a></li>
          <li><a href="finance.me">finance</a></li>
          <li><a href="portfolio.me">Portfolio</a></li>
          <li><a href="contact.me">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      
         
      
     

      <div class="header-social-links" style="display: contents;">
       
        <input type="text" name="instarAddress" class="form-control" style="width:300px;">
        <button type="submit" class="btn">수정완료</button>
        &nbsp;
        <a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">logout</a>
      </div>

	
    </div>

  </header><!-- End Header -->

<!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container d-flex flex-column align-items-center" id="mainForm" data-aos="zoom-in" data-aos-delay="100">
      <h1  style="margin-bottom:10px; text-shadow:0px 0px 1px">${ mp.mainAdminName }</h1>
      <h2><input type="text" name="mainAdminInto" value="${ mp.mainAdminIntro }" class="form-control" style="width:700px"></h2>
      <a href="about.me" class="btn-about">About Me</a>
    </div>
  </section><!-- End Hero -->

</form>
  <jsp:include page="common/footer.jsp"/>

</body>
</html>