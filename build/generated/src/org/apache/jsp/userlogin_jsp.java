package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>userlogin</title>\n");
      out.write("        <style>\n");
      out.write("              .outerdiv{\n");
      out.write("            width: 100%;      \n");
      out.write("            }\n");
      out.write("            .header{\n");
      out.write("                width:100%; height:7px; \n");
      out.write("                background-color: #F0F8FF;\n");
      out.write("               }\n");
      out.write("            .headertable{\n");
      out.write("                 width:100%;height:7px;\n");
      out.write("                 background-color: #F0F8FF;\n");
      out.write("             \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .logo{\n");
      out.write("                width: 100%;\n");
      out.write("                size:30%;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .tb{\n");
      out.write("                width:100%;\n");
      out.write("                align:center;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .drag{\n");
      out.write("               text-decoration: none;\n");
      out.write("               font-family: Calibri;\n");
      out.write("               font-size:12;\n");
      out.write("               width:100%;\n");
      out.write("               align: center;\n");
      out.write("               color:black;\n");
      out.write("              \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .drag:hover\n");
      out.write("            {background-color:#87CEFA;}\n");
      out.write("            .fon{\n");
      out.write("                font-family: Arial Black;\n");
      out.write("                font-size: 30px;\n");
      out.write("                align: center;\n");
      out.write("                color:black;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .ser{\n");
      out.write("                width:100%;   \n");
      out.write("                background-color: F8F8FF;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("          \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    \n");
      out.write("        <script>\n");
      out.write("            function checks()\n");
      out.write("            {\n");
      out.write("                if(userloginform.uemail.value==0)\n");
      out.write("                    alert(\"email id is required\");\n");
      out.write("                 if(userloginform.upassword.value==0)\n");
      out.write("                    alert(\"password is required\");\n");
      out.write("            \n");
      out.write("            }\n");
      out.write("          \n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("  \n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("        \n");
      out.write("   <body bgcolor=\"white\">\n");
      out.write("        <div class=\"outerdiv\" Style=\" width:100%; height:800px \">\n");
      out.write("            <!------------------------------start of header--------------------------->\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <table class=\"headertable\" >\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       <table  class=\"logo\" ><tr><td>\n");
      out.write("                       <img src=\"doglogo.png\" width=\"100%\" height=\"70px\"></td>\n");
      out.write("                        <td><font class=\"fon\"><b>Pickmydog</b></font></td>\n");
      out.write("                        </tr>                 \n");
      out.write("                        </table></td>\n");
      out.write("                        <td width=\"70%\">\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                                 <table width=\"40%\" align=\"right\"  >\n");
      out.write("                           <tr>\n");
      out.write("                          <td align=\"right\" ><a href=\"mailto:\"  class=\"drag\"><img src=\"emails.png\" width=\"14px\" height=\"12px\"> <font style=\"color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px\"><i>Email</i></font></a></td>\n");
      out.write("                        <td align=\"center\"  ><a href=\"#\" class=\"drag\"><img src=\"call.png\" width=\"14px\" height=\"14px\"><font style=\"color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px\"><i>  Helpline no</i></a></font></td>\n");
      out.write("                               </tr>\n");
      out.write("                            </table><br><br>\n");
      out.write("                            \n");
      out.write("                         <!---------------------------start of menu--------------------------------->\n");
      out.write("                            <table class=\"td\" width=\"60%\" align=\"right\">\n");
      out.write("                           <tr align=\"center\">\n");
      out.write("                             <td><a href=\"homepage.jsp\" class=\"drag\">Home</a></td>\n");
      out.write("                        <td><a href=\"signup.jsp\"  class=\"drag\">donate dog</a></td>\n");
      out.write("                        <td><a href=\"aboutus.jsp\"  class=\"drag\">About us</a></td>\n");
      out.write("                        <td><a href=\"userlogin.jsp\" class=\"drag\">login</td>\n");
      out.write("                               </tr>\n");
      out.write("                            </table>\n");
      out.write("                         <!----------------------------end of menu-------------------------->\n");
      out.write("                         </td>\n");
      out.write("                         </tr>\n");
      out.write("                         </table>\n");
      out.write("            </div>\n");
      out.write("            <!------------------------end of header--------------------------->\n");
      out.write("          <br><br>\n");
      out.write("         \n");
      out.write("        <div>\n");
      out.write("            <br><br><br>\n");
      out.write("            <table align=\"center\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <tr><td><img src=\"loginimage.jpg\" width=\"150px\" height=\"150px\"></td></tr>\n");
      out.write("                <tr><td><center> <font style=\"color:#00BFFF;font-family: arial ;text-align:center\">User login</font><centre></td></tr>\n");
      out.write("                </table>\n");
      out.write("            <br>\n");
      out.write("            <table>\n");
      out.write("                <!----------------------------start of login form-------------------->\n");
      out.write("                <form action=\"userlogincon.jsp\" name=\"userloginform\" method=\"POST\">\n");
      out.write("            <table align=\"center\"cellspacing=\"25px\" style=\"background-color:#F0F8FF\">\n");
      out.write("                 <tr>\n");
      out.write("                    <td>login id</td>\n");
      out.write("                    <td><input type=\"emain\" name=\"uemail\"></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>password</td>\n");
      out.write("                    <td><input type=\"pasword\" name=\"upasswords\"></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr >\n");
      out.write("                     <td calspan=\"2\"><input type=\"submit\" value=\"submit\"style=\"background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center\" onClick=\"checks()\" ></td>\n");
      out.write("                     <td><input type=\"reset\" style=\"background-color:#1E90FF; width:50%;   height:31px;border-radius:8px; color:white; text-align:center\"  value=\"cancel\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                </form>\n");
      out.write("                <!-------------------------------end of login form----------------------------->\n");
      out.write("                <br>\n");
      out.write("                <center>\n");
      out.write("                <table>\n");
      out.write("                <tr><td>\n");
      out.write("                        \n");
      out.write("                        <font style=\"font-size:15px\">or <a href=\"userforgetpassword.jsp\"> forget password?</a></font>\n");
      out.write("                               \n");
      out.write("                                </td></tr>\n");
      out.write("                <tr>\n");
      out.write("                <td>\n");
      out.write("                   <a href=\"signup.jsp\"> <button style=\"background-color:#1E90FF; width:100%;   height:31px;border-radius:8px; color:white; text-align:center\"  >Signup here</button></a></td></tr>\n");
      out.write("            </table>\n");
      out.write("                    </center>\n");
      out.write("            </div>\n");
      out.write("           </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
