<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
  String email=request.getParameter("email");

  String mobileno=request.getParameter("mobileno");
  String securityquestion=request.getParameter("securityquestion");
  String answer=request.getParameter("answer");
  String password=request.getParameter("password");
  int check=0;
  try
  {
      Connection con=ConnectionProvider.getCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and mobileno='"+mobileno+"' and securityq='"+securityquestion+"' and answer='"+answer+"'");
      while(rs.next())
      {
        check=1;
        st.executeUpdate("update users set password='"+password+"' where email='"+email+"' ");
        response.sendRedirect("forgotPassword.jsp?msg=done");
      }
      if(check==0)
      {
          response.sendRedirect("forgotPassword.jsp?msg=invalid");
      }
  }catch(Exception e)
  {
      System.out.println(e);
  }
%>