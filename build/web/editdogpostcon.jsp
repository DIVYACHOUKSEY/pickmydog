<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    try{
    int fids=Integer.parseInt(request.getParameter("dogi"));
String dogcat=request.getParameter("dogt");
String dogmob=request.getParameter("dogdis");
String dogcol=request.getParameter("conno");
String dogdis=request.getParameter("dogcol");
String fs=request.getParameter("addresstext");
String dgim=request.getParameter("dogimages");

Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
          PreparedStatement rgs= con.prepareStatement("select*from adoptdog_table where dogid=? ");
      rgs.setInt(1,fids);
       
        ResultSet rs=rgs.executeQuery();
        //--------------------start of if statement-------------------------
    if(rs.next()){
      
    
    
    PreparedStatement st1=con.prepareStatement("update adoptdog_table set dog_category=? , dog_description=? , dog_mobileno=? , dog_color=? , dog_address=? , dogimg=? where dogid=?");
  
st1.setString(1,dogcat);
st1.setString(2,dogmob);
  st1.setString(3,dogcol);
  st1.setString(4,dogdis);
  st1.setString(5,fs);
   st1.setString(6,dgim);
    st1.setInt(7,fids);
  
            st1.executeUpdate();     
             response.sendRedirect("viewuserpostlist.jsp");}}
    catch(Exception ex){
        ex.printStackTrace();
   
    }
%>