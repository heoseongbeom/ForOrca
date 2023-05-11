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

	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <jsp:include page="../common/header.jsp" />

      <div class="header-social-links" style="margin-left:100px;">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        &nbsp;
        <a href="logout.me">Logout</a>
      </div>

    </div>

  </header><!-- End Header -->
	
	<main id="main">

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <form action="contactUpdate.co">
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
              <div class="info" style="width: 200%;">
                <div class="address">
                  <i class="bi bi-geo-alt"></i>
                  <h4>Location:</h4>
                  <input type="text" name="conLocation" value="${c.conLocation}" class="input" style="width:500px;" required>
                </div>

                <div class="email">
                  <i class="bi bi-envelope"></i>
                  <h4>Email:</h4>
                  <input type="text" name="conEmail" value="${c.conEmail}" class="input" style="width:500px;" required>
                </div>

                <div class="phone">
                  <i class="bi bi-phone"></i>
                  <h4>Call:</h4>
                  <input type="text" name="conPhone" value="${c.conPhone}" class="input" style="width:500px;" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required placeholder="Contain  '-' " required>
                </div>
              </div>
            </div>
          </div>
          <br><br>
          <div style="text-align-last: center;">
            <button type="submit" class="btn" style="color:white">Edit Complete</button>&nbsp;&nbsp;
            <button type="button" class="btn" onclick="cancel();" style="color:white; background-image: linear-gradient(90deg, #7b7e80 0%, #687576 74%);">Cancel</button>
          </div>
        </div>

      </form>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

	<!-- cancel 버튼 클릭시 contact.jsp로 이동 -->
  <script>
    function cancel(){
      location.href = 'contact.co';
    }
  </script>
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>