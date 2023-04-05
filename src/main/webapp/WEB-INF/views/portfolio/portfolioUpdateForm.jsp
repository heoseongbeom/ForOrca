<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicons -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

	<c:if test="${ not empty alertMsg }">
		<script>
             Swal.fire({
                 title: "${alertTitle}",
                 text: "${alertMsg}",
                 allowOutsideClick: false,
                 showConfirmButton: true,
                 showCancelButton: false,
                 closeOnConfirm: true,
                 closeOnCancel: true,
                 confirmButtonText: 'OK',
                 confirmButtonColor: 'slategray',
                 cancelButtonText: 'Cancel',
                 imageUrl: null,
                 imageSize: null,
                 timer: null,
                 customClass: '',
                 html: false,
                 animation: true,
                 allowEscapeKey: true,
                 inputType: 'text',
                 inputPlaceholder: '',
                 inputValue: '',
                 showLoaderOnConfirm: false
       		  });
			  
		</script>
		<c:remove var="alertTitle" scope="session" />
		<c:remove var="alertMsg" scope="session" /> <!-- 일회성 메시지의 역할을 하기 위해 지워주기 -->
	</c:if>

	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <h1 class="logo me-auto me-lg-0"><a href="main.me"><img src="${pageContext.request.contextPath}/resources/img/orca.jpg">orca</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a href="mainPage.me">Home</a></li>
          <li><a href="about.me">About</a></li>
          <li><a href="schedule.me">Schedule</a></li>
          <li><a href="finance.me">Finance</a></li>
          <li><a class="active" href="portfolio.po">Portfolio</a></li>
          <li><a href="contact.me">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
		<a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">Logout</a>
      </div>

    </div>

  </header><!-- End Header -->
	
	<main id="main">

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio" style="text-align-last: center;">
		  
			<h1>Upload Portfolio</h1>
			<br><br><br>
			<form action="portfolioInsert.po" method="post" enctype="multipart/form-data">
				<h4>Photo</h4><br>
				<img src="${p.portChangePhoto}" style="width:150px; height:auto;">
				<input type="hidden" name="portNo" value="${portNo}">
				<input type="hidden" name="portOriginPhoto" value="${p.portOriginPhoto}">
				<input type="hidden" name="portChangePhoto" value="${p.portChangePhoto}">
				<input type="file" name="upfile" class="input">
				<br><br><br><br>

				<h4>Photo Text</h4>
				<textarea name="portText" cols="80" rows="10" style="resize:none;">${p.portText}</textarea>
				<br><br><br><br>

				<h4>Category</h4>
				<select name="portCategory" id="portSelect" style="width: 100px;">
					<!-- <option value="">--Please choose an option--</option>
					<option value="animal">Animal</option>
					<option value="nature">Nature</option>
					<option value="etc">etc</option> -->
					<c:choose>
					<c:when test="${p.portCategory eq 'animal'}">
						<option value="animal" selected>Animal</option>
						<option value="nature">Nature</option>
						<option value="etc">etc</option>
					</c:when>
					<c:when test="${p.portCategory eq 'nature'}">
						<option value="animal">Animal</option>
						<option value="nature" selected>Nature</option>
						<option value="etc">etc</option>
					</c:when>
					<c:otherwise>
						<option value="animal">Animal</option>
						<option value="nature">Nature</option>
						<option value="etc" selected>etc</option>
					</c:otherwise>
				</c:choose>
				  </select>
				  <br><br><br>
				<button type="submit" class="btn" onclick="return editPort();" id="submitPort">Edit Complete</button>&nbsp;&nbsp;
				<button type="button" class="btn" onclick="cancel();" style="background-image: linear-gradient(90deg, #7b7e80 0%, #687576 74%);">Cancel</button>
			</form>
			

			<!-- Select Option 선택 안했을시 alert창 띄우기 -->
			<script>
				function editPort(){
					var selectedOption = $('#portSelect').val();
					console.log(selectedOption);
					console.log("진행중");
					if (selectedOption == "") {
						Swal.fire({
						text: "Please select an option.",
						allowOutsideClick: false,
						showConfirmButton: true,
						closeOnConfirm: true,
						confirmButtonText: 'OK',
						confirmButtonColor: 'slategray',
						animation: true,
						allowEscapeKey: true,
						inputType: 'text',
						showLoaderOnConfirm: true
						});
						console.log('완료');
					return false;
					}else{
						return true;
					}
				};
				</script>

				<!-- cancel 버튼 클릭시 portfolio.jsp로 이동 -->
				<script>
					function cancel(){
						location.href = 'portfolio.po';
					}
				</script>


		</section><!-- End Portfolio Section -->
	
	  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp" />

	<div class="container">
		<div class="copyright">
		  &copy; Copyright <strong><span>Kelly</span></strong>. All Rights Reserved
		</div>
		<div class="credits">
		  <!-- All the links in the footer should remain intact. -->
		  <!-- You can delete the links only if you purchased the pro version. -->
		  <!-- Licensing information: https://bootstrapmade.com/license/ -->
		  <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/kelly-free-bootstrap-cv-resume-html-template/ -->
		  Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	  </div>

</body>
</html>