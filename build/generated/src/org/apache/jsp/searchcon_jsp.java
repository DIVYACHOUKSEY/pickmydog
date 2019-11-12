package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.jasper.JasperException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public final class searchcon_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
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
      out.write("               font-size:16;\n");
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
      out.write("               \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("          \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("           \n");
      out.write("       \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("<body bgcolor=\"white\">\n");
      out.write("        <div class=\"outerdiv\" Style=\" width:100%; height:800px \">\n");
      out.write("            <!-----------------start of header-------------------->\n");
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
      out.write("                         <!----------------start of menu---------------->\n");
      out.write("                            <table class=\"td\" width=\"60%\" align=\"right\">\n");
      out.write("                           <tr align=\"center\">\n");
      out.write("                             <td><a href=\"userhome.jsp\" class=\"drag\">Home</a></td>\n");
      out.write("                             <td><a href=\"donatedog.jsp\"  class=\"drag\">donate dog</a></td>\n");
      out.write("                        <td><a href=\"viewuserpostlist.jsp\"  class=\"drag\">view my post</a></td>\n");
      out.write("                        <td><a href=\"userfeedback.jsp\"  class=\"drag\">feedback</a></td>\n");
      out.write("                        <td><a href=\"usercomplain.jsp\"  class=\"drag\">complain</a></td>\n");
      out.write("                        <td><a href=\"homepage.jsp\" class=\"drag\">logout</td>\n");
      out.write("                               </tr>\n");
      out.write("                            </table>\n");
      out.write("                         <!-------------------end of menu------------------------->\n");
      out.write("                         </td>\n");
      out.write("                         </tr>\n");
      out.write("                         \n");
      out.write("                          </tr>                 \n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <!----------------------end of header------------------------->\n");
      out.write("          <br><br><br><b><br>\n");
      out.write("              <!----------------start of search option------------------------->\n");
      out.write("            <div class=\"ser\">\n");
      out.write("                  <form action=\"searchcon.jsp\" method=\"POST\">\n");
      out.write("            <table align=\"center\" width=\"60%\">\n");
      out.write("                <tr> \n");
      out.write("                    <BR><BR><form>\n");
      out.write("                    <td width=\"80%\"><input type=\"text\" style=\" width:99%;  height:20px;  \"  placeholder=\"search dog by their category...\" name=\"dogcategory\" >\n");
      out.write("                       \n");
      out.write("                    <td width=\"20%\"><input type=\"image\"  src=\"searchlogo.jpg\" width=\"80px\" height=\"31px\" alt=\"submit\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table></form>\n");
      out.write("                    <br></div>\n");
      out.write("          <!---------------------------end of search option------------------------------>\n");
      out.write("    <!-----------------------------search result start--------------------------->\n");
      out.write("<table width=\"100%\" >\n");
      out.write("    <div>\n");
      out.write("        <br><br>\n");
      out.write("        <table width=\"80%\"  height=\"100px\"align=\"center\" >\n");
      out.write("            <tr><td>\n");
      out.write("                <table  width=\"100%\"  height=\"100%\" cellspacing=\"10px\" bgcolor=\"#F0F8FF\">\n");
      out.write("            <tr>       \n");
      out.write("                         ");

    try{
String dogcat=request.getParameter("dogcategory");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");

PreparedStatement st=con.prepareStatement("select*from adoptdog_table where dog_category=?");
        st.setString(1,dogcat);
        
         ResultSet rg=st.executeQuery();
         
        //-------------------------------while loop start------------------------------
    while(rg.next()){
      out.write("\n");
      out.write("                <td style=\"width:20%;height:100%\"  bgcolor=\"#F0F8FF\"><img src=\"");
      out.print(rg.getBlob("dog_image"));
      out.write("\"></td>\n");
      out.write("                <td style=\"width:80%;height:100px\" bgcolor=\"#F0F8FF\">\n");
      out.write("                    <table width=\"100%\" height=\"100%\" >\n");
      out.write("                           \n");
      out.write("              \n");
      out.write("                         <tr height=\"6%\">\n");
      out.write("                            \n");
      out.write("                            <td >\n");
      out.write("                              \n");
      out.write("                              <font style=\"font-size:22;\"> ");
      out.print(rg.getString("dog_category"));
      out.write("</font>\n");
      out.write("                                </td></tr>\n");
      out.write("                            <tr><td style=\"width:80%;height:100px\">");
      out.print(rg.getString("dog_description"));
      out.write("</td>\n");
      out.write("                            <td align=\"right\">\n");
      out.write("                                <br><br><br>\n");
      out.write("                                <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                       \n");
      out.write("                                        <td><a href=\"showdogdata.jsp?id=");
      out.print(rg.getString("dogid"));
      out.write("\"   style=\"text-decoration:none\"> see more...</a></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                           </table>\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("                </tr>  ");

                                  }
                      //-------------------------------while loop end-------------------------------
                    }
                  catch(Exception ex)
                     {
                   ex.printStackTrace();
                }
        

                    
      out.write(" \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("            </table>\n");
      out.write("    </div>\n");
      out.write("                    <br><br><br><br>\n");
      out.write("    </table>\n");
      out.write("              <!-------------------------------------search result end------------------------>\n");
      out.write("              \n");
      out.write("         \n");
      out.write(" \n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("    </html>");
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
