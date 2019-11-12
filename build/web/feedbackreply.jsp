<!DOCTYPE html>
<html>
    <head>
        <title>usercomplain</title>
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
        
        <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.System"%>


       </head>
    
<body bgcolor="white">
     <% 
try{
    int cids=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement
        rg= con.prepareStatement("select*from feedback_table where feedbackid=? ");
      rg.setInt(1,cids);
       
        ResultSet rs=rg.executeQuery();
        //--------------------start of if statement-------------------------
   %>
      
       
    
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!--------------------------start of header----------------------------->
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
                            <!----------------------start of menu---------------------->
                         
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                            <td><a href="#" class="drag">Home</a></td>
                        <td><a href="viewfeedback.jsp"  class="drag">view feedback</a></td>
                        <td><a href="viewcomplain.jsp"  class="drag">view complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
  
                               </tr>
                            </table>
                            <!---------------------end of menu----------------->
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
            <!----------------------end of header-------------------------->
            <br><br><br><br><br>
             <div>
            <br>
            <!--------------------------feedback reply form start-------------------->
            <form action="feedbackreplycon.jsp" method="POST">
            <table bgcolor="white" align="center" cellspacing="20px"  style="background-color:#F0F8FF">
                <tr> <% if(rs.next()){
      

              %>
                 <input type="hidden" name="fid" value="<%=rs.getString("feedbackid")%>">

                    <td>user name </td>
                    <td><input type="text" name="ureply" value="<%=rs.getString("feedback_name")%>">
                                        </td>
                </tr>
                 <tr>
                    <td>feedback reply</td>
                    <td><textarea type="text" name="freply"></textarea></td>
                    <%}}catch(Exception ex){}%>
                </tr>
                 <tr>
                    <td><input type="submit" value="submit" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center"></td>
                    <td><input type="reset" value="cancel" style="background-color:#1E90FF; width:60%;   height:31px;border-radius:8px; color:white; text-align:center"  ></td>
                </tr>
            </table>
            </form>
            <!-----------------------------feedback reply form end------------------------>
            </div>
       
          </div>
                          </body>
                          </html>
                           