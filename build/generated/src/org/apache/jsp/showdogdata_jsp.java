package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
import java.lang.System;

public final class showdogdata_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>homepage</title>\n");
      out.write("        <style>\n");
      out.write("            .outerdiv{\n");
      out.write("            width: 100%;      \n");
      out.write("            }\n");
      out.write("            .header{\n");
      out.write("                width:100%; height:8px; \n");
      out.write("                background-color: #F0F8FF;\n");
      out.write("               }\n");
      out.write("            .headertable{\n");
      out.write("                 width:100%;height:8px;\n");
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
      out.write("               font-size:16;\n");
      out.write("               width:100%;\n");
      out.write("               align: center;\n");
      out.write("               color:black;\n");
      out.write("              \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .drag:hover\n");
      out.write("            {background-color:white;}\n");
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
      out.write("           \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"white\">\n");
      out.write("        <div class=\"outerdiv\" Style=\" width:100%; height:800px \">\n");
      out.write("            <!------------------------------start of header-------------------------->\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <table class=\"headertable\" >\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       <table  class=\"logo\" width=\"40%\" ><tr><td>\n");
      out.write("                       <img src=\"doglogo.png\" width=\"100%\" height=\"70px\"></td>\n");
      out.write("                        <td><font class=\"fon\"><b>Pickmydog</b></font></td>\n");
      out.write("                        </tr>                 \n");
      out.write("                        </table></td>\n");
      out.write("                        <td width=\"70%\">\n");
      out.write("                                 \n");
      out.write("                                 <table width=\"40%\" align=\"right\"  >\n");
      out.write("                           <tr>\n");
      out.write("                          <td align=\"right\" ><a href=\"mailto:\"  class=\"drag\"><img src=\"emails.png\" width=\"14px\" height=\"12px\"> <font style=\"color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px\"><i>Email</i></font></a></td>\n");
      out.write("                        <td align=\"center\"  ><a href=\"#\" class=\"drag\"><img src=\"call.png\" width=\"14px\" height=\"14px\"><font style=\"color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px\"><i>  Helpline no</i></a></font></td>\n");
      out.write("                               </tr>\n");
      out.write("                            </table><br><br>\n");
      out.write("                            <!-------------------------start  of  menu---------------------->\n");
      out.write("                            <table class=\"td\" width=\"60%\" align=\"right\">\n");
      out.write("                           <tr align=\"center\">\n");
      out.write("                            <td><a href=\"userhome.jsp\" class=\"drag\">Home</a></td>\n");
      out.write("                             <td><a href=\"donatedog.jsp\"  class=\"drag\">donate dog</a></td>\n");
      out.write("                        <td><a href=\"viewuserpostlist.jsp\"  class=\"drag\">view my post</a></td>\n");
      out.write("                        <td><a href=\"userfeedback.jsp\"  class=\"drag\">feedback</a></td>\n");
      out.write("                        <td><a href=\"usercomplain.jsp\"  class=\"drag\">complain</a></td>\n");
      out.write("                        <td><a href=\"homepage.jsp\" class=\"drag\">logout</td>\n");
      out.write("                             \n");
      out.write("                           </tr>\n");
      out.write("                            </table>\n");
      out.write("                            <!-------------------------end  of  menu---------------------->\n");
      out.write("  \n");
      out.write("                         </td>\n");
      out.write("                         </tr>\n");
      out.write("                         </table>\n");
      out.write("            </div>\n");
      out.write("              <!-------------------------end  of  header---------------------->\n");
      out.write("  \n");
      out.write("          <br><br><br><b><br><br><br><b><br>\n");
      out.write("\n");
      out.write("                 <!-------------------------show dog data form start---------------------->\n");
      out.write("  \n");
      out.write("                  <div align=\"center\"><table width=\"344\" bgcolor=\"#F0F8FF\">\n");
      out.write("                               ");
 
try{
    int cids=Integer.parseInt(request.getParameter("id"));
    

         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

         PreparedStatement
        rg= con.prepareStatement("select*from adoptdog_table where dogid=? ");
      rg.setInt(1,cids);
       
        ResultSet rs=rg.executeQuery();
        //--------------------start of if statement-------------------------
    if(rs.next()){
      

              
      out.write("\n");
      out.write("                          \n");
      out.write("                          <tr width=\"10%\" cellspacing=\"2\"><td width=\"327\" ><img src=\"");
      out.print(rs.getBlob("dog_image"));
      out.write("\" width=\"50px\" height=\"50px\"></td><td width=\"8\"></td></tr>\n");
      out.write("                   \n");
      out.write("             \n");
      out.write("\n");
      out.write("                        <tr><td>\n");
      out.write("                            <table width=\"100%\" height=\"30%\"  bgcolor=\"#F0F8FF\" cellspacing=\"20px\">\n");
      out.write("                          <tr>                   \n");
      out.write("                            <td>dog category</td>\n");
      out.write("                           <td style=\"text-align:left\">");
      out.print(rs.getString("dog_category"));
      out.write("</td>\n");
      out.write("                           </tr>\n");
      out.write("                           <tr>\n");
      out.write("                               <td>dog description </td>\n");
      out.write("                               <td style=\"text-align:left\">");
      out.print(rs.getString("dog_description"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                              <tr>\n");
      out.write("                           <td>dog mobile no</td>\n");
      out.write("                            <td style=\"text-align:left\">");
      out.print(rs.getString("dog_mobileno"));
      out.write("</td>\n");
      out.write("                             </tr>\n");
      out.write("                             <tr><td>dog color</td>\n");
      out.write("                            <td style=\"text-align:left\">");
      out.print(rs.getString("dog_color"));
      out.write("</td>\n");
      out.write("                              </tr>\n");
      out.write("                              <tr>\n");
      out.write("                              <td>dog address</td>\n");
      out.write("                           <td style=\"text-align:left\">");
      out.print(rs.getString("dog_address"));
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                \n");
      out.write("                     <td align=\"center\" style=\"background-color:#1E90FF; width:50%;   height:31px;border-radius:8px; color:white; text-align:center\" ><a a href=\"#\" style=\"color:white;text-decoration:none\">call</a></td>       \n");
      out.write("                         <td align=\"right\" style=\"background-color:#1E90FF; width:80%;   height:31px;border-radius:8px; color:white; text-align:center\" ><a a href=\"#\" style=\"align:right;color:white;text-decoration:none\" >message</a></td>\n");
      out.write("              </tr></tbody></table><td></tr></table>    ");
 }  
                //----------------------------------end of if statement--------------------------------
                      }catch(Exception ex){

                    ex.printStackTrace();
                          }
                             
      out.write("\n");
      out.write("                             \n");
      out.write("                           \n");
      out.write("                             </div>\n");
      out.write("                               <!-------------------------show dog data form end---------------------->\n");
      out.write("  \n");
      out.write("                             </div>\n");
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
