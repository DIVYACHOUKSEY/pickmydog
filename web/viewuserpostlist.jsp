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
 <%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
        
        
        
    </head>
<body bgcolor="white">
     
        <div class="outerdiv" Style=" width:100%; height:800px ">
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
                            
                         
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="userhome.jsp" class="drag">Home</a></td>
                             <td><a href="donatedog.jsp"  class="drag">donate dog</a></td>
                        <td><a href="viewuserpostlist.jsp"  class="drag">view my post</a></td>
                        <td><a href="userfeedback.jsp"  class="drag">feedback</a></td>
                        <td><a href="usercomplain.jsp"  class="drag">complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
                               </tr>
                            </table>
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
          <br><br><br><b><br>
<%String usid=session.getAttribute("CALLS");%>           
<table width="100%" > <div>
        <br><br>  <%
          
           String userids=request.getParameter("usid");
           
        try
        {
            
     Class.forName("com.mysql.jdbc.Driver");
        
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
             PreparedStatement st33=con.prepareStatement("select*from adoptdog_table where userid=?");
        st33.setString(1,userids);
        
   
    ResultSet rs33=st33.executeQuery();
    if(rs33.next()){
       
         PreparedStatement st=con.prepareStatement("select*from adoptdog_table");
        
     ResultSet rs=st.executeQuery();
                            //-----------------------------start of while------------------------
                           while(rs.next()){%>
        <table width="80%"  height="150px"align="center" >
            <tr><td>
                <table  width="100%" bgcolor="#F0F8FF" height="100%">
            <tr>
                <td style="width:20%;height:100%"><img src="dog2.jpg" width="100%" height="100%"></td>
                <td style="width:80%;height:100px">
                   
                    <table width="100%" height="100%" >
                         <tr height="6%">
                            <td >
                               
                              <font style="font-size:22;"><%=rs.getString("dog_category")%> </font>
                                </td></tr>
                            <tr><td style="width:80%;height:100px"><%=rs.getString("dog_description")%></td>
                            <td align="right">
                                <br><br><br>
                                <table>
                                  
      
                                    <tr>
                                        
                                        <td><a href="editdogpost.jsp?id=<%=rs.getString("dogid")%>"   style="text-decoration:none">edit</a></td>
                                        <td><a href="deletedogpost.jsp?id=<%=rs.getString("dogid")%>"   style="text-decoration:none">delete</a></td>
   
                                    </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    
                </td>
                </tr>
            </table>
            </table><%}}
                        else
                             {System.out.println("dsdssssds");}}catch(Exception ex){
                                ex.printStackTrace();
                      }%><br><br>
    </div>
                    <br><br><br><br>
    </table>
              
              
         
 
            </div>
    </body>
    </html>