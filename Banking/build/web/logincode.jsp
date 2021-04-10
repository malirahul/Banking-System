<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Password.PassEncrypt"%>
<%@page import="java.sql.Connection"%> 
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
String id =request.getParameter("id");   
String password=request.getParameter("pin");
PassEncrypt pp=new PassEncrypt();
password=pp.set(password);
int acc=Integer.parseInt(id);

Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st1=con.prepareStatement("select * from bankuser where password=?");
st1.setString(1,password);        
                      ResultSet rs=st1.executeQuery();
                    if(rs.next())
                    {  
                        session.setAttribute("ID",acc);
                        session.setAttribute("CALL1",password);
                        response.sendRedirect("home.jsp");
                    }
                    else{
                             request.setAttribute("errorMessage","login id & password is incorrect");
                    request.getRequestDispatcher("/signup.jsp").forward(request, response);
                        response.sendRedirect("frony.jsp");
                        
                    }
                    
%>
