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
		&nbsp;
        <c:if test="${ loginUser.memState eq '1' }">
        	<a href="portfolioAdd.po">Upload File</a>
        </c:if>
      </div>

    </div>

  </header><!-- End Header -->
	
	<main id="main">

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio" style="height: 80vh;">
			<div class="container" data-aos="fade-up">
	
				<div class="section-title">
				<h2>Portfolio</h2>
				</div>
		
				<div class="row" data-aos="fade-up" data-aos-delay="100">
					<div class="col-lg-12 d-flex justify-content-center">
						<ul id="portfolio-flters">
						<li data-filter="*" class="filter-active">All</li>
						<li data-filter="#animal">Animal</li>
						<li data-filter="#nature">Nature</li>
						<li data-filter="#etc">Etc</li>
						</ul>
					</div>
				</div>
				
				<br>

				<div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

					<c:choose>
						<c:when test="${ empty list }">
							<div class="" >
								<br><br><br><br><br>
								<h1 style="text-align-last: center;">Empty Photo</h1>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="p"  items="${ list }">
								<div class="col-lg-4 col-md-6 portfolio-item filter-card" id="${ p.portCategory }">
									<div class="portfolio-wrap">
										<input type="hidden" class="portNo" value="${p.portNo}">
										<img src="${ p.portChangePhoto }" class="img-fluid">
										<div class="portfolio-info">
											<h4>${ p.portText }</h4>
											<div class="portfolio-links">
												<a href="${ p.portChangePhoto }" data-gallery="portfolioGallery" class="portfolio-lightbox" title="${ p.portText }"><i class="bx bx-plus"></i></a>
												<c:if test="${ loginUser.memState eq '1' }">
													<a href="portfolioUpdateForm.po?no=${p.portNo}" title="Edit" class="updatePort"><i class="fas fa-pencil" style="font-size: smaller;"></i></a>&nbsp;&nbsp;
													<a onclick="deletePort();" title="Delete"><i class="fa-regular fa-trash-can" style="font-size: smaller;"></i></a>
												</c:if>
												<input type="hidden" class="deletePort" value="${p.portNo}">
												<script>
													function deletePort(){
														Swal.fire({
														text: "정말 삭제하시겠습니까?",
														allowOutsideClick: true,
														showConfirmButton: true,
														showCancelButton: true,
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
														}).then((result) => {
															if (result.isConfirmed) {
																location.href = 'portfolioDelete.po?no=' + $('.deletePort').val();
															}
														});
													}
												</script>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>    
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</section><!-- End Portfolio Section -->
	
	  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp" />

</body>
</html>