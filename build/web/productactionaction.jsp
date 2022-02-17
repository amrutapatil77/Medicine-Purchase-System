<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<% 
String id=request.getParameter("id");
String name=request.getParameter("name");
String description=request.getParameter("description");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("delete from cart where id='"+id+"'");
    response.sendRedirect("cancelOrders.jsp?msg=right");

    
}catch(Exception e)
{
    System.out.println(e);
        response.sendRedirect("cancelOrders.jsp?msg=wrong");
}
%>