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
               
            }
            
            
          
            
        </style>
        
           
       <%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.ResultSet"%>
        
        
        
    </head>
<body bgcolor="white">
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!---------------------start of header------------------------------>
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
                            
                         <!--------------------------------start of menu--------------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                            
                            <td><a href="#" class="drag">Home</a></td>
                        <td><a href="signup.jsp"  class="drag">donate dog</a></td>
                        <td><a href="aboutus.jsp"  class="drag">About us</a></td>
                        <td><a href="userlogin.jsp" class="drag">login</td>
                           
                           </tr>
                            </table>
                         <!---------------------------------end of menu--------------------------------->
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
            <!---------------------end of the header--------------------------------->
          <br><br><br><b><br>
              <!----------------------------search option start-------------------------------->
            <div class="ser">
                  <form action="searchconhome.jsp" method="POST">
            <table align="center" width="60%">
                <tr> 
                    <BR><BR><form>
                    <td width="80%"><input type="text" style=" width:99%;  height:20px;  "  placeholder="search dog by their category..." name="dogcategory" >
                       
                    <td width="20%"><input type="image"  src="searchlogo.jpg" width="80px" height="31px" alt="submit"></td>
                </tr>
            </table></form>
                    <br></div>
          <!-------------------------------------search option end----------------------------------------->
    <!----------------------------------search result open-------------------------------->
<table width="100%" >
    <div>
        <br><br>
        <table width="80%"  height="100px"align="center" >
            <tr><td>
                   
                
                <table  width="100%"  height="100%" cellspacing="10px" bgcolor="#F0F8FF" >
                    
                       <%
    try{
String dogcats=request.getParameter("dogcategory");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

PreparedStatement st=con.prepareStatement("select*from adoptdog_table where dog_category=?");
        st.setString(1,dogcats);
      
         ResultSet rgs=st.executeQuery();
      
       //-----------------------------start of while loop-------------------------------
    while(rgs.next()){%>
            <tr  >       
                   
                <td style="width:20%;height:100%"  bgcolor="#F0F8FF"><%=rgs.getString("dog_image")%></td>
                <td style="width:80%;height:100px" bgcolor="#F0F8FF">
                    <table width="100%" height="100%" >
                           
              
                         <tr height="6%">
                            
                            <td >
                              
                              <font style="font-size:22;"> <%=rgs.getString("dog_category")%></font>
                                </td></tr>
                            <tr><td style="width:80%;height:100px"><%=rgs.getString("dog_description")%></td>
                            <td align="right">
                                <br><br><br>
                                <table>
                                    <tr>
                                       
                                        <td><a href="showdogdatahome.jsp?id=<%=rgs.getString("dogid")%>"   style="text-decoration:none"> see more...</a></td>
                                    </tr>
                                    </table>
                                </td>
                            </tr>
                           </table>
                    
                </td>
                </tr> 
                
                  <%
                             
                            
                           }
                      //-------------------------------------end of while loop--------------------------------
                    }
                  catch(Exception ex)
                     {
                   ex.printStackTrace();
                }
        

                    %> 
                
                
            </table>
                                    
                                   
                
            </table>
    </div>
                    <br><br><br><br>
    </table>
              </div>
                     <!-------------------------------------end of search result----------------------->
                   
    </body>
    </html>