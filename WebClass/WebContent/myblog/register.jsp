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
    <link href="../css/font.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  	<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
  	
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="../js/myblog.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/blog.css">
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


  <div class="container">
  <hr>
      <h1>회원가입</h1>
      <hr>
   </div>
      <form class="form-inline my-2 my-lg-0" id="signForm">   
      <div class="container">
            <input type="radio" name="year"  required checked >1학년
         <input type="radio" name="year" required>2학년
         <input type="radio" name="year" required>3학년<br><br>
         </div>
         <div class="container">
          <select class="btn btn-primary dropdown-toggle" name="list" required >
            <option value="">반 선택</option>
            <option value="1">1반</option>
            <option value="2">2반</option>
            <option value="3">3반</option>
            <option value="4">4반</option>
            <option value="5">5반</option>
            <option value="6">6반</option>
         </select><br><br>
              <input class="form-control mr-sm-2" type="number" placeholder="번호" aria-label="PWD" id="pwd" required ><br><br>
            <input class="form-control mr-sm-2" type="text" placeholder="이름" aria-label="ID" id="name" required ><br><br>
              <button type="submit" class="btn btn-primary"  >Sign in</button><br><br><br>
              <hr>
       </div> 
      </form>    
      <hr> 
  
  <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">회원가입 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="signResult">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  </body>
</html>