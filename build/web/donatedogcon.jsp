<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>

<% 
String dcatogary=request.getParameter("dogtype");
String ddescription=request.getParameter("dogdescription");


String dmobiles=request.getParameter("contactno");

try
{

int dmobile=Integer.parseInt(dmobiles);
String dcolor=request.getParameter("dogcolor");
String daddress=request.getParameter("textarea");
String dogimages=request.getParameter("dogimg");
String uid=request.getParameter("userid");

 Class.forName("com.mysql.jdbc.Driver");
        
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
            PreparedStatement st=con.prepareStatement("insert into adoptdog_table(dog_category,dog_description,dog_mobileno,dog_color,dog_address, dog_image,userid) value(?,?,?,?,?,?,?)");
            st.setString(1,dcatogary);
            st.setString(2,ddescription);
                st.setInt(3,dmobile);
   
            st.setString(4,dcolor);
            st.setString(5,daddress);
             st.setString(6,dogimages);
              st.setString(7,uid);
            
            st.executeUpdate();
            
            response.sendRedirect("userhome.jsp");

            }catch(Exception e)
{   e.printStackTrace();}
 

   
%>