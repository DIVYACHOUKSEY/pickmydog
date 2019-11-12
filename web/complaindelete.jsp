<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.System"%>

<%
try{
    int cid=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement 
        st6 = con.prepareStatement("delete from complain_table where complainid=? ");
         st6.setInt(1,cid);
         st6.executeUpdate();
         con.close();
     response.sendRedirect("viewcomplain.jsp");
}catch(Exception ex){

 ex.printStackTrace();
}
        %>