<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVO" %>
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
			<%-- 세션이 없는 경우 --%>
    <%
			UserVO user=(UserVO)session.getAttribute("user");
			if(user==null){
 
	%>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="">Sign up</a>
    
	<% } else { %>
	<%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getName()+ "님"%>	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout" method="post">
	      		<button type="submit" class="dropdown-item">Sign out</button>
	       	</form>
	      </div>
	    </li>
	    </ul>
	    
	    <% } %>
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
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview">
            <a href="http://sev.iseverance.com/">
              <h2 class="post-title">
                2000년 1월 6일 태어나다.
              </h2>
              <h3 class="post-subtitle">
                연세 세브란스 병원에서 태어나게 되었다.
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#">MinJun</a>
              on September 6, 2017</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="https://www.google.co.kr/maps/place/%EC%86%A1%EC%82%B0%EC%A3%BC%EA%B3%B51%EB%8B%A8%EC%A7%80%EC%95%84%ED%8C%8C%ED%8A%B8/@37.7482648,127.0812801,15z/data=!4m5!3m4!1s0x0:0xf58dc19f0cb40321!8m2!3d37.7482648!4d127.0812801?sa=X&ved=0ahUKEwjRzOCi0JDWAhVIKpQKHUPJAeAQ_BIIbDAK">
              <h2 class="post-title">
                의정부에서 유년 시절을 보내다. 
              </h2>
              <h3 class="post-subtitle">
                유치원 ~ 초등학교까지 다녔다.
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#">MinJun</a>
              on September 6, 2017</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="https://www.google.co.kr/maps/place/%ED%95%9C%EC%9A%B8%EB%A7%88%EC%9D%843%EB%8B%A8%EC%A7%80%EC%95%84%ED%8C%8C%ED%8A%B8/@37.7116338,126.7387644,17z/data=!3m1!4b1!4m5!3m4!1s0x357c8d8aee21f347:0xf14c2551cb95dcee!8m2!3d37.7116296!4d126.7409584">
              <h2 class="post-title">
                파주로 이사를 가다.
              </h2>
              <h3 class="post-subtitle">
                파주에서 중학교를 다녔다.
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#">MinJun</a>
              on September 6, 2017</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="https://www.dimigo.hs.kr/">
              <h2 class="post-title">
                중학교 3학년에 디미고를 가기로 결심하다!
              </h2>
              <h3 class="post-subtitle">
                원서내기 직전까지 많은 고민을 하였다..
              </h3>
            </a>
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
