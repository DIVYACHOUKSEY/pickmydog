<!DOCTYPE html>
<html>
    <head>
        <title>sighnupPage</title>
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
            function ch()
            {
                if(usersignupform.username.value==0)
                    alert("user name is required");
                 if(usersignupform.useraddress.value==0)
                    alert("address is required");
                if(usersignupform.usermobilenos.value==0)
                    alert("mobile no is required");
              
            if(usersignupform.userdate.value==0)
                    alert("please eanter your date of birth");
            
            if(usersignupform.useraddress.value==0)
                    alert("address is required");
            
            if(usersignupform.useremail.value==0)
                    alert("enter your email id");
            if(usersignupform.userpassword.value==0)
                    alert("enter your email id");
            
            
            }
          
            
        </script>
  
    </head>
     <body bgcolor="white">
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!-----------------start of header ------------------------->
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
                            </table><br><br><br>
                            
                         <!----------------------------------start of menu------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="homepage.jsp" class="drag">Home</a></td>
                        <td><a href="signup.jsp"  class="drag">donate dog</a></td>
                       
                        <td><a href="adminloginform.jsp" class="drag">login</td>
                               </tr>
                            </table>
                           <!----------------------------------end of menu------------------->
                         
                         </td>
                         </tr>
                         </table>
            </div>
            <br><br><br><br><br>
              <div>
                  
                  <center>
                      <table><tr><td>
                      <img src="logis.png" width="80px" height="80px"></td></tr>
                          <tr><td><center> <font style="color:#00BFFF;font-family: arial ;text-align:center">User Signup</font><centre></td></tr></table>
                      </center></div>
        
        <div>
            <br>
              <!----------------------------------signup form start------------------->
                         
            <form action="signupcon.jsp" name="usersignupform">
            <table bgcolor="white" align="center" cellspacing="20px"  style="background-color:#F0F8FF">
                 <tr>
                    <td>enter your name</td>
                    <td><input type="text" name="username"></td>
                </tr>
                 <tr>
                    <td>enter your address</td>
                    <td><input type="textarea" name="useraddress"></td>
                </tr>
                 <tr>
                    <td>enter your mobile no.</td>
                    <td><input type="number" name="usermobilenos"></td> 
                </tr>
                 <tr>
                    <td>enter your date of birth</td>
                    <td><input type="date" name="userdate"></td>
                </tr>
                 <tr>
                    <td>enter email address</td>
                    <td><input type="email" name="useremail"></td>
                </tr>
                 <tr>
                    <td>enter your password</td>
                    <td><input type="password" name="userpassword"></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="submit" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center" onClick="ch()" ></td>
                    <td><input type="reset" value="cancel" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center"  ></td>
                </tr>
            </table>
            </form>
                <!----------------------------------signup form end------------------------------->
                <a href="userlogin.jsp">login</a>  
            </div>
            </div>
    </body>
</html>
