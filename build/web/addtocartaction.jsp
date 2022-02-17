<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<% 
String email=session.getAttribute("email").toString();
String productid=request.getParameter("id");
int quantity=1;
int productprice=0;
int producttotal=0;
int carttotal=0;
int z=0;
try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from product where id='"+productid+"'");
    while(rs.next())
    {
        productprice=rs.getInt(5);
        producttotal=productprice;
        
    }
ResultSet rs1=st.executeQuery("select * from cart where productid='"+productid+"' and email='"+email+"' and address is NULL");

    while(rs1.next())
    {
 carttotal=rs1.getInt(5);
 carttotal=carttotal+producttotal;
 quantity=rs1.getInt(3);
quantity=quantity+1;
z=1;

        }
    if(z==1){
        st.executeUpdate("update cart set total="+carttotal+",quantity="+quantity+" where productid="+productid+" and email='"+email+"' and address is NULL");
        response.sendRedirect("home.jsp?msg=exist");
    }
    if(z==0)
    {
        PreparedStatement ps=con.prepareStatement("insert into cart(email,productid,quantity,price,total) values(?,?,?,?,?) ");
        ps.setString(1, email);
        ps.setString(2, productid);
        ps.setInt(3, quantity);
        ps.setInt(4, productprice);
        ps.setInt(5, producttotal);
        ps.executeUpdate();
        response.sendRedirect("home.jsp?msg=added");
        
    }
    
}catch(Exception e)
{
    System.out.println(e);
        response.sendRedirect("home.jsp?msg=invalid");    
}
%>