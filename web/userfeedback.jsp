<!DOCTYPE html>
<html>
    <head>
        <title>userfeedback</title>
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
            function fee()
            {
                if(feesk.feedbackname.value==0)
                    alert("please enter your name");
               
             }
          
            
        </script>
  
    
    </head>
    

<body bgcolor="white">
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!----------------------start of header----------------------------->
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
                             <td><a href="userhome.jsp" class="drag">Home</a></td>
                             <td><a href="donatedog.jsp"  class="drag">donate dog</a></td>
                        <td><a href="userfeedback.jsp"  class="drag">feedback</a></td>
                        <td><a href="usercomplain.jsp"  class="drag">complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
                               </tr>
                            </table>
                           <!----------------------end of menu----------------------------->
           
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
             <!----------------------end of header----------------------------->
           
          <br><br><br><b><br>

    
        <div><br><br>
            <div><center>
        <img src="fd.jpg" width="300px" height="120px" ><center>
        </div>
             <!----------------------start of feedback form----------------------------->
           
            <form action="userfeedbackcon.jsp" name="feesk" method="POST">
            <table bgcolor="white" align="center" cellspacing="25px" style="background-color:#F0F8FF" >
                 <tr>
                    <td>your name</td>
                    <td><input type="text" name="feedbackname"></td>
                </tr>
                 <tr>
                    <td>feedback</td>
                    <td><textarea type="textarea" name="feedback"></textarea></td>
                </tr>
                 <tr>
                    <td>contact no</td>
                    <td><input type="number" name="feedbackcontact"></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="submit" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center" onClick="fee()"></td>
                    <td><input type="reset" value="cancel"  style="background-color:#1E90FF; width:50%;   height:31px;border-radius:8px; color:white; text-align:center"></td>
                </tr>
            </table>
                </form>
               <!----------------------end of feedback form----------------------------->
           
                </table>
            </div>
         </div>
    </body>
</html>
