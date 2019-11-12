package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.jasper.JasperException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>homepage</title>\n");
      out.write("        <style>\n");
      out.write("            .outerdiv{\n");
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
      out.write("            {background-color:white;}\n");
      out.write("            .fon{\n");
      out.write("                font-family: Arial Black;\n");
      out.write("                font-size: 30px;\n");
      out.write("                align: center;\n");
      out.write("                color:black;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .ser{\n");
      out.write("                \n");
      out.write("                width:100%;   \n");
      out.write("                background-color: F8F8FF;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("         \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"white\">\n");
      out.write("          ");

    try{
String dogcat=request.getParameter("dogcategory");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pickmydog","root","root");
          
      out.write("\n");
      out.write("        <!--------------------------------------------------start of header----------------------------------------------------------------------------->\n");
      out.write("        <div class=\"outerdiv\" Style=\" width:100%; height:800px \">\n");
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
      out.write("                        <td align=\"center\"  ><a href=\"#\" class=\"drag\"><img src=\"call.png\" width=\"14px\" height=\"14px\"><font style=\"color:#00BFFF;font-family: arial ;text-align:center;font-size: 12px\"><i>  Helpline no</i></font></a></td>\n");
      out.write("                               </tr>\n");
      out.write("                            </table><br><br>\n");
      out.write("                            <!------------------------------------------start of menu----------------------------------->\n");
      out.write("                            <table class=\"td\" width=\"60%\" align=\"right\">\n");
      out.write("                           <tr align=\"center\">\n");
      out.write("                             <td><a href=\"#\" class=\"drag\">Home</a></td>\n");
      out.write("                        <td><a href=\"signup.jsp\"  class=\"drag\">donate dog</a></td>\n");
      out.write("                        <td><a href=\"aboutus.jsp\"  class=\"drag\">About us</a></td>\n");
      out.write("                        <td><a href=\"userlogin.jsp\" class=\"drag\">login</td>\n");
      out.write("                               </tr>\n");
      out.write("                            </table>\n");
      out.write("                            <!-------------------------------------------end of the menu-------------------------------------->\n");
      out.write("                         </td>\n");
      out.write("                         </tr>\n");
      out.write("                         </table>\n");
      out.write("                <!--------------------------end of header------------------------------->\n");
      out.write("            </div>\n");
      out.write("          <br><br><br><b><br>\n");
      out.write("              <!---------------------start of search option------------------------>\n");
      out.write("              <div class=\"ser\">\n");
      out.write("                  <form action=\"searchconhome.jsp\" method=\"POST\">\n");
      out.write("            <table align=\"center\" width=\"60%\">\n");
      out.write("                <tr> \n");
      out.write("                    <BR><BR><form>\n");
      out.write("                    <td width=\"80%\"><input type=\"text\" style=\" width:99%;  height:20px;  \"  placeholder=\"search dog by their category...\" name=\"dogcategory\" >\n");
      out.write("                       \n");
      out.write("                    <td width=\"20%\"><input type=\"image\"  src=\"searchlogo.jpg\" width=\"80px\" height=\"31px\" alt=\"submit\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table></form><br>\n");
      out.write("                      <form>\n");
      out.write("                </div>\n");
      out.write("              <!---------------end of search option----------------------->\n");
      out.write("            \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              <div>\n");
      out.write("                 \n");
      out.write("            <table width=\"100%\" height=\"650px;\" cellspacing=\"50px\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td height=\"150px\" width=\"20%\" >\n");
      out.write("                        <table height=\"150px\" width=\"100%\" bgcolor=\"#F0F8FF\">\n");
      out.write("                            ");

PreparedStatement st=con.prepareStatement("select*from adoptdog_table where dogid=10");
       
        
         ResultSet rg=st.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg.next()){ 
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><center><img src=\"dog8.jpg\" width=\"100%\" height=\"75px\"></center></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" >\n");
      out.write("                                        <tr>  <td><font style=\"font-size:15px\">");
      out.print(rg.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       </td>\n");
      out.write("                       \n");
      out.write("                        <td height=\"150px\" width=\"20%\">\n");
      out.write("                           \n");
      out.write("                            <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\" >\n");
      out.write("                                 ");

PreparedStatement st6=con.prepareStatement("select*from adoptdog_table where dogid=12");
       
        
         ResultSet rg6=st6.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg6.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog6.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" ><tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg6.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg6.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg6.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                \n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                           \n");
      out.write("                       </td>\n");
      out.write("   \n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                       <td height=\"150px\" width=\"20%\">\n");
      out.write("                           \n");
      out.write("                            <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\" >\n");
      out.write("                                 ");

PreparedStatement st21=con.prepareStatement("select*from adoptdog_table where dogid=14");
       
        
         ResultSet rg21=st21.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg21.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog6.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" ><tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg21.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg21.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                \n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                           \n");
      out.write("                       </td>\n");
      out.write("                    </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td height=\"150px\">\n");
      out.write("                        \n");
      out.write("                         <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\">\n");
      out.write("                             ");

