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
  overflow-x: clip;
  overflow-y: clip;
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
	/*display: flex;*/
  margin: 10px 15px 0px -5px; /* 회원가입창 정중앙으로 조정*/
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


#confirmBtn:hover{
  background-color: lightgray;
}

#successEmail, #failEmail{
  display: none;
  font-size: 13px
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
    <!-- Sign In -->
    <div class="container__form container--signin">
      <form action="login.me" class="form" id="form2" method="post" style="margin: 0px 0px 0px 0px; display:flex;">
        <h2 class="form__title">Sign In</h2>
        <input type="email" name="memEmail" placeholder="Email" class="input" required/>
        <input type="password" name="memPwd" placeholder="Password" class="input" required/>
        <a href="findEmailPwdForm.me" class="link">Forgot your Email or Password?</a>
        <button type="submit" class="btn">Sign In</button>
      </form>
    </div>
    <!-- Sign Up -->
    <div class="container__form container--signup">
      <form action="signup.me" class="form" id="form1" method="post"  onsubmit="return submitCheck();">
        <h2 class="form__title">Sign Up</h2>
        <input type="text" name="memName" id="userName" placeholder="User" class="input" style="height:5px"  required/>
        <input type="email" name="memEmail" id="userEmail" placeholder="Email" class="input" style="height:5px; margin-left:-20px; width:220px;" required/>
        <input type="hidden" id="userEmailCo">
        <button onclick="confirmEmail();" type="button" id="confirmBtn" style="border-radius: 5px; background-color: white; margin-right:-50px; width: 50px; height: 30px; border: 0.5px solid whitesmoke;">확인</button>
        <span class="emailInput">이메일 형식이 올바르지 않습니다.</span>
        <span id="failEmail" style="color:red">입력해주세요.</span>
        <input type="password" name="memPwd" id="userPwd" placeholder="Password" class="input" style="height:5px" required/>
        <span class="pwdInput3">6자리 이상의 비밀번호를 입력해주세요.</span>
        <input type="password" name="memPwdCo" id="userPwdCo" placeholder="Confirm Password" class="input" style="height:5px" required/>
        <span class="pwdInput1">비밀번호가 일치합니다.</span>
        <span class="pwdInput2">비밀번호가 일치하지 않습니다.</span>
        <span class="pwdInput4">6자리 이상의 비밀번호를 입력해주세요.</span>
        <input type="text" name="memInstarId" id="instarId" placeholder="Instargram ID" class="input" style="height:5px" required/>
        <button type="submit" id="joinBtn" class="btn">Sign Up</button>
      </form>
    </div>
  
  
    <!-- Overlay -->
    <div class="container__overlay">
      <div class="overlay">
        <div class="overlay__panel overlay--left">
          <button class="btn" id="signIn">Sign In</button>
        </div>
        <div class="overlay__panel overlay--right">
          <button class="btn" id="signUp">Sign Up</button>
        </div>
      </div>
    </div>
  </div>

  <!-- 이메일 중복 확인용 ajax -->
  <script> 
    function confirmEmail(){
      $.ajax({
        url:"confirmEmail.me",
        type:"get",
        data:{
          email:$("#userEmail").val()
        },
        success:function(response){
          
          var email = response.value1;
          var result = response.value2;
          var input = $('#userEmailCo');
          if(result == 0){
            Swal.fire({
                 text: "사용 가능한 이메일입니다.",
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
            input.val(email);
            // $("button[class='swal2-confirm swal2-styled']").click(function(){
            //   $('#userEmail').attr('readonly', true);
            //   $('#confirmBtn').attr('readonly', true);
            // });

            //$('#userEmail').val(email);
          }else{
            Swal.fire({
                 text: "중복된 이메일입니다.",
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
          }
        },error:function(){
          console.log("ajax통신 실패");
          
        }
      })
    }
   
  </script>
  

<script>
  
  // form1의 submit여부 function
  function submitCheck(){
    var userPwd = $('#userPwd').val(); // 입력한 비밀번호 value
    var userPwdCo = $('#userPwdCo').val(); // 입력한 비밀번호 확인용 value
    var email1 = $('#userEmail').val();
    var email2 = $('#userEmailCo').val();
    
    if(userPwd.length < 6){
      Swal.fire({
           text: "비밀번호를 6자리 이상 입력해주십시오.",
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
    }else if(userPwd != userPwdCo || userPwdCo.length < 6 ){
      Swal.fire({
           text: "비밀번호가 일치하지 않습니다.",
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

  }else if(email1 != email2){
    Swal.fire({
           text: "이메일 중복 확인을 해주십시오.",
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
  }else if(email2 == null){
    Swal.fire({
           title: "중복된 이메일",
           text: "다른 이메일을 입력해 주십시오.",
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
}
</script>

<!-- 로그인 화면 movement js -->
<script>
const signInBtn = document.getElementById("signIn");
const signUpBtn = document.getElementById("signUp");
const fistForm = document.getElementById("form1");
const secondForm = document.getElementById("form2");
const container = document.querySelector(".container");

signInBtn.addEventListener("click", () => {
	container.classList.remove("right-panel-active");
});

signUpBtn.addEventListener("click", () => {
	container.classList.add("right-panel-active");
});
</script>


<!-- password 6자리 이상 검사 js -->
<script>
  $('#userPwd').on("propertychange change keyup paste input", function(){

    var pwd = $('#userPwd').val();
    var pwdDo = $('#userPwdCo').val();

    if(pwd.length < 6){
      $('.pwdInput1').css('display', 'none');
      $('.pwdInput2').css('display', 'none');
      $('.pwdInput3').css('display', 'block');
    }else if(pwd != pwdDo){
      $('.pwdInput1').css('display','none');
      $('.pwdInput2').css('display','block');
      $('.pwdInput3').css('display', 'none');
    }else{
      $('.pwdInput1').css('display', 'block');
      $('.pwdInput2').css('display', 'none');
      $('.pwdInput3').css('display', 'none');
    }
  });

  $('#userPwdCo').on("propertychange change keyup paste input", function(){
 
    var pwd = $('#userPwd').val();
    var pwdDo = $('#userPwdCo').val();

    if(pwdDo.length < 6){
      $('.pwdInput1').css('display','none');
      $('.pwdInput2').css('display','none');
      $('.pwdInput4').css('display', 'block');
    }else if(pwd == pwdDo){
      $('.pwdInput1').css('display','block');
      $('.pwdInput2').css('display','none');
      $('.pwdInput4').css('display', 'none');
    }else{
      $('.pwdInput1').css('display','none');
      $('.pwdInput2').css('display','block');
      $('.pwdInput4').css('display', 'none');
    }
  });

</script>


<!-- email 정규식 검사 자바 스크립-->
<script>
  $('#userEmail').on("propertychange change keyup paste input", function(){

    var email = $('#userEmail').val();
    var regex = new RegExp("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$");
    
    if(regex.test(email) == false){
      $('.emailInput').css('display', 'block');
    }else{
      $('.emailInput').css('display', 'none');
    }
    
  });
</script>

</body>
</html>