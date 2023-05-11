<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	<form action="aboutUpdate.ab" method="post" enctype="multipart/form-data">
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container-fluid d-flex justify-content-between align-items-center">

			<jsp:include page="../common/header.jsp" />

			<div class="header-social-links">
			<button type="submit" class="btn" style="padding: initial; width: 120px; height: 40px; ">수정완료</button>
			&nbsp;&nbsp;&nbsp;
			<a href="logout.me">Logout</a>		
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
						<textarea class="form-control" name="aboutIntroOne" id="" cols="90" rows="5" style="text-align: center;">${ a.aboutIntroOne }</textarea>
					</p>
				</div>

				<div class="row">
					<div class="col-lg-4">
						<img src="${ a.aboutProfileChangeImg }" class="img-fluid" alt="">
						<input type="file" class="form-control" name="upfile" style="width: 300px;">
					</div>
					<div class="col-lg-8 pt-4 pt-lg-0 content">
						<h3>Tattooist</h3>
						<p class="fst-italic">
							<textarea class="form-control" name="aboutTattooist" id="" cols="100" rows="5">${ a.aboutTattooist }</textarea>
						</p>
						<div class="row">
							<div class="col-lg-6">
								<ul>
									<li><i class="bi bi-rounded-right"></i> <strong>Birthday:</strong> <input type="text" name="aboutBirthday" class="form-control" value="${ a.aboutBirthday }"></li>
									<li><i class="bi bi-rounded-right"></i> <strong>Website:</strong> <input type="text" name="aboutWebsite" class="form-control" value="${ a.aboutWebsite }"></li>
									<li><i class="bi bi-rounded-right"></i> <strong>Phone:</strong> <input type="text" name="aboutPhone" class="form-control" value="${ a.aboutPhone }"></li>
									<li><i class="bi bi-rounded-right"></i> <strong>City:</strong> <input type="text" name="aboutCity" class="form-control" value="${ a.aboutCity }"></li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul>
									<li><i class="bi bi-rounded-right"></i> <strong>Age:</strong> <input type="text" name="aboutAge" class="form-control" value="${ a.aboutAge }"></li>
									<li><i class="bi bi-rounded-right"></i> <strong>Degree:</strong> <input type="text" name="aboutDegree" class="form-control" value="${ a.aboutDegree }"></li>
									<li><i class="bi bi-rounded-right"></i> <strong>Email:</strong> <input type="text" name="aboutEmail" class="form-control" value="${ a.aboutEmail }"></li>
									<li><i class="bi bi-rounded-right"></i> <strong>Freelance:</strong> <input type="text" name="aboutFreelance" class="form-control" value="${ a.aboutFreelance }"></li>
								</ul>
							</div>
						</div>
						<p>
							<textarea class="form-control" name="aboutIntroTwo" id="" cols="100" rows="7">${ a.aboutIntroTwo }</textarea>
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
						<textarea class="form-control" name="aboutSkills" id="" cols="80" rows="2" style="text-align: center;">${ a.aboutSkills }</textarea>
					</p>
				</div>

				<div class="row skills-content">

					<div class="col-lg-6">

					<div class="progress">
						<input type="text" name="aboutSkillsOne" class="form-control" value="${ a.aboutSkillsOne }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<input type="text" name="aboutSkillsOnePer" class="form-control" value="${ a.aboutSkillsOnePer }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"><i class="val"></i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<input type="text" class="form-control" name="aboutSkillsTwo" value="${ a.aboutSkillsTwo }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<input type="text" class="form-control" name="aboutSkillsTwoPer" value="${ a.aboutSkillsTwoPer }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<span class="skill"><i class="val"></i></span>
						<div class="progress-bar-wrap">
						<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<input type="text" class="form-control" name="aboutSkillsThree" value="${ a.aboutSkillsThree }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<input type="text" class="form-control" name="aboutSkillsThreePer" value="${ a.aboutSkillsThreePer }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"><i class="val"></i></span>
						<div class="progress-bar-wrap">
						<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					</div>

					<div class="col-lg-6">

					<div class="progress">
						<input type="text" class="form-control" name="aboutSkillsFour" value="${ a.aboutSkillsFour }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
						<input type="text" class="form-control" name="aboutSkillsFourPer" value="${ a.aboutSkillsFourPer }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"> <i class="val"></i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="progress">
						<input type="text" class="form-control" name="aboutSkillsFive" value="${ a.aboutSkillsFive }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<input type="text" class="form-control" name="aboutSkillsFivePer" value="${ a.aboutSkillsFivePer }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<span class="skill"> <i class="val"></i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<input type="text" class="form-control" name="aboutSkillsSix" placeholder="${ a.aboutSkillsSix }" value="${ a.aboutSkillsSix }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;">
						<input type="text" class="form-control" name="aboutSkillsSixPer" value="${ a.aboutSkillsSixPer }" style="padding: 0rem; padding-left: 0.2rem; text-align: center;"> 
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
						<textarea class="form-control" name="aboutFacts" id="" cols="90" rows="2" style="text-align: center;">${ a.aboutFacts }</textarea>
					</p>
				</div>

				<div class="row counters">

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsOne }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" name="aboutFactsOne" value="${ a.aboutFactsOne }" style="text-align: center;">
					<p><input type="text" class="form-control" name="aboutFactsOneText" value="${ a.aboutFactsOneText }" style="text-align: center;"></p>
					</div>

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsTwo }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" name="aboutFactsTwo" value="${ a.aboutFactsTwo }" style="text-align: center;">
					<p><input type="text" class="form-control" name="aboutFactsTwoText" value="${ a.aboutFactsTwoText }" style="text-align: center;"></p>
					</div>

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsThree }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" name="aboutFactsThree" value="${ a.aboutFactsThree }" style="text-align: center;">
					<p><input type="text" class="form-control" name="aboutFactsThreeText" value="${ a.aboutFactsThreeText }" style="text-align: center;"></p>
					</div>

					<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="${ a.aboutFactsFour }" data-purecounter-duration="1" class="purecounter"></span>
					<input type="text" class="form-control" name="aboutFactsFour" value="${ a.aboutFactsFour }" style="text-align: center;">
					<p><input type="text" class="form-control" name="aboutFactsFourText" value="${ a.aboutFactsFourText }" style="text-align: center;"></p>
					</div>

				</div>

			</div>
		</section><!-- End Facts Section -->
			
			<!-- ======= Testimonials Section ======= 
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
							<input type="file" class="form-control" name="file1" style="width: 300px; margin-left: 995px;">
							<h3><input type="text" name="aboutStOneText1" class="form-control" value="${ a.aboutStOneText1 }" style="text-align: center;"></h3>
							<h4><input type="text" name="aboutStOneText2" class="form-control" value="${ a.aboutStOneText2 }" style="text-align: center;"></h4>
							<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i>
							<textarea class="form-control" name="aboutStOneText3" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStOneText3 }</textarea>
							<i class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
						</div>
						</div><!-- End testimonial item 
			
						<div class="swiper-slide">
						<div class="testimonial-item">
							<img src="${pageContext.request.contextPath}/resources/img/hahaha (2).jpg" class="testimonial-img" alt="">
							<input type="file" class="form-control" name="file2" style="width: 300px; margin-left: 995px;">
							<h3><input type="text" name="aboutStTwoText1" class="form-control" value="${ a.aboutStTwoText1 }" style="text-align: center;"></h3>
							<h4><input type="text" name="aboutStTwoText2" class="form-control" value="${ a.aboutStTwoText2 }" style="text-align: center;"></h4>
							<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i>
							<textarea class="form-control" name="aboutStTwoText3" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStTwoText3 }</textarea>
							<i class="${pageContext.request.contextPath}/resources/img/hahaha (1).jpg"></i>
							</p>
						</div>
						</div><!-- End testimonial item 
			
						<div class="swiper-slide">
						<div class="testimonial-item">
							<img src="${pageContext.request.contextPath}/resources/img/hahaha (3).jpg" class="testimonial-img" alt="">
							<input type="file" class="form-control" name="file3" style="width: 300px; margin-left: 995px;">
							<h3><input type="text" name="aboutStThreeText1" class="form-control" value="${ a.aboutStThreeText1 }" style="text-align: center;"></h3>
							<h4><input type="text" name="aboutStThreeText2" class="form-control" value="${ a.aboutStThreeText2 }" style="text-align: center;"></h4>
							<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i>
							<textarea class="form-control" name="aboutStThreeText3" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStThreeText3 }</textarea>
							<i class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
						</div>
						</div><!-- End testimonial item 
			
						<div class="swiper-slide">
						<div class="testimonial-item">
							<img src="${pageContext.request.contextPath}/resources/img/hahaha (4).jpg" class="testimonial-img" alt="">
							<input type="file" class="form-control" name="file4" style="width: 300px; margin-left: 995px;">
							<h3><input type="text" name="aboutStFourText1" class="form-control" value="${ a.aboutStFourText1 }" style="text-align: center;"></h3>
							<h4><input type="text" name="aboutStFourText2" class="form-control" value="${ a.aboutStFourText2 }" style="text-align: center;"></h4>
							<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i>
							<textarea class="form-control" name="aboutStFourText3" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStFourText3 }</textarea>
							<i class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
						</div>
						</div><!-- End testimonial item 
			
						<div class="swiper-slide">
						<div class="testimonial-item">
							<img src="${pageContext.request.contextPath}/resources/img/hahaha (5).jpg" class="testimonial-img" alt="">
							<input type="file" class="form-control" name="file5" style="width: 300px; margin-left: 995px;">
							<h3><input type="text" name="aboutStFiveText1" class="form-control" value="${ a.aboutStFiveText1 }" style="text-align: center;"></h3>
							<h4><input type="text" name="aboutStFiveText2" class="form-control" value="${ a.aboutStFiveText2 }" style="text-align: center;"></h4>
							<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i>
							<textarea class="form-control" name="aboutStFiveText3" id="" cols="50" rows="1" style="text-align: center;">${ a.aboutStFiveText3 }</textarea>
							<i class="bx bxs-quote-alt-right quote-icon-right"></i>
							</p>
						</div>
						</div><!-- End testimonial item 
			
						</div>
						<div class="swiper-pagination"></div>
					</div>
			
				</div>
			</section> End Testimonials Section -->
		</main><!-- End #main -->
	</form>
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>