<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Admin Dashboard</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
    
  </head>
  <body>  
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>CONSTRUCTION</h1>
        </header>
        <div class="profile-photo-container">
          <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      
        <br><br>
       
        <nav class="templatemo-left-nav">          
          <ul>
            <li><a href="Home.jsp" class="active"><i class="fa fa-home fa-fw"></i>Dashboard</a></li>
            <li><a href="UserMain.jsp"><i class="fa fa-users fa-fw"></i>Manage Users</a></li>
            <li><a href="SiteMain.jsp"><i class="fa fa-sliders fa-fw"></i>Manage Sites</a></li>
            <li><a href="MaterialMain.jsp"><i class="fa fa-sliders fa-fw"></i>Manage Materials</a></li>
            <li><a href="SupplierMain.jsp"><i class="fa fa-users fa-fw"></i>Manage Suppliers</a></li>
            <li><a href="login.jsp"><i class="fa fa-eject fa-fw"></i>Sign Out</a></li>
          </ul>  
        </nav>
      </div>
      <!-- Main content --> 
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="UserMain.jsp">Manage Users</a></li>
                <li><a href="SiteMain.jsp">Manage Sites</a></li>
                <li><a href="MaterialMain.jsp">Manage Materials</a></li>
                <li><a href="SupplierMain.jsp">Manage Suppliers</a></li>
              </ul>
            </nav>
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget white-bg">
            <h2 class="margin-bottom-10 text-center">Users</h2>
            </br></br>
            <form action="UserHandler" class="templatemo-login-form" method="POST">
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">Username</label>
                    <input type="text" class="form-control" id="username" name="username"  placeholder="John">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">Email</label>
                    <input type="text" class="form-control" id="email"name="email" placeholder="jhon@gmail.com">                  
                </div> 
              </div>
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputUsername">Password</label>
                    <input type="text" class="form-control" id="password" name="password" placeholder="***********">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputConfirmNewPassword">Confirm Password</label>
                    <input type="text" class="form-control" id="cpassword" name="cpassword" placeholder="***********"> 
                </div> 
              </div>
              <div class="row form-group">
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputEmail">Mobile</label>
                    <input type="text" class="form-control" id="mobile" name="mobile"  placeholder="Mobile No">                  
                </div> 
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputNewPassword">Role</label>
                    <select class="form-control" id="role" name="role">
				      <option>Admin</option>
				      <option>Site Manager</option>
				      <option>Employee</option>
				    </select>
                </div>
                
              </div>

        
              <div class="form-group text-center">
                <button type="submit" class="templatemo-blue-button">Add</button>
              </div>                           
            </form>
          
          </div>
        </div>
      </div>
    </div>

    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>        <!-- jQuery -->
    <script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>  <!-- http://markusslima.github.io/bootstrap-filestyle/ -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>        <!-- Templatemo Script -->
  </body>
</html>
