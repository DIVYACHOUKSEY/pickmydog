

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
    </head>
    <body bgcolor="white">
        <div class="outerdiv" Style=" width:100%; height:800px ">
            <!----------------start of header---------------------->
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
                         <!------------start of header menu---------------------->
                            <table class="td" width="60%" align="right">
                           <tr align="center">
                             <td><a href="#" class="drag">Home</a></td>
                        <td><a href="viewfeedback.jsp"  class="drag">view feedback</a></td>
                        <td><a href="viewcomplain.jsp"  class="drag">view complain</a></td>
                        <td><a href="homepage.jsp" class="drag">logout</td>
                               </tr>
                            </table>
                         <!-------------------end of header menu-------------------->
                         </td>
                         </tr>
                         </table>
            </div><br><br><br>
    <center><div> <br><br><br>
            <img src="wel.gif">
            <!----------session start-------------->
    <h1><%=session.getAttribute("CALL")%></h1>
    <!-----------------session close---------------->
    </div></center>
        </div>
    </body>
</html>
