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
          <li><a class="active" href="about.ab">About</a></li>
          <li><a href="schedule.sc">Schedule</a></li>
          <li><a href="finance.me">Finance</a></li>
          <li><a href="portfolio.po">Portfolio</a></li>
          <li><a href="contact.co">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
		<a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">Logout</a>
        <c:if test="${ loginUser.memState eq '1' }">
        	<a href="aboutUpdateForm.ab" data-toggle="modal">Update Page</a>
        </c:if>
      </div>

    </div>

  </header><!-- End Header -->


	<main id="main">
	
	    <!-- ======= About Section ======= -->
	    <section id="about" class="about">
	      <div class="container" data-aos="fade-up">
	
	        <div class="section-title">
	          <h2>About</h2>
	          <p>
	          	${ a.aboutIntroOne }
			  </p>
	        </div>
	
	        <div class="row">
	          <div class="col-lg-4">
	            <img src="${ a.aboutProfileChangeImg }" class="img-fluid" alt="">
	          </div>
	          <div class="col-lg-8 pt-4 pt-lg-0 content">
	            <h3>Tattooist</h3>
	            <p class="fst-italic">
					${ a.aboutTattooist }
	            </p>
	            <div class="row">
	              <div class="col-lg-6">
	                <ul>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Birthday:</strong> ${ a.aboutBirthday }</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Website:</strong> ${ a.aboutWebsite }</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Phone:</strong> ${ a.aboutPhone }</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>City:</strong> ${ a.aboutCity }</li>
	                </ul>
	              </div>
	              <div class="col-lg-6">
	                <ul>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Age:</strong> ${ a.aboutAge }</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Degree:</strong> ${ a.aboutDegree }</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>PhEmailone:</strong> ${ a.aboutEmail }</li>
	                  <li><i class="bi bi-rounded-right"></i> <strong>Freelance:</strong> ${ a.aboutFreelance }</li>
	                </ul>
	              </div>
	            </div>
	            <p>
					${ a.aboutIntroTwo }
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
	          <p>${ a.aboutSkills }</p>
	        </div>
	
	        <div class="row skills-content">
	
	          <div class="col-lg-6">
	
	            <div class="progress">
	              <span class="skill">${ a.aboutSkillsOne } <i class="val">${ a.aboutSkillsOnePer }%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="${ a.aboutSkillsOnePer }" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">${ a.aboutSkillsTwo } <i class="val">${ a.aboutSkillsTwoPer }%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="${ a.aboutSkillsTwoPer }" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">${ a.aboutSkillsThree } <i class="val">${ a.aboutSkillsThreePer }%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="${ a.aboutSkillsThreePer }" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	          </div>
	
	          <div class="col-lg-6">
	
	            <div class="progress">
	              <span class="skill">${ a.aboutSkillsFour } <i class="val">${ a.aboutSkillsFourPer }%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="${ a.aboutSkillsFourPer }" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">${ a.aboutSkillsFive } <i class="val">${ a.aboutSkillsFivePer }%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="${ a.aboutSkillsFivePer }" aria-valuemin="0" aria-valuemax="100"></div>
	              </div>
	            </div>
	
	            <div class="progress">
	              <span class="skill">${ a.aboutSkillsSix } <i class="val">${ a.aboutSkillsSixPer }%</i></span>
	              <div class="progress-bar-wrap">
	                <div class="progress-bar" role="progressbar" aria-valuenow="${ a.aboutSkillsSixPer }" aria-valuemin="0" aria-valuemax="100"></div>
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
	          <p>${ a.aboutFacts }</p>
	        </div>
	
	        <div class="row counters">
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsOne }" data-purecounter-duration="1" class="purecounter"></span>
	            <p>${ a.aboutFactsOneText }</p>
	          </div>
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsTwo }" data-purecounter-duration="1" class="purecounter"></span>
	            <p>${ a.aboutFactsTwoText }</p>
	          </div>
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsThree }" data-purecounter-duration="1" class="purecounter"></span>
	            <p>${ a.aboutFactsThreeText }</p>
	          </div>
	
	          <div class="col-lg-3 col-6 text-center">
	            <span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsFour }" data-purecounter-duration="1" class="purecounter"></span>
	            <p>${ a.aboutFactsFourText }</p>
	          </div>
	
	        </div>
	
	      </div>
	    </section><!-- End Facts Section -->
	
	    <!-- ======= Testimonials Section ======= -->
	    <!--  
	    <section id="testimonials" class="testimonials">
	      <div class="container" data-aos="fade-up">
	
	        <div class="section-title">
	          <h2>Story</h2>
	          <p>${ a.aboutStory }</p>
	        </div>
	
	        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
	          <div class="swiper-wrapper">
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${ a.aboutStoryChangeImg1 }" class="testimonial-img" alt="">
	                <h3>${ a.aboutStOneText1 }</h3>
	                <h4>${ a.aboutStOneText2 }</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  ${ a.aboutStOneText3 }	
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item 
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${ a.aboutStoryChangeImg2 }" class="testimonial-img" alt="">
	                <h3>${ a.aboutStTwoText1 }</h3>
	                <h4>${ a.aboutStTwoText2 }</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  ${ a.aboutStTwoText3 }
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item 
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${ a.aboutStoryChangeImg3 }" class="testimonial-img" alt="">
	                <h3>${ a.aboutStThreeText1 }</h3>
	                <h4>${ a.aboutStThreeText2 }</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  ${ a.aboutStThreeText3 }
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item 
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${ a.aboutStoryChangeImg4 }" class="testimonial-img" alt="">
	                <h3>${ a.aboutStFourText1 }</h3>
	                <h4>${ a.aboutStFourText2 }</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  ${ a.aboutStFourText3 }
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item 
	
	            <div class="swiper-slide">
	              <div class="testimonial-item">
	                <img src="${ a.aboutStoryChangeImg5 }" class="testimonial-img" alt="">
	                <h3>${ a.aboutStFiveText1 }</h3>
	                <h4>${ a.aboutStFiveText2 }</h4>
	                <p>
	                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
	                  ${ a.aboutStFiveText3 }
	                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
	                </p>
	              </div>
	            </div><!-- End testimonial item 
	
	          </div>
	          <div class="swiper-pagination"></div>
	        </div>
	
	      </div>
	    </section> 
	     End Testimonials Section -->
	
	  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>