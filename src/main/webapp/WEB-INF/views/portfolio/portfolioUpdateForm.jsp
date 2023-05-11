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
			<form action="portfolioUpdate.po" method="post" enctype="multipart/form-data">
				<h4>Photo</h4><br>
				<img src="${p.portChangePhoto}" style="width:150px; height:auto;">
				<input type="hidden" name="portNo" value="${p.portNo}">
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
				<br><br>
				<h4>Date</h4>
				<input type="date" name="portDate" id="portDate" value="${p.portDate}">
				<br><br><br>
				<button type="submit" class="btn" style="color:white">Edit Complete</button>&nbsp;&nbsp;
				<button type="button" class="btn" onclick="cancel();" style="color:white; background-image: linear-gradient(90deg, #7b7e80 0%, #687576 74%);">Cancel</button>
			</form>
			
		</section><!-- End Portfolio Section -->
	
	</main><!-- End #main -->
	
	<!-- cancel 버튼 클릭시 portfolio.jsp로 이동 -->
	<script>
		function cancel(){
			location.href = 'portfolio.po';
		}
	</script>
	
	<jsp:include page="../common/footer.jsp" />

</body>
</html>