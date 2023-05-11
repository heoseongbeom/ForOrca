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
			<form action="portfolioInsert.po" method="post" enctype="multipart/form-data">
				<h4>Photo</h4>
				<input type="file" name="upfile" class="input" id="photo">
				<br><br><br>

				<h4>Photo Text</h4>
				<textarea name="portText" id="" cols="80" rows="10" style="resize:none;"></textarea>
				<br><br><br>

				<h4>Category</h4>
				<select name="portCategory" id="portSelect">
					<option value="">--Please choose an option--</option>
					<option value="animal">Animal</option>
					<option value="nature">Nature</option>
					<option value="etc">etc</option>
				</select>
				<br><br>
				<h4>Date</h4>
				<input type="date" name="portDate" value="">
				  <br><br><br>
				<button type="submit" class="btn" onclick="return port();" id="submitPort" style="color:white">Upload</button>
			</form>
			

			<!-- Select Option 선택 안했을시 alert창 띄우기 -->
			<script>

				$(document).ready(function() {
				var today = new Date().toISOString().substr(0, 10);
				$('input[type="date"]').val(today);
				});

				function port(){

					var selectedUpfile = $('#photo').val();
					var selectedOption = $('#portSelect').val();

					if (selectedUpfile == "") {
						Swal.fire({
						text: "Please select an file.",
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
					return false;
					}else{
						return true;
					}
					
						
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
					return false;
					}else{
						return true;
					}
				};

			</script>


		</section><!-- End Portfolio Section -->
	
	  </main><!-- End #main -->
	
	<jsp:include page="../common/footer.jsp" />

</body>
</html>