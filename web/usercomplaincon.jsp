<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String cname=request.getParameter("cname");
String compl=request.getParameter("ccom");
String cnos=request.getParameter("cno");
int se=Integer.parseInt(cnos);
try{
Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
        PreparedStatement st=con.prepareStatement("insert into complain_table(complain_name,complain_description,complain_mobile) value(?,?,?)");
        st.setString(1,cname);
        st.setString(2,compl);
        st.setInt(3,se);
        st.executeUpdate();
        con.close();
        response.sendRedirect("userhome.jsp");}
catch(Exception ex){}

%>