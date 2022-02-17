<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String description=request.getParameter("description");
    String category=request.getParameter("category");
    String price=request.getParameter("price");
    String active=request.getParameter("active");
    String image=request.getParameter("img");
    
try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
    ps.setString(1, id);
    ps.setString(2, name);
    ps.setString(3, description);
    ps.setString(4, category);
    ps.setString(5, price);
    ps.setString(6, active);
    ps.setString(7, image);
    ps.executeUpdate();
    response.sendRedirect("addNewProduct.jsp?msg=done");
    
}catch(Exception e)
{
    System.out.println(e);
        response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
    %>