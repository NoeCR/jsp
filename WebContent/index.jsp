<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a type="button" href="#" lass="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" ></span> Login</a></li>
    </ul>
  </div>
</nav>
    <form class="form-signin" action="checkusers.jsp" method="POST">
      <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" height="72" width="72">
      <h1 class="h3 mb-3 font-weight-normal">Please log in</h1>
      <label for="inputEmail" class="sr-only">Name</label>
      <input id="inputNombre" name="nombre" class="form-control" placeholder="name" required  autofocus="" type="text">
      <label for="inputPassword" class="sr-only" q>Password</label>
      <input id="inputPassword" name="pass" class="form-control" placeholder="Password" required type="password">      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>      
      <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
    </form>
  
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
         <form class="form-signin" action="registeruser.jsp" method="POST">
     	 <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" height="72" width="72">
     	 <h1 class="h3 mb-3 font-weight-normal">Please log in</h1>
     	 <label for="inputEmail" class="sr-only">Name</label>
     	 <input id="inputNombre" name="nombre" class="form-control" placeholder="name" required  autofocus="" type="text">
     	 <label for="inputPassword" class="sr-only" q>Password</label>
     	 <input id="inputPassword" name="pass" class="form-control" placeholder="Password" required type="password">      
     	 <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>      
      <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</body>
</html>