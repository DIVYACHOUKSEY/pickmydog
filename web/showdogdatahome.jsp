<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.System"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>homepage</title>
        <style>
            .outerdiv{
            width: 100%;      
            }
            .header{
                width:100%; height:8px; 
                background-color: #F0F8FF;
               }
            .headertable{
                 width:100%;height:8px;
                 background-color: #F0F8FF;
             
                
            }
            .logo{
                width: 100%;
                size:30%;
                
            }
            .tb{
                width:100%;
                align:center;
                
            }
            .drag{
               text-decoration: none;
               font-family: Calibri;
               font-size:16;
               width:100%;
               align: center;
               color:black;
              
                
            }
            .drag:hover
            {background-color:white;}
            .fon{
                font-family: Arial Black;
                font-size: 30px;
                align: center;
                color:black;
                
            }
            .ser{
                width:100%;   
                background-color: F8F8FF;
            }
           
            
        </style>
    </head>
    <body bgcolor="white">
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!------------------------------start of header-------------------------->
            <div class="header">
                <table class="headertable" >
                <tr>
                   <td>
                       <table  class="logo" width="40%" ><tr><td>
                       <img src="doglogo.png" width="100%" height="70px"></td>
                        <td><font class="fon"><b>Pickmydog</b></font></td>
                        </tr>                 
                        </table></td>
                        <td width="70%">
                                 
                                 <table width="40%" align="right"  >
                           <tr>
                          <td align="right" ><a href="mailto:"  class="drag"><img src="emails.png" width="14px" height="12px"> <font style="color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px"><i>Email</i></font></a></td>
                        <td align="center"  ><a href="#" class="drag"><img src="call.png" width="14px" height="14px"><font style="color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px"><i>  Helpline no</i></a></font></td>
                               </tr>
                            </table><br><br>
                            <!-------------------------start  of  menu---------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="#" class="drag">Home</a></td>
                        <td><a href="signup.jsp"  class="drag" >donate dog</a></td>
                        <td><a href="aboutus.jsp"  class="drag">About us</a></td>
                        <td><a href="userlogin.jsp" class="drag">login</a></td>   
                           </tr>
                            </table>
                            <!-------------------------end  of  menu---------------------->
  
                         </td>
                         </tr>
                         </table>
            </div>
              <!-------------------------end  of  header---------------------->
  
          <br><br><br><b><br><br><br><b><br>

                 <!-------------------------show dog data form start---------------------->
  
                  <div align="center"><table width="344" bgcolor="#F0F8FF">
                                 
                  <% 
try{
    int homeshow=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement
        rg= con.prepareStatement("select*from adoptdog_table where dogid=? ");
      rg.setInt(1,homeshow);
       
        ResultSet rs=rg.executeQuery();
        //--------------------start of if statement-------------------------
    if(rs.next()){
      

              %>
                          <tr width="10%" cellspacing="2"><td width="327" ><%=rs.getString("dog_image")%></td><td width="8"></td></tr>
            

                        <tr><td>
                            <table width="100%" height="30%"  bgcolor="#F0F8FF" cellspacing="20px">
                          <tr>                   
                            <td>dog category</td>
                           <td style="text-align:left"><%=rs.getString("dog_category")%></td>
                           </tr>
                           <tr>
                               <td>dog description </td>
                               <td style="text-align:left"><%=rs.getString("dog_description")%></td>
                            </tr>
                              <tr>
                           <td>dog mobile no</td>
                            <td style="text-align:left"><%=rs.getString("dog_mobileno")%></td>
                             </tr>
                             <tr><td>dog color</td>
                            <td style="text-align:left"><%=rs.getString("dog_color")%></td>
                              </tr>
                              <tr>
                              <td>dog address</td>
                           <td style="text-align:left"><%=rs.getString("dog_address")%></td>
                          </tr>
                                <tr>
                                
                     <td align="center" style="background-color:#1E90FF; width:50%;   height:31px;border-radius:8px; color:white; text-align:center" ><a a href="#" style="color:white;text-decoration:none">call</a></td>       
                         <td align="right" style="background-color:#1E90FF; width:80%;   height:31px;border-radius:8px; color:white; text-align:center" ><a a href="#" style="align:right;color:white;text-decoration:none" >message</a></td>
              </tr></tbody></table><td></tr></table>    <% }  
                //----------------------------------end of if statement--------------------------------
                      }catch(Exception ex){

                    ex.printStackTrace();
                          }
                             %>
                             
                           
                             </div>
                               <!-------------------------show dog data form end---------------------->
  
                             </div>
    </body>
</html>
