<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

      <jsp:include page="common/header.jsp" />
      
      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        &nbsp;
        <a href="logout.me">Logout</a>
        <c:if test="${ loginUser.memState eq '1' }">
        	<a href="mainUpdateForm.me">Update Page</a>
        </c:if>
      </div>

	
    </div>

  </header><!-- End Header -->

<!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container d-flex flex-column align-items-center" id="mainForm" data-aos="zoom-in" data-aos-delay="100">
      <h1  style="margin-bottom:10px; text-shadow:0px 0px 1px">${ mp.mainAdminName }</h1>
      <h2>${ mp.mainAdminIntro }</h2>
      <a href="about.ab" class="btn-about">About Me</a>
    </div>
  </section><!-- End Hero -->

  <jsp:include page="common/footer.jsp"/>

</body>
</html>