PreparedStatement st3=con.prepareStatement("select*from adoptdog_table where dogid=13");
       
        
         ResultSet rg3=st3.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg3.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog4.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg3.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg3.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("                    <td height=\"150px\">\n");
      out.write("                         <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\">\n");
      out.write("                                ");

PreparedStatement st4=con.prepareStatement("select*from adoptdog_table where dogid=16");
       
        
         ResultSet rg4=st4.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg4.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog3.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" >\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg4.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg4.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("                    <td height=\"150px\">\n");
      out.write("                         <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\">\n");
      out.write("                              ");

PreparedStatement st5=con.prepareStatement("select*from adoptdog_table where dogid=17");
       
        
         ResultSet rg5=st5.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg5.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog6.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" >\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg5.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg5.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                    </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td height=\"150px\">\n");
      out.write("                             <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\">\n");
      out.write("                                 ");

PreparedStatement st11=con.prepareStatement("select*from adoptdog_table where dogid=18");
       
        
         ResultSet rg11=st11.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg11.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog5.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" >\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg11.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg11.getString("dog_description"));
      out.write(" </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg11.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                            \n");
      out.write("                        </td>\n");
      out.write("                        <td height=\"150px\">\n");
      out.write("                             <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\">\n");
      out.write("                                   ");

PreparedStatement st7=con.prepareStatement("select*from adoptdog_table where dogid=25");
       
        
         ResultSet rg7=st7.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg7.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog2.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" >\n");
      out.write("                                        \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg7.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg7.getString("dog_description"));
      out.write("  </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg7.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                        </td>\n");
      out.write("                        <td height=\"150px\">\n");
      out.write("                             <table height=\"150px\" width=\"100%\"  bgcolor=\"#F0F8FF\">\n");
      out.write("                                    ");

PreparedStatement st8=con.prepareStatement("select*from adoptdog_table where dogid=13");
       
        
         ResultSet rg8=st8.executeQuery();
         
        //-------------------------------while loop start------------------------------
    if(rg8.next()){
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               <td><img src=\"dog3.jpg\" width=\"100%\" height=\"75px\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr >\n");
      out.write("                                <td>\n");
      out.write("                                    <table  width=\"100%\" >\n");
      out.write("                                       \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><font style=\"font-size:15px\">");
      out.print(rg8.getString("dog_category"));
      out.write("</font></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <font style=\" font-size:13px \">");
      out.print(rg8.getString("dog_description"));
      out.write("  </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td align=\"right\"><font style=\"font-size:11px \"> <a href=\"showdogdata.jsp?id=");
      out.print(rg8.getString("dogid"));
      out.write("\" style=\"text-decoration:none \">See more...</a></font></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                </tr>");
}}catch(Exception ex){}
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                       \n");
      out.write("                            \n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("            </table>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
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
