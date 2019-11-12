<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%
    try
    {
String adfname=request.getParameter("afname");
String adpass=request.getParameter("afpass");
String adpass1=request.getParameter("afpass1");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
PreparedStatement st1=con.prepareStatement("select * from admin_login_table where adminid=?");
 st1.setString(1,adfname);
       ResultSet rs=st1.executeQuery();
    if(rs.next())
   {
          if(adpass.equals(adpass1))
       {
       PreparedStatement st2=con.prepareStatement("update admin_login_table set admin_password=? where adminid=?");
            st2.setString(1,adpass);
            st2.setString(2,adfname);
            st2.executeUpdate();     
             response.sendRedirect("adminloginform.jsp");
       }
       else
       {
           out.println("new password and confirm new password doesnt match");
       }

   }
    }catch(Exception ex)
    {
    ex.printStackTrace();
    }
%>

        