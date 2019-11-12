

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>userhomepage</title>
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
        
         <%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.ResultSet"%>
    </head>
<body bgcolor="white">
       <%
    try{
String dogcat=request.getParameter("dogcategory");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
          %>
    
    
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!----------------------------start of header------------------------->
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
                            
                            <!----------------------start of menu----------------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="#" class="drag">Home</a></td>
                             <td><a href="donatedog.jsp"  class="drag">donate dog</a></td>
                        <td><a href="userfeedback.jsp"  class="drag">feedback</a></td>
                        <td><a href="usercomplain.jsp"  class="drag">complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
                               </tr>
                            </table>
                            <!---------------------end of menu----------------------------->
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
            <!------------------------end of header------------------------------->
          <br><br><br><b><br>
              <!-----------------------start of search----------------------------------->
            <div class="ser">
                <form action="searchcon.jsp" method="POST">
            <table align="center" width="60%">
                <tr> 
                    <BR><BR>
                    <td width="80%"><input type="text" style=" width:99%;  height:20px;  " placeholder="search dog by their category..."  name="dogcategory"></td>
                    <td width="20%"><input type="image"  src="searchlogo.jpg" width="80px" height="31px" alt="submit"></td>
                </tr>
            </table></form>
                </div>
              <!----------------------------end of search----------------------------->
              <!----------session start-------------->
              
    <!-----------------session close---------------->
              
              <!------------------------------start of short poster--------------------------->
                <div>
                 
            <table width="100%" height="650px;" cellspacing="50px" align="center">
                <tr>
                    <td height="150px" width="20%" >
                        <table height="150px" width="100%" bgcolor="#F0F8FF">
                            <%
PreparedStatement st=con.prepareStatement("select*from adoptdog_table where dogid=10");
       
        
         ResultSet rg=st.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg.next()){ %>
                            <tr>
                               <td><center><img src="dog8.jpg" width="100%" height="75px"></center></td>
                            </tr>
                            <tr>
                                <td>
                                    <table  width="100%" >
                                        <tr>  <td><font style="font-size:15px"><%=rg.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}%>
                            </table>
                       </td>
                       
                        <td height="150px" width="20%">
                           
                            <table height="150px" width="100%"  bgcolor="#F0F8FF" >
                                 <%
PreparedStatement st6=con.prepareStatement("select*from adoptdog_table where dogid=10");
       
        
         ResultSet rg6=st6.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg6.next()){%>
                            <tr>
                               <td><img src="dog6.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" ><tr>
                                            <td><font style="font-size:15px"><%=rg6.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg6.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg6.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                                
                                    </table>
                                    
                                </td>
                                </tr>
                                <%}%>
                            </table>
                       
                           
                       </td>
   
                       
                       
                       <td height="150px" width="20%">
                           
                            <table height="150px" width="100%"  bgcolor="#F0F8FF" >
                                 <%
PreparedStatement st21=con.prepareStatement("select*from adoptdog_table where dogid=12");
       
        
         ResultSet rg21=st21.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg21.next()){%>
                            <tr>
                               <td><img src="dog6.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" ><tr>
                                            <td><font style="font-size:15px"><%=rg21.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg21.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                                
                                    </table>
                                    
                                </td>
                                </tr>
                                <%}%>
                            </table>
                       
                           
                       </td>
                    </tr>
                
                <tr>
                    <td height="150px">
                        
                         <table height="150px" width="100%"  bgcolor="#F0F8FF">
                             <%
PreparedStatement st3=con.prepareStatement("select*from adoptdog_table where dogid=25");
       
        
         ResultSet rg3=st3.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg3.next()){%>
                            <tr>
                               <td><img src="dog4.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%">
                                        <tr>
                                            <td><font style="font-size:15px"><%=rg3.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg3.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}%>
                            </table>
                       
                        
                    </td>
                    <td height="150px">
                         <table height="150px" width="100%"  bgcolor="#F0F8FF">
                                <%
PreparedStatement st4=con.prepareStatement("select*from adoptdog_table where dogid=18");
       
        
         ResultSet rg4=st4.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg4.next()){%>
                            <tr>
                               <td><img src="dog3.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" >
                                        <tr>
                                            <td><font style="font-size:15px"><%=rg4.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg4.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}%>
                            </table>
                       
                        
                    </td>
                    <td height="150px">
                         <table height="150px" width="100%"  bgcolor="#F0F8FF">
                              <%
PreparedStatement st5=con.prepareStatement("select*from adoptdog_table where dogid=24");
       
        
         ResultSet rg5=st5.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg5.next()){%>
                            <tr>
                               <td><img src="dog6.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" >
                                        <tr>
                                            <td><font style="font-size:15px"><%=rg5.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg5.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}%>
                            </table>
                       
                    </td>
                    </tr>
                    <tr>
                        <td height="150px">
                             <table height="150px" width="100%"  bgcolor="#F0F8FF">
                                 <%
PreparedStatement st11=con.prepareStatement("select*from adoptdog_table where dogid=26");
       
        
         ResultSet rg11=st11.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg11.next()){%>
                            <tr>
                               <td><img src="dog5.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" >
                                        <tr>
                                            <td><font style="font-size:15px"><%=rg11.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg11.getString("dog_description")%> </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg11.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}%>
                            </table>
                       
                            
                        </td>
                        <td height="150px">
                             <table height="150px" width="100%"  bgcolor="#F0F8FF">
                                   <%
PreparedStatement st7=con.prepareStatement("select*from adoptdog_table where dogid=10");
       
        
         ResultSet rg7=st7.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg7.next()){%>
                            <tr>
                               <td><img src="dog2.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" >
                                        
                                        <tr>
                                            <td><font style="font-size:15px"><%=rg7.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg7.getString("dog_description")%>  </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg7.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}%>
                            </table>
                       
                        </td>
                        <td height="150px">
                             <table height="150px" width="100%"  bgcolor="#F0F8FF">
                                    <%
PreparedStatement st8=con.prepareStatement("select*from adoptdog_table where dogid=13");
       
        
         ResultSet rg8=st8.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg8.next()){%>
                            <tr>
                               <td><img src="dog3.jpg" width="100%" height="75px"></td>
                            </tr>
                            <tr >
                                <td>
                                    <table  width="100%" >
                                       
                                        <tr>
                                            <td><font style="font-size:15px"><%=rg8.getString("dog_category")%></font></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font style=" font-size:13px "><%=rg8.getString("dog_description")%>  </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right"><font style="font-size:11px "> <a href="showdogdatahome.jsp?id=<%=rg8.getString("dogid")%>" style="text-decoration:none ">See more...</a></font></td>
                                                    </tr>
                                    </table>
                                    
                                </td>
                                </tr><%}}catch(Exception ex){}%>
                            </table>
                       
                            
                        </td>
                    </tr>
            </table>
                </div>
        </div>
    </body>
    

</html>
