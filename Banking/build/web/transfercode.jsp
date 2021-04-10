<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%> 
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%
    Date date=new Date();
SimpleDateFormat sdf=new SimpleDateFormat("dd:MM:yyyy");
String s=sdf.format(date);
    String adhar=(String)session.getAttribute("CALL4");
    int ac1=(int)session.getAttribute("ID");
    String acc=String.valueOf(ac1);
 String am=request.getParameter("amount");
 int amount=Integer.parseInt(am);
 String pin=request.getParameter("pin");
 String rec=request.getParameter("rec");
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st1=con.prepareStatement("select * from bankuser where adharcardno=?");
st1.setString(1,adhar);
ResultSet rs=st1.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
ArrayList list6=new ArrayList();
while(rs.next())
{
    list6.add(rs.getInt(6));  
}
int Upin1=(int)list6.get(0);
String Upin=String.valueOf(Upin1);
if(Upin.equals(pin))
{
    int ac=Integer.parseInt(acc);
    PreparedStatement ps=con.prepareStatement("insert into bankaccount values(?,?,?,?,?)");
    ps.setInt(1,ac);
    ps.setInt(2,amount);
    ps.setString(3,"transfer to "+rec);
    ps.setString(4,s);
    ps.setInt(5,ac);
    ps.executeUpdate();
    PreparedStatement st2=con.prepareStatement("select * from bankbalance where accountno=?");
     st2.setString(1,acc);
     ResultSet rs2=st2.executeQuery();
     ArrayList list11=new ArrayList();
     ArrayList list12=new ArrayList();
     while(rs2.next())
         list12.add(rs2.getInt(2));
     int baa=(int)list12.get(0);
     String ba=String.valueOf(baa);
     int bal=Integer.parseInt(ba);
     if(bal>amount){
        bal=bal-amount;
        PreparedStatement st3=con.prepareStatement("update bankbalance set balance=? where accountno=?");
        st3.setInt(1,bal);
        st3.setString(2,acc);
        st3.executeUpdate();
      PreparedStatement st4=con.prepareStatement("select * from bankbalance where accountno=?");
     st4.setString(1,rec);
     ResultSet rs3=st4.executeQuery();
     int bal1=0;
      if(rs3.next())
      {
              bal1=rs3.getInt(2);
      }
      rs3.close();
      st4.close();
      PreparedStatement st5=con.prepareStatement("update bankbalance set balance=? where accountno=?");  
      st5.setInt(1,bal1+amount);
        st5.setString(2,rec);
        st5.executeUpdate();
    response.sendRedirect("transfer.jsp");
}
     else
     {
         response.sendRedirect("transfer1.jsp");
     }
}
else{
    response.sendRedirect("transfer.jsp");
}
%>
