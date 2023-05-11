<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

		<jsp:include page="../common/header.jsp" />

      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
		&nbsp;
		<a href="logout.me">Logout</a>
        <c:if test="${ loginUser.memState eq '1' }">
        	<a href="aboutUpdateForm.ab">Update Page</a>
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
	    </section>
	</main>
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>