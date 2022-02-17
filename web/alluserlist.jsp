<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<html>
<head>
    
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Users List <i class='fas fa-dolly'></i></div>



<table id="customers">
          <tr>
          <th>Name</th>
            <th scope="col">Email</th>
          
            <th scope="col">Mobile Number</th>
            <th>Security Question</th>
            <th>Answer</th>
            <th>Password</th>
            
            <th scope="col">Address</th>
             <th scope="col">City</th>
             <th scope="col">State</th>
              <th scope="col">Country</th>
             
          </tr>
        
         <% try{
       Connection con=ConnectionProvider.getCon();
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from users");
       while(rs.next())
       {
           
    
   %>     
       
          <tr>
              <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %>  </td>
                <td><%=rs.getString(5) %></td>
               <td><%=rs.getString(6) %></td>
                <td><%=rs.getString(7) %></td>
                 <td><%=rs.getString(8) %></td>
             <td><%=rs.getString(9) %></td>
              <td><%=rs.getString(10) %></td>
             
            
             
               
               </tr>
 <%}
}
 catch(Exception e)
{
System.out.println(e);
}
%>
   
        </table>
      <br>
      <br>
      <br>

</body>
</html>