<!DOCTYPE html>
<html>
    <head>
        <title>sighnupPage</title>
    </head>
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
           <!----------------------header start--------------------->
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
                         <!------------------header menu start----------------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="#" class="drag">Home</a></td>
                        <td><a href="signup.jsp"  class="drag">donate dog</a></td>
                        <td><a href="aboutus.jsp"  class="drag">About us</a></td>
                        <td><a href="userlogin.jsp" class="drag">login</td>
                               </tr>
                            </table>
                         <!------------------header menu end--------------------------->
                         </td>
                         </tr>
                         </table>
            </div>
           <!---------------end of header------------------------>
    <br><br><br><br><br>
        
    <div>
            <table align="center">
            <tr><td><img src="logis.png" width="100px" height="100px"></td></tr>
                <tr><td><center> <font style="color:#00BFFF;font-family: arial ;text-align:center">forget password</font><centre></td></tr>
                </table>
            <br><div>
                <!-------------forget password table start----------------->
            <form action="adminforgetpasswordcon.jsp" method="POST">
            <table align="center" cellspacing="15px" style="background-color:#F0F8FF">
                 <tr>
                    <td>enter your email id</td>
                    <td><input type="text" name="afname"></td>
                </tr>
                 <tr>
                    <td>enter password</td>
                    <td><input type="password" name="afpass"></td>
                </tr>
                 <tr>
                    <td>confirm password</td>
                    <td><input type="password" name="afpass1"></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="submit" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center" ></td>
                    <td><input type="reset" value="cancel" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center" ></td>
                </tr>
            </table>
            </form>
                <!-----------------forget password table end------------------------------>
            </div>
            </div>
    </body>
</html>
