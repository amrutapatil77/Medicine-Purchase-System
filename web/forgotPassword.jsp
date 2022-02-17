<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="forgotpasswordaction.jsp" method="post">
          <input type="email" name="email" placeholder="Enter Email" required="">
          <input type="number" name="mobileno" placeholder="Enter Mobile Number" required="">
          <select name="securityquestion">
              <option value="What is your pet name">What is your pet name</option>
              <option value="What is your school name">What is your school name</option>
              <option value="What is name of your town">What is name of your town</option>
              <option value="What is your first car">What is your first car</option>
             
          </select>
           <input type="text" name="answer" placeholder="Enter Answer" required="">
           <input type="password" name="password" placeholder="Enter New Password" required="">
           <input type="submit" value="Save">
         
      </form>
      <h2><a href="index.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
      <%
          String msg=request.getParameter("msg");
          if("done".equals(msg))
          {
              %>
              <h1>Password Changed Successfully!</h1>

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