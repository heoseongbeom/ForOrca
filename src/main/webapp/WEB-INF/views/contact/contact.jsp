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
          &nbsp;
          <a href="contactUpdateForm.co">Edit Contact</a>
        </c:if>
      </div>

    </div>

  </header><!-- End Header -->
	
	<main id="main">

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>This is the Royal Rose Tattoo Studio located in British Columbia, Vancouver, Canada, and there is the best-performing Orca!</p>
        </div>

        <div>
          <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17016.71716970707!2d-123.16436092259649!3d49.26367010879128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5486735f651ddf49%3A0xf71785423e85ca4b!2sRoyal%20Rose%20Tattoo%20Studio!5e0!3m2!1sko!2skr!4v1673624953937!5m2!1sko!2skr&output=svembed" frameborder="0" allowfullscreen></iframe> 
        </div>

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>${c.conLocation}</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>${c.conEmail}</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>${c.conPhone}</p>
              </div>

            </div>

          </div>
        </div>
      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>