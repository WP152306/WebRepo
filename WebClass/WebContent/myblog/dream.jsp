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
    <h1 class="post-title">나의 꿈</h1>
    <hr>
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
        <div class="post-preview">
              <h3>반도체공학자</h3>
          </div>
          <div class="post-preview">
              <iframe width="560" height="315" src="https://www.youtube.com/embed/560rfpFfJkg?rel=0" allowfullscreen></iframe>
          </div><br>
          	<h5>하드웨어에 대한 관심이 많아지면서 자연스럽게 반도체에도 많은 관심이 생겼다. 그래서 관련 직업을 가질 순 없을까해서 생각해낸 것이 반도체 공학자이다. </h5>
          <br>
          <hr>
              <div class="post-preview">
              <h3>사진작가</h3>
          </div>
          <div class="post-preview">
              <iframe width="560" height="315" src="https://www.youtube.com/embed/ASqHycJI1js?rel=0" allowfullscreen></iframe>
          </div><br>
          	<h5>아빠가 사진 작가이신데 그래서 집안에 카메라가 많다. 처음엔 뭔지 몰랐는데 아빠가 카메라를 조금씩 가르쳐주셔서 이제는 흥미가 생겨서 사진 작가라는 직업도 고민해보고 있다. </h5>
          <br>
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
