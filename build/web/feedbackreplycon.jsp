  <%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.ResultSet"%>
      <%
          try{
           int cst=Integer.parseInt(request.getParameter("fid"));
      String csta=request.getParameter("freply");
       String urep=request.getParameter("ureply");
     Class.forName("com.mysql.jdbc.Driver");
        
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
         
      
       
             PreparedStatement st1=con.prepareStatement("update  feedback_table set feedback_reply=? where feedbackid=? ");
       st1.setString(1,csta);
        st1.setInt(2,cst);
             st1.executeUpdate();
             response.sendRedirect("adminhome.jsp");
        }
          catch(Exception ex){
          ex.printStackTrace();
          };
             %>
   
    
   