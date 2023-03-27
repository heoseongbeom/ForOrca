<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<style>
  :root {
	/* COLORS */
	--white: #e9e9e9;
	--gray: #333;
	--blue: #0367a6;
	--lightblue: #008997;

	/* RADII */
	--button-radius: 0.7rem;

	/* SIZES */
	--max-width: 758px;
	--max-height: 420px;

	font-size: 16px;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
		Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}

body {
	align-items: center;
	background-color: var(--white);
	background: url("${pageContext.request.contextPath}/resources/img/loginForm.jpg");
	background-attachment: fixed;
	background-position: center;
	/*background-repeat: no-repeat;*/
	/*background-size: cover;*/
	display: grid;
	width:100vw;
	position:relative; 
	height: 100vh;
	place-items: center;
}

.form__title {
	font-weight: 350;
	margin: 0;
	margin-bottom: 1.25rem;
}

.link {
	color: var(--gray);
	font-size: 0.9rem;
	margin: 1.5rem 0;
	text-decoration: none;
}

.container {
	background-color: var(--white);
	border-radius: var(--button-radius);
	box-shadow: 0 0.9rem 1.7rem rgba(0, 0, 0, 0.25),
		0 0.7rem 0.7rem rgba(0, 0, 0, 0.22);
	height: var(--max-height);
	max-width: var(--max-width);
	overflow: hidden;
	position: relative;
	width: 100%;
}

.container__form {
	height: 100%;
	position: absolute;
	top: 0;
	transition: all 0.6s ease-in-out;
}

.container--signin {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .container--signin {
	transform: translateX(100%);
}

.container--signup {
	left: 0;
	opacity: 0;
	width: 50%;
	z-index: 1;
}

.container.right-panel-active .container--signup {
	animation: show 0.6s;
	opacity: 1;
	transform: translateX(100%);
	z-index: 5;
}

.container__overlay {
	height: 100%;
	left: 50%;
	overflow: hidden;
	position: absolute;
	top: 0;
	transition: transform 0.6s ease-in-out;
	width: 50%;
	z-index: 100;
}

.container.right-panel-active .container__overlay {
	transform: translateX(-100%);
}

.overlay {
	background-color: var(--lightblue);
	background: url("${pageContext.request.contextPath}/resources/img/loginForm.jpg");
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
	left: -100%;
	position: relative;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
	width: 200%;
}

.container.right-panel-active .overlay {
	transform: translateX(50%);
}

.overlay__panel {
	align-items: center;
	display: flex;
	flex-direction: column;
	height: 100%;
	justify-content: center;
	position: absolute;
	text-align: center;
	top: 0;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
	width: 50%;
}

.overlay--left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay--left {
	transform: translateX(0);
}

.overlay--right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay--right {
	transform: translateX(20%);
}

.btn {
	background-color: #000000;
	background-image: linear-gradient(90deg, #3c454a 0%, #687576 74%);
	border-radius: 20px;
	border: 1px solid #606468;
	color: var(--white);
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

.form {
	background-color: var(--white);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 3rem;
	height: 100%;
	text-align: center;
}

.input {
	background-color: #fff;
	border: none;
	padding: 0.9rem 0.9rem;
	margin: 0.5rem 0;
	width: 100%;
}

@keyframes show {
	0%,
	49.99% {
		opacity: 0;
		z-index: 1;
	}

	50%,
	100% {
		opacity: 1;
		z-index: 5;
	}
}

.pwdInput1{
  display: none;
  color : green;
  font-size: 13px;
  align-self : baseline;
}

.pwdInput2{
  display : none;
  color : red;
  font-size: 13px;
  align-self: baseline;
}

.pwdInput3{
  display : none;
  color : red;
  font-size: 13px;
  align-self : baseline;
}

.pwdInput4{
  display : none;
  color : red;
  font-size: 13px;
  align-self : baseline;
}

.emailInput{
  display : none;
  color : red;
  font-size : 13px;
  align-self : baseline;
  
}

body.swal2-height-auto{
	height:940px!important;
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
		<c:remove var="alertMsg" scope="session" /> <!-- 일회성 메시지의 역할을 하기 위해 지워주기 -->
	</c:if>
  <div class="container ">
    <!-- find Email -->
    <div class="container__form container--signin">
      <form action="findEmail.me" class="form" id="form2" method="post">
        <h2 class="form__title">Find Email</h2>
        <input type="text" name="memName" placeholder="User" class="input" required/>
        <input type="text" name="memInstarId" placeholder="instargram ID" class="input" required/>
        <button type="submit" class="btn">Submit</button>
      </form>
    </div>
    <!-- find Password -->
    <div class="container__form container--signup">
      <form action="findPwd.me" class="form" id="form1" method="post">
        <h2 class="form__title">Find Password</h2>
        <input type="email" name="memEmail" id="userEmail" name="email"  placeholder="Email" class="input" style="height:5px" required/>
        <span class="emailInput">이메일 형식이 올바르지 않습니다.</span>
        <input type="text" name="memName" id="userName" placeholder="User" class="input" style="height:5px"  required/>
        <input type="text" name="memInstarId" id="instarId" placeholder="Instargram ID" class="input" style="height:5px" required/>
        <button type="submit" id="joinBtn" class="btn">Submit</button>
      </form>
    </div>
  
  
    <!-- Overlay -->
    <div class="container__overlay">
      <div class="overlay">
        <div class="overlay__panel overlay--left">
          <button class="btn" id="FindEmail">Find Email</button>
        </div>
        <div class="overlay__panel overlay--right">
          <button class="btn" id="FindPassword">Find Password</button>
        </div>
      </div>
    </div>
  </div>

<script language="javascript">
  var emailInput;

$("#email-input").on("change", function() {
  emailInput = $(this).val();

  if (validateEmail(emailInput)) {
    $(this).css({
      color: "white",
      background: "green",
      border: "1px solid green"
    });
  } else {
    $(this).css({
      color: "red",
      border: "1px solid red"
    });

    // alert("not a valid email address");
  }
});




</script>

<script>
const findEmailBtn = document.getElementById("FindEmail");
const findPwdBtn = document.getElementById("FindPassword");
const fistForm = document.getElementById("form1");
const secondForm = document.getElementById("form2");
const container = document.querySelector(".container");

findEmailBtn.addEventListener("click", () => {
	container.classList.remove("right-panel-active");
});

findPwdBtn.addEventListener("click", () => {
	container.classList.add("right-panel-active");
});


</script>


<script>
  $('#userEmail').on("propertychange change keyup paste input", function(){

    var email = $('#userEmail').val();
    var regex = new RegExp("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$");
    console.log(regex.test(email));
    if(regex.test(email) == false){
      $('.emailInput').css('display', 'block');
    }else{
      $('.emailInput').css('display', 'none');
    }
    
  });
</script>

</body>
</html>