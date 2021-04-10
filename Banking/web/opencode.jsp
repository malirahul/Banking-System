<%@page import="Password.PassEncrypt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%
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
%>
