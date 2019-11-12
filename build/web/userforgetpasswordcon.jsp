<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%
String cnfpass=request.getParameter("cf");
String foemail=request.getParameter("femail");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
PreparedStatement st1=con.prepareStatement("select*from user_table where user_emailid=?");
 st1.setString(1,foemail);
       ResultSet rs=st1.executeQuery();
    if(rs.next())
   {
       PreparedStatement st2=con.prepareStatement("update user_table set user_password=? where user_emailid=?");
            st2.setString(1,cnfpass);
            st2.setString(2,foemail);
            st2.executeUpdate();
response.sendRedirect("userlogin.jsp");            
   }
%>

        