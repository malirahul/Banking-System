<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%> 
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.swing.JOptionPane"%>
<%
    String email=request.getParameter("pass");
    String opass=request.getParameter("pin");
    Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st1=con.prepareStatement("update bankuser set pin=? where password=?");
                    st1.setString(1,opass);
                    st1.setString(2,email);
                    st1.executeUpdate();
                    response.sendRedirect("home.jsp");
                        %>
    