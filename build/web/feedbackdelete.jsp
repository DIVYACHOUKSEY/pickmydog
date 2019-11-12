<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.System"%>

<%
try{
    
    int fid=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement 
        st6 = con.prepareStatement("delete from feedback_table where feedbackid=? ");
         st6.setInt(1,fid);
         st6.executeUpdate();
         con.close();
         response.sendRedirect("viewfeedback.jsp");
        
        
}catch(Exception ex){

 ex.printStackTrace();
}
        %>