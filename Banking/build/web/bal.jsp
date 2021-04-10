<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%> 
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
Date date=new Date();
SimpleDateFormat sdf=new SimpleDateFormat("dd:MM:yyyy");
String s=sdf.format(date);
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
String pass=(String)session.getAttribute("CALL1");
PreparedStatement st=con.prepareStatement("select * from bankuser where password=?");
st.setString(1,pass);
ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
ArrayList list6=new ArrayList();
ArrayList list7=new ArrayList();
ArrayList list8=new ArrayList();
ArrayList list9=new ArrayList();
ArrayList list10=new ArrayList();
while(rs.next())
{
    list10.add(rs.getInt(10));  
}
   session.setAttribute("ID",list10.get(0));
PreparedStatement st2=con.prepareStatement("insert into bankaccount values(?,?,?,?,?)");
st2.setInt(1,(Integer)list10.get(0));
st2.setInt(2,0);
st2.setString(3,"no transcation yet");
st2.setString(4,s);
st2.setInt(5,00);
st2.executeUpdate();
String acc=String.valueOf(list10.get(0));
PreparedStatement st3=con.prepareStatement("insert into bankbalance values(?,?)");
st3.setString(1,acc);
st3.setInt(2,0);
st3.executeUpdate();
st3.close();
response.sendRedirect("home.jsp");
%>
