<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicons -->
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
<script src='https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.min.js'></script>

<link rel="stylesheet" href="https:cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css">
	
 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css">
<script sre="https://api.exchangerate-api.com/v4/latest/"></script>

<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<script>

if (document.location.search.match(/type=embed/gi)) {
  window.parent.postMessage("resize", "*");
}

</script>

<style>

	@import url('https://fonts.googleapis.com/css?family=Muli&display=swap');

* {
	box-sizing: border-box;
}

body {
	background-image: linear-gradient(to bottom, #fff 0%, #fff 50%, #ecf0f1 50%, #f1f2f6 100%);
	font-family: 'Muli', sans-serif;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.currency {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.currency select {
	background: transparent;
    background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%20000002%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E');
    background-repeat: no-repeat, repeat;
    background-position: right .2em top 50%, 0 0;
    background-size: .50em auto, 100%;
	border: 0;
	padding-right: 20px;
	font-size: 22px;
    -moz-appearance: none;
    -webkit-appearance: none;
    appearance: none;
}

.currency input {
	border: 0;
	background: transparent;
	font-size: 22px;
	text-align: right;
}

.middle {
	color: rgb(0, 117, 235);
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.middle button {
	background-color: #fff;
	border: 2px solid #ecf0f1;
	border-radius: 50%;
	cursor: pointer;
	color: rgb(0, 117, 235);
	font-size: 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 30px;
	width: 30px;
	transform: rotate(90deg);
}

.middle button:active {
	transform: rotate(90deg) scale(0.9);
}

.middle .rate {
	background-color: #fff;
	border: 2px solid #ecf0f1;
	border-radius: 50px;
	font-size: 14px;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 30px;
	padding: 0 10px;
	margin: 30px 15px 30px 25px;
}

select:focus, input:focus, button:focus {
	outline: 0;
}


/* SOCIAL PANEL CSS */
.social-panel-container {
	position: fixed;
	right: 0;
	bottom: 80px;
	transform: translateX(100%);
	transition: transform 0.4s ease-in-out;
}

.social-panel-container.visible {
	transform: translateX(-10px);
}

.social-panel {	
	background-color: #fff;
	border-radius: 16px;
	box-shadow: 0 16px 31px -17px rgba(0,31,97,0.6);
	border: 5px solid #001F61;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-family: 'Muli';
	position: relative;
	height: 169px;	
	width: 370px;
	max-width: calc(100% - 10px);
}

.social-panel button.close-btn {
	border: 0;
	color: #97A5CE;
	cursor: pointer;
	font-size: 20px;
	position: absolute;
	top: 5px;
	right: 5px;
}

.social-panel button.close-btn:focus {
	outline: none;
}

.social-panel p {
	background-color: #001F61;
	border-radius: 0 0 10px 10px;
	color: #fff;
	font-size: 14px;
	line-height: 18px;
	padding: 2px 17px 6px;
	position: absolute;
	top: 0;
	left: 50%;
	margin: 0;
	transform: translateX(-50%);
	text-align: center;
	width: 235px;
}

.social-panel p i {
	margin: 0 5px;
}

.social-panel p a {
	color: #FF7500;
	text-decoration: none;
}

.social-panel h4 {
	margin: 20px 0;
	color: #97A5CE;	
	font-family: 'Muli';	
	font-size: 14px;	
	line-height: 18px;
	text-transform: uppercase;
}

.social-panel ul {
	display: flex;
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.social-panel ul li {
	margin: 0 10px;
}

.social-panel ul li a {
	border: 1px solid #DCE1F2;
	border-radius: 50%;
	color: #001F61;
	font-size: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 50px;
	width: 50px;
	text-decoration: none;
}

.social-panel ul li a:hover {
	border-color: #FF6A00;
	box-shadow: 0 9px 12px -9px #FF6A00;
}

.floating-btn {
	border-radius: 26.5px;
	background-color: #001F61;
	border: 1px solid #001F61;
	box-shadow: 0 16px 22px -17px #03153B;
	color: #fff;
	cursor: pointer;
	font-size: 16px;
	line-height: 20px;
	padding: 12px 20px;
	position: fixed;
	bottom: 20px;
	right: 20px;
	z-index: 999;
}

.floating-btn:hover {
	background-color: #ffffff;
	color: #001F61;
}

.floating-btn:focus {
	outline: none;
}

.floating-text {
	background-color: #001F61;
	border-radius: 10px 10px 0 0;
	color: #fff;
	font-family: 'Muli';
	padding: 7px 15px;
	position: fixed;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	text-align: center;
	z-index: 998;
}

.floating-text a {
	color: #FF7500;
	text-decoration: none;
}

@media screen and (max-width: 480px) {

	.social-panel-container.visible {
		transform: translateX(0px);
	}
	
	.floating-btn {
		right: 10px;
	}
}

</style>
</head>
<body>

	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <h1 class="logo me-auto me-lg-0"><a href="main.me"><img src="${pageContext.request.contextPath}/resources/img/orca.jpg">orca</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a href="mainPage.me">Home</a></li>
          <li><a href="about.ab">About</a></li>
          <li><a href="schedule.me">Schedule</a></li>
          <li><a class="active" href="finance.me">Finance</a></li>
          <li><a href="portfolio.po">Portfolio</a></li>
          <li><a href="contact.co">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>

    </div>

  </header><!-- End Header -->
	
	<!-- API used https://www.exchangerate-api.com/ -->
<div class="container">
	<div class="currency">
		<select id="from_currency">
			<option value="AED">AED</option>
			<option value="ARS">ARS</option>
			<option value="AUD">AUD</option>
			<option value="BGN">BGN</option>
			<option value="BRL">BRL</option>
			<option value="BSD">BSD</option>
			<option value="CAD">CAD</option>
			<option value="CHF">CHF</option>
			<option value="CLP">CLP</option>
			<option value="CNY">CNY</option>
			<option value="COP">COP</option>
			<option value="CZK">CZK</option>
			<option value="DKK">DKK</option>
			<option value="DOP">DOP</option>
			<option value="EGP">EGP</option>
			<option value="EUR" selected>EUR</option>
			<option value="FJD">FJD</option>
			<option value="GBP">GBP</option>
			<option value="GTQ">GTQ</option>
			<option value="HKD">HKD</option>
			<option value="HRK">HRK</option>
			<option value="HUF">HUF</option>
			<option value="IDR">IDR</option>
			<option value="ILS">ILS</option>
			<option value="INR">INR</option>
			<option value="ISK">ISK</option>
			<option value="JPY">JPY</option>
			<option value="KRW">KRW</option>
			<option value="KZT">KZT</option>
			<option value="MXN">MXN</option>
			<option value="MYR">MYR</option>
			<option value="NOK">NOK</option>
			<option value="NZD">NZD</option>
			<option value="PAB">PAB</option>
			<option value="PEN">PEN</option>
			<option value="PHP">PHP</option>
			<option value="PKR">PKR</option>
			<option value="PLN">PLN</option>
			<option value="PYG">PYG</option>
			<option value="RON">RON</option>
			<option value="RUB">RUB</option>
			<option value="SAR">SAR</option>
			<option value="SEK">SEK</option>
			<option value="SGD">SGD</option>
			<option value="THB">THB</option>
			<option value="TRY">TRY</option>
			<option value="TWD">TWD</option>
			<option value="UAH">UAH</option>
			<option value="USD">USD</option>
			<option value="UYU">UYU</option>
			<option value="VND">VND</option>
			<option value="ZAR">ZAR</option>
		</select>
		<input type="number" id="from_ammount" placeholder="0" value=1 />
	</div>
	<div class="middle">
		<button id="exchange">
			<i class="fas fa-exchange-alt"></i>
		</button>
		<div class="rate" id="rate"></div>
	</div>
	<div class="currency">
		<select id="to_currency"><option value="AED">AED</option>
			<option value="ARS">ARS</option>
			<option value="AUD">AUD</option>
			<option value="BGN">BGN</option>
			<option value="BRL">BRL</option>
			<option value="BSD">BSD</option>
			<option value="CAD">CAD</option>
			<option value="CHF">CHF</option>
			<option value="CLP">CLP</option>
			<option value="CNY">CNY</option>
			<option value="COP">COP</option>
			<option value="CZK">CZK</option>
			<option value="DKK">DKK</option>
			<option value="DOP">DOP</option>
			<option value="EGP">EGP</option>
			<option value="EUR">EUR</option>
			<option value="FJD">FJD</option>
			<option value="GBP">GBP</option>
			<option value="GTQ">GTQ</option>
			<option value="HKD">HKD</option>
			<option value="HRK">HRK</option>
			<option value="HUF">HUF</option>
			<option value="IDR">IDR</option>
			<option value="ILS">ILS</option>
			<option value="INR">INR</option>
			<option value="ISK">ISK</option>
			<option value="JPY">JPY</option>
			<option value="KRW">KRW</option>
			<option value="KZT">KZT</option>
			<option value="MXN">MXN</option>
			<option value="MYR">MYR</option>
			<option value="NOK">NOK</option>
			<option value="NZD">NZD</option>
			<option value="PAB">PAB</option>
			<option value="PEN">PEN</option>
			<option value="PHP">PHP</option>
			<option value="PKR">PKR</option>
			<option value="PLN">PLN</option>
			<option value="PYG">PYG</option>
			<option value="RON">RON</option>
			<option value="RUB">RUB</option>
			<option value="SAR">SAR</option>
			<option value="SEK">SEK</option>
			<option value="SGD">SGD</option>
			<option value="THB">THB</option>
			<option value="TRY">TRY</option>
			<option value="TWD">TWD</option>
			<option value="UAH">UAH</option>
			<option value="USD" selected>USD</option>
			<option value="UYU">UYU</option>
			<option value="VND">VND</option>
			<option value="ZAR">ZAR</option>
		</select>
		<input type="number" id="to_ammount" placeholder="0" />
	</div>
</div>


<button class="floating-btn">
	Get in Touch
</button>

<div class="floating-text">
	Part of <a href="https://florin-pop.com/blog/2019/09/100-days-100-projects" target="_blank">#100Days100Projects</a>
</div>


<script>

const from_currencyEl = document.getElementById('from_currency');
const from_ammountEl = document.getElementById('from_ammount');
const to_currencyEl = document.getElementById('to_currency');
const to_ammountEl = document.getElementById('to_ammount');
const rateEl = document.getElementById('rate');
const exchange = document.getElementById('exchange');

from_currencyEl.addEventListener('change', calculate);
from_ammountEl.addEventListener('input', calculate);
to_currencyEl.addEventListener('change', calculate);
to_ammountEl.addEventListener('input', calculate);

exchange.addEventListener('click', () => {
	const temp = from_currencyEl.value;
	from_currencyEl.value = to_currencyEl.value;
	to_currencyEl.value = temp;
	calculate();
});

function calculate() {
	const from_currency = from_currencyEl.value;
	const to_currency = to_currencyEl.value;
	
	fetch(`https://api.exchangerate-api.com/v4/latest/${from_currency}`)
		.then(res => res.json())
		.then(res => {
		const rate = res.rates[to_currency];
		rateEl.innerText = `1 ${from_currency} = ${rate} ${to_currency}`;
		to_ammountEl.value = (from_ammountEl.value * rate).toFixed(2);
	})
}

calculate();



</script>
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>