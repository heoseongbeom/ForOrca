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
            <h3 class="modal-title" style="color:rgb(75, 84, 92)"></h3>
            <h4 class="modal-description" style="color:rgb(75, 84, 92)"></h4>
            <h4 class="modal-start" style="color:rgb(75, 84, 92)"></h4>
            <h4 class="modal-end" style="color:rgb(75, 84, 92)"></h4>
            <h4 class="modal-color" style="color:rgb(75, 84, 92)"></h4>
            <h4 class="modal-status" style="color:rgb(75, 84, 92)"></h4>
            <h4 class="modal-exp" style="color:rgb(75, 84, 92)"></h4>
            <input type="hidden" class="scheNo">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="updateBtn" style="background-color: rgb(102, 112, 121); border-color: slategray;">Update</button>
            
            <button type="button" onclick="deleteSche();" class="btn btn-primary" id="deleteBtn" style="background-color: rgb(75, 84, 92); border-color: slategray;">Delete</button>
            <button type="button" class="btn btn-primary" id="closeBtn1" style="background-color: rgb(108, 118, 128); border-color: slategray;">Close</button>
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
      function deleteSche(){
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
            location.href = 'scheDelete.sc?no=' + $('.scheNo').val();
          }
        });
      }
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
              <input type="text" class="form-control" name="scheTitle" required>
            </div>
            <div class="form-group">
              <label>Event Description</label>
              <textarea class="form-control" name="scheDescription" required></textarea>
            </div>
            <div class="form-group">
              <label>Event Date</label>
              <input type="text" class="datetimepicker form-control" id="scheDate" name="scheDate" style="background: white;" required readonly>
              <input type="hidden" name="scheDateStart" id="scheDateStart">
              <input type="hidden" name="scheDateEnd" id="scheDateEnd">
            </div>        
            <div class="form-group">
              <label>Event Color</label>
              <select class="form-control" name="scheColor">
                <option value="default">Default</option>
                <option value="blue">Blue</option>
                <option value="lightgreen">Lightgreen</option>
                <option value="pinkred">Pinkred</option>
                <option value="deepskyblue">Deepskyblue</option>
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
              <input type='text' class="form-control" name="scheStatusExp" required>
            </div>        
        </div>
          <div class="modal-footer">
          <button type="submit" onclick="return submitSche();" class="btn btn-primary" style="background-color: rgb(108, 118, 128); border-color: slategray;">Save</button>
          <button type="button" class="btn btn-primary" id="closeBtn2" style="background-color: rgb(75, 84, 92); border-color: slategray;">Close</button>        
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
              <input type="text" class="form-control" name="scheTitle" id="scheEditTitle" required>
              <input type="hidden" name="scheNo" class="scheduleNo" id="scheEditNo">
            </div>
            <div class="form-group">
              <label>Event Description</label>
              <textarea class="form-control" name="scheDescription" id="scheEditDes" required></textarea>
            </div>
            <div class="form-group">
              <label>Event Date</label>
              <input type="text" class="datetimepicker form-control" id="scheEditDate" name="scheDate" style="background: white;" required readonly>
              <input type="hidden" name="scheDateStart" id="scheEditDateStart">
              <input type="hidden" name="scheDateEnd" id="scheEditDateEnd">
            </div>        
            <div class="form-group">
              <label>Event Color</label>
              <select class="form-control" name="scheColor" id="scheEditColor">
                <option value="default">Default</option>
                <option value="blue">Blue</option>
                <option value="ligreen">Lightgreen</option>
                <option value="red">Pinkred</option>
                <option value="deepskyblue">Deepskyblue</option>
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
              <input type="text" class="form-control" name="scheStatusExp" id="scheEditExp" required>
            </div>
                   
        </div>
          <div class="modal-footer">
          <button type="submit" class="btn btn-primary" style="background-color: rgb(108, 118, 128); border-color: slategray;">Submit</button>
          <button type="button" class="btn btn-primary" id="closeBtn3" style="background-color: rgb(75, 84, 92); border-color: slategray;">Close</button>        
        </div>
        </form>
      </div>
    </div>
  </div>
  
  



    <script>

        function submitSche(){
          var scheDate = $('#scheDate').val();
          
          if(scheDate == ""){
            Swal.fire({
							text: "Please enter a date.",
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
          }else{s
            return true;
          }
        };
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
            $('#scheEditDateStart').val(dates[0]);
            $('#scheEditDateEnd').val(dates[1]);
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

        $('#updateBtn').on('click', function(){
                $('#modal-view-event-edit').modal("show");
        });

        // 모달 hide시 기존에 입력했던 값 초기화
        $('#modal-view-event-add').on('hidden.bs.modal', function () {
          $(this).find('form').trigger('reset');
        });

        $('#modal-view-event-edit').on('hidden.bs.modal', function () {
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

        $('#updateBtn').on('click', function(){
          $('#modal-view-event').modal('hide');
        })

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
                    // check if the event already exists
                    if (!events.some(function(existingEvent) { return existingEvent.no === event.no; })) {
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
                    }
                  });
                  callback(events);
                },error:function(){
                  console.log("실패");
                }
              });
            },
            dayClick: function(date, jsEvent, view) {
              $('#modal-view-event-add').modal("show");
              
            },
            eventClick: function(event, jsEvent, view) {
              $('#modal-view-event').modal("show");
              $('.modal-title').html(event.title);
              $('.modal-description').html(event.description);
              $('.modal-start').html("start date : " + event.start.format("MM/DD/YYYY h:mm A"));
              if(event.end != null){
                $('.modal-end').html("end date : " + event.end.format("MM/DD/YYYY h:mm A"));
              }
              $('.modal-color').html("color : " + event.color);
              $('.modal-status').html("status : " + event.status);
              $('.modal-exp').html("status exp : " + event.exp);
              $('.scheNo').val(event.no);

              // update 버튼 클릭시 value값 넘기기
              $('#scheEditTitle').val(event.title);
              $('#scheEditDes').val(event.description);
              if (event.end != null) {
                var startDate = moment(event.start).format('MM/DD/YYYY h:mm A');
                var endDate = moment(event.end).format('MM/DD/YYYY h:mm A');
                $('#scheEditDate').val(startDate + ' - ' + endDate);
                $('#scheEditDateStart').val(startDate);
                $('#scheEditDateEnd').val(endDate);
              } else {
                var startDate = moment(event.start).format('MM/DD/YYYY h:mm A');
                $('#scheEditDate').val(startDate);
                $('#scheEditDateStart').val(startDate);
              }
              $('#scheEditColor').val(event.color);
              $('#scheEditStatus').val(event.status);
              $('#scheEditExp').val(event.exp);
              $('#scheEditNo').val(event.no);
              
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