<%@page import="Password.PassEncrypt"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String name=request.getParameter("name");
String ad=request.getParameter("email");
String num=request.getParameter("number");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
{
        if(pass1.equals(pass2))
        {
                PassEncrypt rs1=new PassEncrypt();
                pass1=rs1.set(pass1);
                Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st1=con.prepareStatement("select * from bankuser where adharcardno=? and name=? and contactno=?");
 st1.setString(1,ad);
 st1.setString(2,name);
 st1.setString(3,num);
        ResultSet rs=st1.executeQuery();
         if(rs.next())
         {
                 PreparedStatement st=con.prepareStatement("update bankuser set password=? where name=?");
                 st.setString(1, pass1);
                 st.setString(2, name);
                 st.executeUpdate();
         }
          response.sendRedirect("signup.jsp");
        }
}
%>