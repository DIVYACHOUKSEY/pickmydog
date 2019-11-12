<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%
String ulogin=request.getParameter("uemail");
String upass=request.getParameter("upasswords");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

PreparedStatement st=con.prepareStatement("select*from user_table where user_emailid=? and user_password=?");
        st.setString(1,ulogin);
        st.setString(2,upass);
         ResultSet rg=st.executeQuery();
         if(rg.next())
         {
         response.sendRedirect("userhome.jsp");
          session.setAttribute("CALLS",ulogin);
         }
         else
         {
          response.sendRedirect("userlogin.jsp");
         }
        

%>

        