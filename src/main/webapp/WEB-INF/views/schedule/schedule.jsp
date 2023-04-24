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
    
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700&display=swap" rel="stylesheet"> 
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet"> 


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/js/datepicker.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/js/i18n/datepicker.en.js"></script>

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome-font-awesome.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/css/datepicker.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/schedule.css">



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
          <li><a href="about.ab">About</a></li>
          <li><a class="active" href="schedule.sc">Schedule</a></li>
          <li><a href="finance.me">Finance</a></li>
          <li><a href="portfolio.po">Portfolio</a></li>
          <li><a href="contact.co">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
		    <a href="logout.me" class="" data-toggle="modal" data-target="#logoutModal">Logout</a>
      </div>

    </div>

  </header><!-- End Header -->

   <div class="p-5">
  <h2 class="mb-4">Full Calendar</h2>
  <div class="card">
    <div class="card-body p-0">
      <div id="calendar"></div>
    </div>
  </div>
</div>

  <!-- calendar modal -->
  <div id="modal-view-event" class="modal modal-top fade calendar-modal">
    <div class="modal-dialog modal-dialog-centered">
      <form action="" id="detailForm" method="post">
        <div class="modal-content">
          <div class="modal-body">
            <h3 class="modal-title"><input type="text" class="event-title" name="scheTitle" style="margin-bottom: 5px; border:1px solid lightgray;"></h3>
            <input type="text" class="event-body1" name="scheDescription" style="margin-bottom: 5px; border:1px solid lightgray;">
            <select class="form-control" name="scheStatus" style="width:100px; height:35px; margin-bottom: 5px; border:1px solid lightgray;">
              <option value="close">Close</option>
              <option value="available">Available</option>
            </select>
            <input type="text" class="event-body3" name="scheStatusExp" style=" border:1px solid lightgray;">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="updateBtn">Update</button>
            <button type="button" class="btn btn-primary" id="deleteBtn">Delete</button>
            <button type="button" class="btn btn-primary" id="closeBtn1">Close</button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <script>
    // 수정 버튼 클릭시 scheEdit.sc로 이동
    $('#editBtn').on('click', function(){
      $('#detailForm').attr('action', 'scheEdit.sc');
      $('#detailForm').submit();
    });
    $('#editBtn').on('click', function(){
      $('#detailForm').attr('action', 'scheEdit.sc');
      $('#detailForm').submit();
    });

    // 삭제 버튼 클릭시 scheDelete.sc로 이동
    $('#deleteBtn').on('click', function(){
      $('#detailForm').attr('action', 'scheDelete.sc');
      $('#detailForm').submit();
    });
  </script>

