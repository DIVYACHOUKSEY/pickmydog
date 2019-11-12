<!DOCTYPE html>
<html>
    <head>
        <title>userlogin</title>
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
    
        <script>
            function checks()
            {
                if(userloginform.uemail.value==0)
                    alert("email id is required");
                 if(userloginform.upassword.value==0)
                    alert("password is required");
            
            }
          
            
        </script>
  
    </head>
   
        
   <body bgcolor="white">
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!------------------------------start of header--------------------------->
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
                            
                         <!---------------------------start of menu--------------------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="homepage.jsp" class="drag">Home</a></td>
                        <td><a href="signup.jsp"  class="drag">donate dog</a></td>
                        <td><a href="aboutus.jsp"  class="drag">About us</a></td>
                        <td><a href="userlogin.jsp" class="drag">login</td>
                               </tr>
                            </table>
                         <!----------------------------end of menu-------------------------->
                         </td>
                         </tr>
                         </table>
            </div>
            <!------------------------end of header--------------------------->
          <br><br>
         
        <div>
            <br><br><br>
            <table align="center">
                
                
                <tr><td><img src="loginimage.jpg" width="150px" height="150px"></td></tr>
                <tr><td><center> <font style="color:#00BFFF;font-family: arial ;text-align:center">User login</font><centre></td></tr>
                </table>
            <br>
            <table>
                <!----------------------------start of login form-------------------->
                <form action="userlogincon.jsp" name="userloginform" method="POST">
            <table align="center"cellspacing="25px" style="background-color:#F0F8FF">
                 <tr>
                    <td>login id</td>
                    <td><input type="emain" name="uemail"></td>
                </tr>
                 <tr>
                    <td>password</td>
                    <td><input type="pasword" name="upasswords"></td>
                </tr>
                 <tr >
                     <td calspan="2"><input type="submit" value="submit"style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center" onClick="checks()" ></td>
                     <td><input type="reset" style="background-color:#1E90FF; width:50%;   height:31px;border-radius:8px; color:white; text-align:center"  value="cancel"></td>
                </tr>
            </table>
                </form>
                <!-------------------------------end of login form----------------------------->
                <br>
                <center>
                <table>
                <tr><td>
                        
                        <font style="font-size:15px">or <a href="userforgetpassword.jsp"> forget password?</a></font>
                               
                                </td></tr>
                <tr>
                <td>
                   <a href="signup.jsp"> <button style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center"  >Signup here</button></a></td></tr>
            </table>
                    </center>
            </div>
           </div>
    </body>
</html>
