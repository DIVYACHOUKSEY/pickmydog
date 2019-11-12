<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String alogin=request.getParameter("aemail");
String apassword=request.getParameter("apass");
Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
        PreparedStatement st=con.prepareStatement("select*from admin_login_table where adminid=? and admin_password=?");
        st.setString(1,alogin);
        st.setString(2,apassword);
         ResultSet rg=st.executeQuery();
         if(rg.next())
         {
             session.setAttribute("CALL",alogin);
         response.sendRedirect("adminhome.jsp");
         }
         


%>