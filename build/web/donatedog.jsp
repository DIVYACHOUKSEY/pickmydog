<!DOCTYPE html>
<html>
    <head>
        <title>donatedog</title>
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
            function chec()
            {
                if(donatedogform.dogtype.value==0)
                    alert("please enter the dog category");
                  if(donatedogform.dogdescription.value==0)
                    alert("please add some dog description");
                 
                  if(donatedogform.dogimg.value==0)
                    alert("please add the dog images");
                 
                  if(donatedogform.contactno.value==0)
                    alert("please enter the contact no");
    
                  if(donatedogform.dogtype.value==0)
                    alert("please enter the dog category");
                 
                  if(donatedogform.dogcolor.value==0)
                    alert("please enter the dog color");
                 
             if(donatedogform.dogaddress.value==0)
                    alert("please enter the dog address");
            }
          
            
        </script>
  
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
                            
                         <!-------------------start of menu------------------------------>
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="userhome.jsp" class="drag">Home</a></td>
                             <td><a href="donatedog.jsp"  class="drag">donate dog</a></td>
                        <td><a href="userfeedback.jsp"  class="drag">feedback</a></td>
                        <td><a href="usercomplain.jsp"  class="drag">complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
                               </tr>
                            </table>
                         <!---------------------end of menu-------------------------->
                         </td>
                         </tr>
                         
                          </tr>                 
                </table>
            </div>
            <!-------------------------end of header------------------------>
          <br><br><br><b><br>

        <div> 
            <!--------------dog form start------------------------->
            <form action="donatedogcon.jsp" name="donatedogform" method="POST">
            <table bgcolor="white" align="center" cellspacing="20px">
                <tr><td> <input type="hidden"  name="userid" value="<%=session.getAttribute("CALLS")%>" >
                        <table  cellspacing="25px" style="background-color:#F0F8FF">
                   <tr>
                    <td>enter dog category</td>
                    <td><input type="text" name="dogtype"></td>
                </tr>
                
                 <tr>
                    <td>enter dog description</td>
                    <td><textarea name="dogdescription"></textarea></td>
                </tr>
                 <tr>
                    <td>dog picture upload</td>
                    <td><input type="file"  name="dogimg"></td>
                 </tr><tr>
                    <td>dog video upload</td>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>dog's contact no</td>
                    <td><input type="number" name="contactno"></td>
                </tr>
                <tr>
                    <td>enter dog color</td>
                    <td><input type="text" name="dogcolor"></td>
                </tr>
                <tr>
                    <td>dog's address</td>
                    <td><input type="textarea" name="textarea"></td>
                </tr>
                <tr>
                    
                        <td><font><input type="submit" value="Post" style="background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center" onClick="chec()"></td>
                    <td><input type="cancel" value="cancel"  style="background-color:#1E90FF; width:70%;   height:25px;border-radius:8px; color:white; text-align:center" ></td>
                </tr>
               
                </table></td>
                
                <td>
                     <img src="wall.jpg" width="200px" height="400px"></td><
             </tr>
            </table>
                </form>
            <!-----------------dog form end---------------------->
            </div>
    </body>
</html>
