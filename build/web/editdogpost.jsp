<!DOCTYPE html>
<html>
    <head>
        <title>donatedog</title>
        <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.System"%>

    <style>
            .outerdiv{
            width: 100%;      
            }
            .header{
                width:100%; height:7px; 
                background-color: #F0F8FF;
               }
            .headertable{
                 width:100%;height:7px;
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
               font-size:12;
               width:100%;
               align: center;
               color:black;
              
                
            }
            .drag:hover
            {background-color:#87CEFA;}
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
            <!-----------------start header---------------------->
            <div class="header">
                <table class="headertable" >
                <tr>
                   <td>
                       <table  class="logo" ><tr><td>
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
                         <!----------------start menu--------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="#" class="drag">Home</a></td>
                             <td><a href="donatedog.jsp"  class="drag">donate dog</a></td>
                        <td><a href="viewuserpostlist.jsp"  class="drag">view my post</a></td>
                        <td><a href="userfeedback.jsp"  class="drag">feedback</a></td>
                        <td><a href="usercomplain.jsp"  class="drag">complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
                             
                               </tr>
                            </table>
                         <!------------------end of menu---------------------------->
                         </td>
                         </tr>
                         </table>
            </div>
            <!--------------------end of header-------------------------->
          <br><br><br><br><br><br>
        
        <div>
            <center><font style="color:#00BFFF;font-family: arial">Edit your Post</font></center><br>
            <!------------------------ dog edit form start------------------------------>
              <% 
try{
    int editdogid=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement
        rg= con.prepareStatement("select*from adoptdog_table where dogid=? ");
      rg.setInt(1,editdogid);
       
        ResultSet rs=rg.executeQuery();
        //--------------------start of if statement-------------------------
    if(rs.next()){
      

              %>

                
            
            <form action="editdogpostcon.jsp" method="POST">
            <table align="center" cellspacing="15px" style="background-color:#F0F8FF">
                 <tr>
                    <td>dog category</td><input type="hidden" name="dogi" value="<%=rs.getString("dogid")%>">
                    <td><input type="text" name="dogt" value="<%=rs.getString("dog_category")%>"></td>
                </tr>
                
                 <tr>
                    <td>dog description</td>
                    <td> <input type="text" name="dogdis" value="<%=rs.getString("dog_description")%>"></td>
                </tr>
                 <tr>
                    <td>dog picture upload</td>
                    <td><input type="file" name="dogimages" value="<%=rs.getString("dog_image")%>"></td>
                </tr>
                 <tr>
                    <td>dog video upload</td>
                    <td><input type="text"></td>
                </tr>
                 <tr>
                    <td>dog's contact no</td>
                    <td><input type="number" name="conno" value="<%=rs.getString("dog_mobileno")%>"></td>
                </tr>
                 <tr>
                    <td> dog color</td>
                    <td><input type="text" name="dogcol" value="<%=rs.getString("dog_color")%>"></td>
                </tr>
                <tr>
                    <td>dog's address</td>
                    <td><input type="textarea" name="addresstext" value="<%=rs.getString("dog_address")%>"></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="update" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center"></td>
                    <td><input type="reset" value="cancel"style="background-color:#1E90FF; width:80%;   height:31px;border-radius:8px; color:white; text-align:center" ></td>
                </tr>
            </table>
                </form><%}
                 }catch(Exception ex){

                    ex.printStackTrace();
                          }
                             %>
                             
            <!------------------------ dog edit form close------------------------------>
            
            </div>
    </body>
</html>
