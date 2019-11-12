  <%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.ResultSet"%>
      <%
          
          try{
          int cnos=Integer.parseInt(request.getParameter("cid"));

          
       
      String csta=request.getParameter("cstatus");
String csol=request.getParameter("csolve");
String csols=request.getParameter("csno");


     Class.forName("com.mysql.jdbc.Driver");
        
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
             PreparedStatement st1=con.prepareStatement("update  complain_table set complain_status=? , complain_solvedby=? , complain_no=? where complainid=? ");
            
             st1.setString(1,csta);
       
             st1.setString(2,csol);
             st1.setString(3,csols);
             st1.setInt(4,cnos);
            
             st1.executeUpdate();
             response.sendRedirect("adminhome.jsp");
        }catch(Exception ex){};
             %>
   
    
   