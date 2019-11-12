<html>
    <head>
        
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
               font-size:16;
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
       
       <%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.ResultSet"%>
        
        
    </head>
<body bgcolor="white">
    
    <%
        try
        {
     Class.forName("com.mysql.jdbc.Driver");
        
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
             PreparedStatement st=con.prepareStatement("select*from feedback_table");
       
   
    ResultSet rs=st.executeQuery(); %>
   
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!------------------------start of header------------------->
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
                            
                         <!--------------------start of menu----------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                           <td><a href="adminhome.jsp" class="drag">Home</a></td>
                        <td><a href="viewfeedback.jsp"  class="drag">view feedback</a></td>
                        <td><a href="viewcomplain.jsp"  class="drag">view complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
  
                           </tr>
                            </table>
                         <!----------------------end of menu----------------------------------->
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
            <!-----------------------end of header------------------------->
          <br><br><br><b><br>
    <div><center><br><br>
        <img src="feed.png" width="300px" height="90px" ><center>
        </div>
            
<table border="1" width="100%" >
    <div>
        
        <table width="80%"  align="center">
            <tr><td>
                <table  width="100%"cellspacing="30px" >
            <tr>
               
                <td style="width:80%;height:100px"  >
                    <!--------------------start of feedback------------------------->
                    <table width="100%" height="100%" border="1"  bgcolor="#F0F8FF">
                        <thead><tr>
                            
                            <th>User name</th>
                            <th>Feedback</th>
                            <th>User Mobile no</th>
                             <th>Reply</th>
                              <th>Delete</th>
                          </tr></thead>
                        <tbody><%
                            //-----------------------------start of while------------------------
                            while(rs.next()){%>
                            <tr>
                            <td style="text-align:center"><%=rs.getString("feedback_name")%></td>
                            <td style="text-align:center"><%=rs.getString("feedback")%></td>
                            <td style="text-align:center"><%=rs.getString("feedback_contactno")%></td>
                          <td align="center"><a href="feedbackreply.jsp?id=<%=rs.getString("feedbackid")%>" style="text-decoration:none ">reply </a></td>
                          <td align="center"><a a href="feedbackdelete.jsp?id=<%=rs.getString("feedbackid")%>"style="text-decoration:none ">delete </a></td>       
                                
                            
                            </tr><%}%></tbody></table><br><%}
                               //--------------------------end of while---------------------------
                          catch(Exception ex){}%>
                           
                            </tr>
                    </table>
                          <!------------------end of feedback--------------------------->
                    
                </td>
                </tr>
                
              </table>
            </table>
    </div>
    </table>
            </div>
    </body>
</html>