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
        <button type="submit" class="btn" style="padding: initial; width: 120px; height: 40px; ">수정완료</button>
		&nbsp;&nbsp;&nbsp;
        <a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">logout</a>		
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
					<textarea class="form-control" name=""id="" cols="90" rows="5" style="text-align: center;">${ a.aboutIntroOne }</textarea>
				</p>
			</div>

			<div class="row">
				<div class="col-lg-4">
					<img src="${pageContext.request.contextPath}/resources/img/profile.jpg" class="img-fluid" alt="">
				</div>
				<div class="col-lg-8 pt-4 pt-lg-0 content">
					<h3>Tattooist</h3>
					<p class="fst-italic">
						<textarea class="form-control" name="" id="" cols="100" rows="5">${ a.aboutTattooist }</textarea>
					</p>
					<div class="row">
						<div class="col-lg-6">
							<ul>
								<li><i class="bi bi-rounded-right"></i> <strong>Birthday:</strong> <input type="text" class="form-control" value="${ a.aboutBirthday }"></li>
								<li><i class="bi bi-rounded-right"></i> <strong>Website:</strong> <input type="text" class="form-control" value="${ a.aboutWebsite }"></li>
								<li><i class="bi bi-rounded-right"></i> <strong>Phone:</strong> <input type="text" class="form-control" value="${ a.aboutPhone }"></li>
								<li><i class="bi bi-rounded-right"></i> <strong>City:</strong> <input type="text" class="form-control" value="${ a.aboutCity }"></li>
							</ul>
						</div>
						<div class="col-lg-6">
							<ul>
								<li><i class="bi bi-rounded-right"></i> <strong>Age:</strong> <input type="text" class="form-control" value="${ a.aboutAge }"></li>
								<li><i class="bi bi-rounded-right"></i> <strong>Degree:</strong> <input type="text" class="form-control" value="${ a.aboutDegree }"></li>
								<li><i class="bi bi-rounded-right"></i> <strong>Email:</strong> <input type="text" class="form-control" value="${ a.aboutEmail }"></li>
								<li><i class="bi bi-rounded-right"></i> <strong>Freelance:</strong> <input type="text" class="form-control" value="${ a.aboutFreelance }"></li>
							</ul>
						</div>
					</div>
					<p>
						<textarea class="form-control" name="" id="" cols="100" rows="7">${ a.aboutIntroTwo }</textarea>
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
					<p>
						<textarea class="form-control" name="" id="" cols="80" rows="2" style="text-align: center;">${ a.aboutSkills }</textarea>
					</p>
				</div>

				<div class="row skills-content">

					<div class="col-lg-6">

					<div class="progress">
						<input type="text" class="form-control" value="${ a.aboutSkillsOne }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<input type="text" class="form-control" value="${ a.aboutSkillsOnePer }%" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"><i class="val"></i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<input type="text" class="form-control" value="${ a.aboutSkillsTwo }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<input type="text" class="form-control" value="${ a.aboutSkillsTwoPer }%" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<span class="skill"><i class="val"></i></span>
						<div class="progress-bar-wrap">
						<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<input type="text" class="form-control" value="${ a.aboutSkillsThree }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<input type="text" class="form-control" value="${ a.aboutSkillsThreePer }%" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"><i class="val"></i></span>
						<div class="progress-bar-wrap">
						<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					</div>

					<div class="col-lg-6">

					<div class="progress">
						<input type="text" class="form-control" value="${ a.aboutSkillsFour }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<input type="text" class="form-control" value="${ a.aboutSkillsFourPer }%" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"> <i class="val"></i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="progress">
						<input type="text" class="form-control" value="${ a.aboutSkillsFive }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<input type="text" class="form-control" value="${ a.aboutSkillsFivePer }%" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"> <i class="val"></i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<input type="text" class="form-control" value="${ a.aboutSkillsSix }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<input type="text" class="form-control" value="${ a.aboutSkillsSixPer }%" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<span class="skill"><i class="val"></i></span>
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
					<p>
						<textarea class="form-control" name="" id="" cols="90" rows="2" style="text-align: center;">${ a.aboutFacts }</textarea>
					</p>
				</div>

				<div class="row counters">

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsOne }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" value="${ a.aboutFactsOne }" style="text-align: center;">
					<p><input type="text" class="form-control" value="${ a.aboutFactsOneText }" style="text-align: center;"></p>
					</div>

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsTwo }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" value="${ a.aboutFactsTwo }" style="text-align: center;">
					<p><input type="text" class="form-control" value="${ a.aboutFactsTwoText }" style="text-align: center;"></p>
					</div>

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsThree }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" value="${ a.aboutFactsThree }" style="text-align: center;">
					<p><input type="text" class="form-control" value="${ a.aboutFactsThreeText }" style="text-align: center;"></p>
					</div>

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsFour }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" value="${ a.aboutFactsFour }" style="text-align: center;">
					<p><input type="text" class="form-control" value="${ a.aboutFactsFourText }" style="text-align: center;"></p>
					</div>

				</div>

			</div>
		</section><!-- End Facts Section -->
		
		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials">
			<div class="container" data-aos="fade-up">
		
				<div class="section-title">
				<h2>Story</h2>
				<p><textarea class="form-control" name="" id="" cols="100" rows="2" style="text-align: center;">${ a.aboutStory }</textarea></p>
				</div>
		
				<div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
				<div class="swiper-wrapper">
		
					<div class="swiper-slide">
					<div class="testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/img/hahaha (1).jpg" class="testimonial-img" alt="">
						<h3><input type="text" class="form-control" value="${ a.aboutStOneText1 }" style="text-align: center;"></h3>
						<h4><input type="text" class="form-control" value="${ a.aboutStOneText2 }" style="text-align: center;"></h4>
						<p>
						<i class="bx bxs-quote-alt-left quote-icon-left"></i>
						<textarea class="form-control" name="" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStOneText3 }</textarea>
						<i class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
					</div>
					</div><!-- End testimonial item -->
		
					<div class="swiper-slide">
					<div class="testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/img/hahaha (2).jpg" class="testimonial-img" alt="">
						<h3><input type="text" class="form-control" value="${ a.aboutStTwoText1 }" style="text-align: center;"></h3>
						<h4><input type="text" class="form-control" value="${ a.aboutStTwoText2 }" style="text-align: center;"></h4>
						<p>
						<i class="bx bxs-quote-alt-left quote-icon-left"></i>
						<textarea class="form-control" name="" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStTwoText3 }</textarea>
						<i class="${pageContext.request.contextPath}/resources/img/hahaha (1).jpg"></i>
						</p>
					</div>
					</div><!-- End testimonial item -->
		
					<div class="swiper-slide">
					<div class="testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/img/hahaha (3).jpg" class="testimonial-img" alt="">
						<h3><input type="text" class="form-control" value="${ a.aboutStThreeText1 }" style="text-align: center;"></h3>
						<h4><input type="text" class="form-control" value="${ a.aboutStThreeText2 }" style="text-align: center;"></h4>
						<p>
						<i class="bx bxs-quote-alt-left quote-icon-left"></i>
						<textarea class="form-control" name="" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStThreeText3 }</textarea>
						<i class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
					</div>
					</div><!-- End testimonial item -->
		
					<div class="swiper-slide">
					<div class="testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/img/hahaha (4).jpg" class="testimonial-img" alt="">
						<h3><input type="text" class="form-control" value="${ a.aboutStFourText1 }" style="text-align: center;"></h3>
						<h4><input type="text" class="form-control" value="${ a.aboutStFourText2 }" style="text-align: center;"></h4>
						<p>
						<i class="bx bxs-quote-alt-left quote-icon-left"></i>
						<textarea class="form-control" name="" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStFourText3 }</textarea>
						<i class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
					</div>
					</div><!-- End testimonial item -->
		
					<div class="swiper-slide">
					<div class="testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/img/hahaha (5).jpg" class="testimonial-img" alt="">
						<h3><input type="text" class="form-control" value="${ a.aboutStFiveText1 }" style="text-align: center;"></h3>
						<h4><input type="text" class="form-control" value="${ a.aboutStFiveText2 }" style="text-align: center;"></h4>
						<p>
						<i class="bx bxs-quote-alt-left quote-icon-left"></i>
						<textarea class="form-control" name="" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStFiveText3 }</textarea>
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