<!-- 일정 추가 modal -->
  <div id="modal-view-event-add" class="modal modal-top fade calendar-modal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <form id="add-event" action="schduleInsert.sc">
          <div class="modal-body">
          <h4>Add Event Detail</h4>        
            <div class="form-group">
              <label>Event name</label>
              <input type="text" class="form-control" name="scheTitle">
            </div>
            <div class="form-group">
              <label>Event Date</label>
              <input type="text" class="datetimepicker form-control" id="scheDate" name="scheDate" style="background: white;" readonly>
              <input type="hidden" name="scheDateStart" id="scheDateStart">
              <input type="hidden" name="scheDateEnd" id="scheDateEnd">
            </div>        
            <div class="form-group">
              <label>Event Description</label>
              <textarea class="form-control" name="scheDescription"></textarea>
            </div>
            <div class="form-group">
              <label>Event Color</label>
              <select class="form-control" name="scheColor">
                <option value="default">Default</option>
                <option value="blue">Blue</option>
                <option value="lightgreen">Lightgreen</option>
                <option value="pinkred">Pinkred</option>
                <option value="-deepskyblue">Deepskyblue</option>
              </select>
            </div>
            <div class="form-group">
              <label>Event Status</label>
              <select class="form-control" name="scheStatus">
                <option value="close">Close</option>
                <option value="available">Available</option>
              </select>
            </div>
            <div class="form-group">
              <label>Event Status Exp</label>
              <input type='text' class="form-control" name="scheStatusExp">
            </div>        
        </div>
          <div class="modal-footer">
          <button type="submit" class="btn btn-primary" >Save</button>
          <button type="button" class="btn btn-primary" id="closeBtn2">Close</button>        
        </div>
        </form>
      </div>
    </div>
  </div>

  <!-- 일정 수정 modal -->
  <div id="modal-view-event-edit" class="modal modal-top fade calendar-modal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <form id="edit-event" action="scheduleUpdate.sc">
          <div class="modal-body">
          <h4>Edit Event Detail</h4>        
            <div class="form-group">
              <label>Event name</label>
              <input type="text" class="form-control" name="scheName" id="scheEditTitle">
              <input type="hidden" name="scheNo" class="scheduleNo" id="scheEditNo">
            </div>
            <div class="form-group">
              <label>Event Date</label>
              <input type="text" class="datetimepicker form-control" id="scheEditDate" name="scheDate">
              <input type="hidden" name="scheDateStart" id="scheEditDateStart">
              <input type="hidden" name="scheDateEnd" id="scheEditDateEnd">
            </div>        
            <div class="form-group">
              <label>Event Description</label>
              <textarea class="form-control" name="scheDescription" id="scheEditDes"></textarea>
            </div>
            <div class="form-group">
              <label>Event Color</label>
              <select class="form-control" name="scheColor" id="scheEditColor">
                <option value="default">Default</option>
                <option value="blue">Blue</option>
                <option value="lightgreen">Lightgreen</option>
                <option value="pinkred">Pinkred</option>
                <option value="-deepskyblue">Deepskyblue</option>
              </select>
            </div>
            <div class="form-group">
              <label>Event Status</label>
              <select class="form-control" name="scheStatus" id="scheEditStatus">
                <option value="close">Close</option>
                <option value="available">Available</option>
              </select>
            </div>
            <div class="form-group">
              <label>Event Status Exp</label>
              <input type="text" class="form-control" name="scheStatusExp" id="scheEditExp">
            </div>
                   
        </div>
          <div class="modal-footer">
          <button type="submit" class="btn btn-primary" >Submit</button>
          <button type="button" class="btn btn-primary" id="closeBtn3">Close</button>        
        </div>
        </form>
      </div>
    </div>
  </div>
  
  



    <script>
      $(document).ready(function(){
        $('.datetimepicker').datepicker({
          timepicker: true,
          language: 'en',
          range: true,
          multipleDates: true,
          multipleDatesSeparator: " - ",
          onSelect: function(formattedDate, date, inst) {
            var dates = formattedDate.split(" - ");
            $('#scheDateStart').val(dates[0]);
            $('#scheDateEnd').val(dates[1]);
            console.log(dates[0]);
          }
        });

        $("#add-event").submit(function(){
          var values = {};
          $.each($('#add-event').serializeArray(), function(i, field) {
          values[field.name] = field.value;
          });
          console.log(
          values
          );
        });

        // 모달 hide시 기존에 입력했던 값 초기화
        $('#modal-view-event-add').on('hidden.bs.modal', function () {
          $(this).find('form').trigger('reset');
        });

        // 모달 hide
        $('#closeBtn1').on('click', function(){
          $('#modal-view-event').modal('hide');
        });

        $('#calendar').on('click', function(){
          $('#modal-view-event').modal('hide');
        });
        
        $('#closeBtn2').on('click', function(){
          $('#modal-view-event-add').modal('hide');
        });

        $('#closeBtn3').on('click', function(){
          $('#modal-view-event-edit').modal('hide');
        });

      });

    	(function() {    
        'use strict';
        // ------------------------------------------------------- //
        // Calendar
        // ------------------------------------------------------ //
        var events = [];
        $(function() {
        // page is ready
          $('#calendar').fullCalendar({
            themeSystem: 'bootstrap4',
            // emphasizes business hours
            businessHours: false,
            defaultView: 'month',
            // event dragging & resizing
            editable: true,
            // header
            header: {
              left: 'title',
              center: 'month,agendaWeek,agendaDay',
              right: 'today prev,next'
            },
            events:function(start, end, timezone, callback) {
              $.ajax({
                url: 'scheduleSelect.sc',
                dataType: 'json',
                success: function(response) {
                  
                  // iterate over the response and format the events array
                  $.each(response, function(index, event) {
                    events.push({
                      no: event.no,
                      title: event.title,
                      description: event.description,
                      start: event.start,
                      end: event.end,
                      color: event.color,
                      status: event.status,
                      exp: event.exp
                    });
                  });
                  callback(events);
                },error:function(){
                  console.log("실패");
                }
              });
            },
            dayClick: function(date, jsEvent, view) {
              $('#modal-view-event-add').modal("show");
              var event = {};
              $('.event-title').val(event.title);
              $('.event-body1').val(event.description);
              $('.event-body2').val(event.status);
              $('.event-body3').val(event.exp);
              $('.scheduleNo').val(event.no);
            },
            eventClick: function(event, jsEvent, view) {
              $('#modal-view-event').modal("show");
              var event = {};
              $('.event-title').val(event.title);
              $('.event-body1').val(event.description);
              $('.event-body2').val(event.status);
              $('.event-body3').val(event.exp);
              $('.scheduleNo').val(event.no);
            },
            eventDrop: function(event, delta, revertFunc) {
              $.ajax({
                type: "POST",
                url: "scheduleDropAjax.sc", // 서버로 전송할 URL
                dataType: "json",
                data: {
                  scheNo: event.no, // 수정된 이벤트의 no
                  scheDateStart: event.start.format(), // 수정된 시작 날짜 및 시간
                  scheDateEnd: event.end.format() // 수정된 종료 날짜 및 시간
                },
                success: function(response) {
                  if(response == 'success'){
                    console.log("Drop 성공");
                  }
                },
                error: function() {
                    console.log("Drop 실패");
                    revertFunc();
                  
                }
              });
            },
          })
        });
    	  
    	})($);

      
      
    </script>

    <jsp:include page="../common/footer.jsp" />

</body>
</html>