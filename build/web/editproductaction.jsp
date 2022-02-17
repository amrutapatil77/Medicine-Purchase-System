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
    st.executeUpdate("delete from product where id='"+id+"'");
    if(active.equals("No"))
    {
        st.executeUpdate("delete from cart where productid='"+id+"' and address is NULL");
        
    }
    response.sendRedirect("allProductEditProduct.jsp?msg=done");
}catch(Exception e)
{
    System.out.println(e);
        response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>