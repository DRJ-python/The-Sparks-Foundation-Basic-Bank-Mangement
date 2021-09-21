<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>create user</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="createuser.css">
        
        <style>
            
            .navbar
{
width:100%;
float:right;
padding:8px;
padding-right:40px;
background-color:#f4ead7;
border : 2px solid black;
color: black;
}
.navbar a
{   
    font-family: Garamond;
    color: black;
    font-weight:bold;
font-size:20px;
padding-right:50px;
text-decoration:none;
}
.navbar a:hover
{
	color:red;
}
            
        </style>
</head>
<body style="background-color:#ccb35b; color: white;">

<div>

    <span class="navbar" >
<b style="color:black;float:left; font-size:20px; font-family:Lucida Handwriting; margin-left:70px;">TSF BANK</b>
<span style="float:right;">
<a  href="index.html">Home</a>
<a href="create_user.jsp">Add Customer</a>
<a href="view.jsp">View User</a>
<a href="transfer.jsp">Transfer Money</a>
<a href="checkhistory.jsp">Check History</a>
</span>
</span>
</div>	



<br><br>
                                
<h2 class="text-center pt-4" style=" font-weight: bold; text-decoration: underline; font-size: 40px; color : black; font-family : Garamond;">Create a User</h2>
        <br>

  <div class="background">
  <div class="container">
    <div class="screen">
      <div class="screen-header">
        <div class="screen-header-right">
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
        </div>
      </div>
      <div class="screen-body">
        <div class="screen-body-item left">
          <img class="img-fluid" src="images/user.jpg" style="border: none; border-radius: 80%;">
        </div>
        <div class="screen-body-item">
          <form class="app-form" method="post" action="AddServlet">
<%
   String a = (String)request.getAttribute("message");
     if(a!=null){
     out.println("<FONT COLOR=RED>" + a + "</FONT>"); 
     out.println();}
%>
            <div class="app-form-group">
              <input class="app-form-control" type="text" name="name" placeholder ="Name" required>
            </div>
            <div class="app-form-group">
              <input class="app-form-control" type="email" name="email" placeholder="Email" required>
            </div>
            <div class="app-form-group">
              <input class="app-form-control" type="balance" name="balance" placeholder="Balance" required>
            </div>
            <br>
            <div class="app-form-group button">
              <input class="app-form-button" type="submit" value="CREATE" name="submit"></input>
              <input class="app-form-button" name="reset"><a href="index.html" style="color:white; text-decoration: none;">BACK</a></input>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<footer style="margin-top: 7%; color:black;"><center>
        <p>&copy 2021. Made by <b>Dheeraj Joshi</b> <br> The Sparks Foundation</p>
</center>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
                                
                                
</body>
</html>