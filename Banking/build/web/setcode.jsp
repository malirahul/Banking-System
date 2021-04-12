<%@page import="Password.PassEncrypt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%> 
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.swing.JOptionPane"%>
<%
    String email=request.getParameter("pass");
    String opass=request.getParameter("pin");
    int id=(Integer)session.getAttribute("ID");
    PassEncrypt pe = new PassEncrypt();
    email= pe.set(email);
    Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st2=con.prepareStatement("select * from bankuser where accountno=? and password=?");
   st2.setInt(1,id);
   st2.setString(2,email);
    ResultSet tr=st2.executeQuery();
     if(tr.next())
     {
             PreparedStatement st1=con.prepareStatement("update bankuser set pin=? where password=?");
                    st1.setString(1,opass);
                    st1.setString(2,email);
                    st1.executeUpdate();
                    response.sendRedirect("home.jsp");
     }

     else
     {
            request.setAttribute("errorMessage"," password is incorrect");
                    request.getRequestDispatcher("/set.jsp").forward(request, response);
             }
                        %>
    