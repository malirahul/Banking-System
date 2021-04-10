package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Password.PassEncrypt;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public final class opencode_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

String name =request.getParameter("name");   
String  address=request.getParameter("address");
String contact =request.getParameter("contact");
String  date =request.getParameter("date");
String adhar=request.getParameter("adhar");
String city=request.getParameter("city");
 String state=request.getParameter("state");
 String pass=request.getParameter("pass");
PassEncrypt pp =new PassEncrypt();
 pass = pp.set(pass);
 session.setAttribute("CALL1",pass);
 session.setAttribute("CALL",name);
 session.setAttribute("CALL2",address);
 session.setAttribute("CALL3",contact);
 session.setAttribute("CALL4",adhar);
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st1=con.prepareStatement("insert into bankuser(name,address,contactno,adharcardno,DOB,pin,city,state,password)values(?,?,?,?,?,?,?,?,?)");
                    st1.setString(1,name);
                    st1.setString(2,address);
                    st1.setString(3,contact);
                    st1.setString(4,adhar);
                    st1.setString(5,date);
                    st1.setInt(6,0000);
                    st1.setString(7,city);
                    st1.setString(8,state);
                    st1.setString(9,pass);
                    st1.executeUpdate();
                    
       response.sendRedirect("code.jsp");

      out.write('\n');
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
