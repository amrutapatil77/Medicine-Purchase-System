<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="signupaction.jsp" method="post">
          <input type="text" placeholder="Enter Name" name="name" required="" >
          <input type="email" placeholder="Enter Email " name="email" required="" >
          <input type="number" placeholder="Enter Mobile Number " name="mobileno" required="" >
          <select name="securityquestion" required="">
              <option value="What is your pet name">What is your pet name</option>
              <option value="What is your school name">What is your school name</option>
              <option value="What is name of your town">What is name of your town</option>
              <option value="What is your first car">What is your first car</option>
             
          </select>
  <input type="text" placeholder="Enter Answer " name="answer" required="" >
  <input type="password" placeholder="Enter Password " name="password" required="" >
  <input type="submit" value="signup">
          
      </form>
      <h2><a href="index.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
      <%
          String msg=request.getParameter("msg");
          if("valid".equals(msg))
          {
              %>
              
<h1>Successfully Registered</h1>              
              
              <%
          }
          %>
              <%
          if("invalid".equals(msg))        
          {            
                  %>
<h1>Some thing Went Wrong! Try Again !</h1>

<%
    
    }
    %>

    <h2>Online Pharmacy</h2>
    <p>The Online Pharmacy System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>