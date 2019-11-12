<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String fname=request.getParameter("feedbackname");
String ffeedback=request.getParameter("feedback");
String fmobile=request.getParameter("feedbackcontact");
int fmobiles=Integer.parseInt(fmobile);
try{
Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
        PreparedStatement st=con.prepareStatement("insert into feedback_table(feedback_name,feedback,feedback_contactno) value(?,?,?)");
        st.setString(1,fname);
        st.setString(2,ffeedback);
        st.setInt(3,fmobiles);
        st.executeUpdate();
        response.sendRedirect("userhome.jsp"); }
catch(Exception ex){}

%>