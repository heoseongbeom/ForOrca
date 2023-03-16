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
          <li><a  href="mainPage.me">Home</a></li>
          <li><a class="active" href="about.me">About</a></li>
          <li><a href="schedule.me">Schedule</a></li>
          <li><a href="finance.me">Finance</a></li>
          <li><a href="portfolio.me">Portfolio</a></li>
          <li><a href="contact.me">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>

    </div>

  </header><!-- End Header -->


	<main id="main">
	
	    <!-- ======= About Section ======= -->
	    <section id="about" class="about">
	      <div class="container" data-aos="fade-up">
	
	        <div class="section-title">
	          <h2>About</h2>
	          <p>I was born in Korea and came to Canada through the Philippines.
				This is Orca, the tattooist.</p>
	        </div>
	
	        <div class="row">
	          <div class="col-lg-4">
	            <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" class="img-fluid" alt="">
	          </div>
	          <div class="col-lg-8 pt-4 pt-lg-0 content">
	            <h3>Tattooist</h3>
	            <p class="fst-italic">
					I am a tattooist who works on the best art between Korea and Canada. Reservations and inquiries are available through Instagram. Thank you.
	            </p>
	            <div class="row">
	              <div class="col-lg-6">
	                <ul>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Birthday:</strong> 16 January 1997</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Website:</strong> www.orca.com</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Phone:</strong> 010 4435 0116</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>City:</strong> Vancouver, CANADA | Gimpo, KOREA</li>
	                </ul>
	              </div>
	              <div class="col-lg-6">
	                <ul>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Age:</strong> 26</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Degree:</strong> Master</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Email:</strong> ericarica@gmail.com</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Freelance:</strong> Available</li>
	                </ul>
	              </div>
	            </div>
	            <p>
					On July 17, 2022, I first met in Izakaya, became curious, became interested in the second meeting, and love began to sprout at the third meeting.
					And now I'm a person who can't live without you.
					I have loved you so far and I will continue to love you. Happy birthday my love.
					Thank you for being born into this world.
					
					
	            </p>
	          </div>
	        </div>
	
	      </div>
	    </section><!-- End About Section -->
	
	    <!-- ======= Skills Section ======= -->
	    <section id="skills" class="skills">
	      <div class="container" data-aos="fade-up">
	
	        <div class="section-title">
	          <h2>Skills</h2>
	          <p>It is a technical score that expresses tattoo skills in numbers.</p>
	        </div>
	
	        <div class="row skills-content">
	
	          <div class="col-lg-6">
	
	            <div class="progress">
	              <span class="skill">handling <i class="val">100%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">color <i class="val">100%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">line <i class="val">100%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	          </div>
	
	          <div class="col-lg-6">
	
	            <div class="progress">
	              <span class="skill">beauty <i class="val">180%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">cuty <i class="val">200%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">sexy <i class="val">150%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	          </div>
	
	        </div>
	
	      </div>
	    </section><!-- End Skills Section -->
	
	    <!-- ======= Facts Section ======= -->
	    <section id="facts" class="facts">
	      <div class="container" data-aos="fade-up">
	
	        <div class="section-title">
	          <h2>Facts</h2>
	          <p>It's nothing special, but it's a birthday present I made myself.</p>
	        </div>
	
	        <div class="row counters">
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="0116" data-purecounter-duration="1" class="purecounter"></span>
	            <p>I love you</p>
	          </div>
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="0824" data-purecounter-duration="1" class="purecounter"></span>
	            <p>so much</p>
	          </div>
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="0719" data-purecounter-duration="1" class="purecounter"></span>
	            <p>my princess</p>
	          </div>
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="200" data-purecounter-duration="1" class="purecounter"></span>
	            <p>and my world</p>
	          </div>
	
	        </div>
	
	      </div>
	    </section><!-- End Facts Section -->
	
	    <!-- ======= Testimonials Section ======= -->
	    <section id="testimonials" class="testimonials">
	      <div class="container" data-aos="fade-up">
	
	        <div class="section-title">
	          <h2>Story</h2>
	          <p>We met in July 2022 and until 2023, and we continue to love...</p>
	        </div>
	
	        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
	          <div class="swiper-wrapper">
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${pageContext.request.contextPath}/resources/img/hahaha (1).jpg" class="testimonial-img" alt="">
	                <h3>Loopy Orca</h3>
	                <h4>Cuty</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  My love who makes me laugh at the cafe.
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item -->
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${pageContext.request.contextPath}/resources/img/hahaha (2).jpg" class="testimonial-img" alt="">
	                <h3>Surprised Orca</h3>
	                <h4>Food fighter</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  My love who was surprised to see cold Mul-Hoi in Yeongjongdo Island.
	                  <i class="${pageContext.request.contextPath}/resources/img/hahaha (1).jpg"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item -->
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${pageContext.request.contextPath}/resources/img/hahaha (3).jpg" class="testimonial-img" alt="">
	                <h3>Sulky Orca</h3>
	                <h4>Sexy</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  My love staring at me in a sulky way
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item -->
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${pageContext.request.contextPath}/resources/img/hahaha (4).jpg" class="testimonial-img" alt="">
	                <h3>Focused Orca</h3>
	                <h4>Cool</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  My love posing for the best picture
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item -->
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${pageContext.request.contextPath}/resources/img/hahaha (5).jpg" class="testimonial-img" alt="">
	                <h3>Smilling Orca</h3>
	                <h4>Beauty</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  The world's prettiest love that gives me a pretty smile
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item -->
	
	          </div>
	          <div class="swiper-pagination"></div>
	        </div>
	
	      </div>
	    </section><!-- End Testimonials Section -->
	
	  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>