<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
	#hero {
		width: 100%;
		height: 100vh;
		background: url(${mp.mainPhotoChange}) top right;
		background-size: cover;
	}
</style>
  <!-- Template Main CSS File -->
</head>
<body>
<form action="updateMain.me" enctype="multipart/form-data" method="post">
	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top" style="padding: 10px;">
    <div class="container-fluid d-flex justify-content-between align-items-center">

		<jsp:include page="common/header.jsp" />
      
         
		<div class="header-social-links" style="display: contents;">
			<input type="text" name="mainInstarAddress" class="form-control" style="width:400px;" value="${ mp.mainInstarAddress }">
			<button type="submit" class="btn" style="padding: initial; width: 120px; height: 40px; ">수정완료</button>
			<a href="logout.me" data-target="#logoutModal">logout</a>
		</div>

	
    </div>

  </header><!-- End Header -->

<!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container d-flex flex-column align-items-center" id="mainForm" data-aos="zoom-in" data-aos-delay="100">
      <h1  style="margin-bottom:10px; text-shadow:0px 0px 1px"><input type="text" name="mainAdminName" class="form-control" value="${ mp.mainAdminName }"></h1>
      <h2><input type="text" name="mainAdminIntro" value="${ mp.mainAdminIntro }" class="form-control" style="width:700px"></h2>
      <!--  <a href="about.me" class="btn-about">About Me</a>-->
      <br><br><br><br><br>
      <input type="file" class="form-control" name="upfile" style="width: 300px;">
    </div>
  </section><!-- End Hero -->

</form>
  <jsp:include page="common/footer.jsp"/>

</body>
</html>