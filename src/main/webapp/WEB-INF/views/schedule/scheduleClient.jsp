<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  
  
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet"> 

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome-font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/css/datepicker.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/schedule.css">
<script></script>
<style>
  .mb-4{
    font-size: 32px;
    font-weight: bold;
    text-transform: uppercase;
    margin-bottom: 20px;
    padding-bottom: 20px;
    position: relative;
  }

  .fc-left h2{
    font-size: 25px;
    margin-left: 10px;
    padding: 10px;
    font-family: inherit;
  }
</style>
</head>
<body>

    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center" >

      <jsp:include page="../common/header.jsp" />

      <div class="header-social-links" >
        <a href="https://www.instagram.com/tattoo_by_orca/" target="_blank" class="instagram"><i class="bi bi-instagram"></i></a>
        &nbsp;
		    <a href="logout.me">Logout</a>
      </div>

    </div>

  </header><!-- End Header -->

  <section id="hero2" class="d-flex align-items-center" style="justify-content: center;" >
    <div class="p-5"  data-aos="fade-up">
      <h2 class="mb-4">Schedule</h2>
      <div class="card">
        <div class="card-body p-0">
          <div id="calendar" style="width:1300px; padding-top: 10px; padding-inline: 1px;"></div>
        </div>
      </div>
    </div>
  </section><!-- End Hero -->

  
    <!-- calendar modal -->
    <div id="modal-view-event" class="modal modal-top fade calendar-modal">
      <div class="modal-dialog modal-dialog-centered" style="place-content: center;">
        <form action="" id="detailForm" method="post">
          <div class="modal-content">
            <div class="modal-body">
              <h4 class="modal-start" style="color:rgb(75, 84, 92)"></h4>
              <h4 class="modal-end" style="color:rgb(75, 84, 92)"></h4>
              <h4 class="modal-status" style="color:rgb(75, 84, 92)"></h4>
              <h4 class="modal-exp" style="color:rgb(75, 84, 92)"></h4>
              <input type="hidden" class="scheNo">
            </div>
            <div class="modal-footer">
             <button type="button" class="btn btn-primary" id="closeBtn1" style="background-color: rgb(108, 118, 128); border-color: slategray;">Close</button>
            </div>
          </div>
        </form>
      </div>
    </div>

  <script>
  $(document).ready(function(){
    
    // 모달 hide
    $('#closeBtn1').on('click', function(){
      $('#modal-view-event').modal('hide');
    });

    $('#calendar').on('click', function(){
      $('#modal-view-event').modal('hide');
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
        defaultView: 'month',
        // header
        header: {
          right: 'today prev,next'
        },
        events:function(start, end, timezone, callback) {
          $.ajax({
            url: 'scheduleClientSelect.sc',
            dataType: 'json',
            success: function(response) {
              
              // iterate over the response and format the events array
              $.each(response, function(index, event) {
                // check if the event already exists
                if (!events.some(function(existingEvent) { return existingEvent.no === event.no; })) {
                  events.push({
                    no: event.no,
                    start: event.start,
                    end: event.end,
                    status: event.status,
                    exp: event.exp
                  });
                }
              });
              callback(events);
            },error:function(){
              console.log("실패");
            }
          });
        },
        eventClick: function(event, jsEvent, view) {
          $('#modal-view-event').modal("show");
          $('.modal-start').html("start date : " + event.start.format("MM/DD/YYYY h:mm A"));
          if(event.end != null){
            $('.modal-end').html("end date : " + event.end.format("MM/DD/YYYY h:mm A"));
          }
          $('.modal-status').html("status : " + event.status);
          $('.modal-exp').html("status exp : " + event.exp);
          $('.scheNo').val(event.no);          
        },
        eventRender: function(event, element) {
          // 이벤트의 타이틀을 변경합니다.
          element.find('.fc-time').text(event.status);

          // 이벤트의 배경색을 변경합니다.
          element.css('background-color', 'white');
        }
        
        
      })
    });
    
  })($);

  
  
</script>

  <jsp:include page="../common/footer.jsp" />

</body>
</html>