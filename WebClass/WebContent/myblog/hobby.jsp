<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>김민준의 블로그</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
    <link href="../css/font.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="../css/blog.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="myblog.jsp">Home</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="hobby.jsp">Hobby</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="favorite.jsp">Favorite</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="dream.jsp">Dream</a>
            </li>
          </ul>
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Login</button>
			<button class="btn btn-outline-success my-2 my-sm-0" type="button"  onclick="location.href='register.jsp' ">Register</button>
    		</form>
        </div>
      </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('../image/home-bg.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>MinJun's Blog</h1>
              <span class="subheading">2학년 3반 김민준의 블로그</span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
    <hr>
    <h1 class="post-title">취미</h1>
    <hr>
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview">
              <h2 class="post-title">
                하드웨어와 IT관련 뉴스 기사를 보는 것이 재미있다. 
              </h2><br>
              <img src="../image/hardware.jpg" alt="메인보드 사진" width="640" height="512">
              <br><br>
              <h3 class="post-subtitle">
              매일 아침 IT 뉴스를 읽는다. 
              </h3>
            <p class="post-meta">Posted by
              <a href="#">MinJun</a>
              on September 6, 2017</p>
          </div>
          <hr>
           <div class="post-preview">
              <h2 class="post-title">
                남들보다 많이는 안하지만 게임을 한다.
              </h2><br>
              <img src="../image/lol.jpg" alt="리그 오브 레전드" width="640" height="512">
              <br><br>
              <h3 class="post-subtitle">
              가끔 애들이랑 하면 정말 재미있는 취미이다.
              </h3>
            <p class="post-meta">Posted by
              <a href="#">MinJun</a>
              on September 6, 2017</p>
          </div>
          <hr>
        </div>
      </div>
    </div>

    <hr>

   
      <!-- Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
   
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
 <script>
 $(document).ready(function () {
   $('#loginForm').submit(function (event) {
      //   자동 submit되는 기능을 막음
      event.preventDefault();
      
      //   id, pw값을 가져오기
      //   document.getElementById("id").value
      var id = $('#id').val();
      var pwd = $('#pwd').val();
      
      //   서버로 post 방식으로 전송 (a jax)
      $.post("http://httpbin.org/post",
            { id: id, pwd: pwd },
            function(data) {
               //alert(data.form.id + '님 로그인 되었습니다.');
               var myModal = $('#myModal');
               myModal.modal();
               myModal.find('.modal-body').text(data.form.id + '님 로그인 되었습니다.');
               
            });
   });
 });
 
 
 </script> 

    <!-- Bootstrap core JavaScript -->
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../js/blog.js"></script>
  </body>

</html>
