<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.System"%>

<%
try{
    int dogids=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement 
        st6 = con.prepareStatement("delete from adoptdog_table where dogid=? ");
         st6.setInt(1,dogids);
         st6.executeUpdate();
         con.close();
     response.sendRedirect("viewuserpostlist.jsp");
}catch(Exception ex){

 ex.printStackTrace();
}
        %>