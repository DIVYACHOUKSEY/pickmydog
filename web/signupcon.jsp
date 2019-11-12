<%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String uname=request.getParameter("username");
String uaddress=request.getParameter("useraddress");
String umobile=request.getParameter("usermobilenos");
try
{
long umobiles=Long.parseLong(umobile);
String udateofbirth=request.getParameter("userdate");
String uemail=request.getParameter("useremail");
String upassword=request.getParameter("userpassword");

 Class.forName("com.mysql.jdbc.Driver");
        
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
             PreparedStatement st1=con.prepareStatement("insert into user_table (user_name,user_address,user_mobileno,user_dateofbirth,user_emailid,user_password) values(?,?,?,?,?,?)");
             st1.setString(1,uname);
             st1.setString(2,uaddress);
             st1.setLong(3,umobiles);
             st1.setString(4,udateofbirth);
             st1.setString(5,uemail);
             st1.setString(6,upassword);
             
             st1.executeUpdate();
             
             response.sendRedirect("userlogin.jsp");
             

}
catch(NumberFormatException exs)

    
{}
 

  %>     