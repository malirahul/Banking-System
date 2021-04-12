<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%> 
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    int id=(Integer)session.getAttribute("ID");
    String idd=String.valueOf(id);
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement st=con.prepareStatement("select * from bankbalance where accountno=?");
st.setString(1,idd);
ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
while(rs.next())
{
    list2.add(rs.getInt(2));  
}
rs.close();
st.close();
String pass=(String)session.getAttribute("CALL1");
PreparedStatement st1=con.prepareStatement("select * from bankuser where password=? and accountno=?");
st1.setString(1,pass);
st1.setInt(2,id);
ResultSet rs2=st1.executeQuery();
ArrayList lis1=new ArrayList();
ArrayList lis2=new ArrayList();
ArrayList lis3=new ArrayList();
ArrayList lis4=new ArrayList();
while(rs2.next())
{
    lis1.add(rs2.getString(1));
    lis2.add(rs2.getString(2));
    lis3.add(rs2.getString(3));
    lis4.add(rs2.getString(4));
}
rs2.close();
st1.close();
session.setAttribute("CALL",lis1.get(0));
 session.setAttribute("CALL2",lis2.get(0));
 session.setAttribute("CALL3",lis3.get(0));
 session.setAttribute("CALL4",lis4.get(0));
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp">
        <c:param name="title" value="Home Page"/>
</c:import>

<table class="t">
                <tr>
                    <td><a href="set.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Set Pin</button></a></td>
                    <td width="15%"><a href="frony.jsp"><button class="btn btn-outline-success my-2 my-sm-0" onclick="alert('Are you sure you want to LogOut!');" type="submit">LogOut</button></a></td>
                </tr>
            </table>
          
      </div>
            
        </div>
    </nav>

<!-- ***** Welcome Area Start ***** -->
    <div class="welcome-area">
<br/><br/><br/><br/>
            <table width="1400" class="t2">
              <tr>
                  <td width="195"><div align="center"><a href="home.jsp"><strong>Home</strong></a></div></td>
                <td width="179"><a href="bal1.jsp"><div align="center"><strong>BALANCE</strong></div></a></td>
                <td width="135"><div align="center"><a href="deposit.jsp"><strong>DEPOSIT</strong></a></div></td>
                <td width="164"><div align="center"><a href="withdraw.jsp"><strong>WITHDRAW</strong></a></div></td>
                <td width="179"><div align="center"><a href="transfer.jsp"><strong>TRANSFER</strong></a></div></td>
                <td width="179"><div align="center"><a href="mini.jsp"><strong>Mini Statement</strong></a></div></td>
                <td width="178"><div align="center"><strong>CLOSE A/C</strong></div></td>
              </tr>
            </table>
   
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                            <!--- *****  Content here  ***** -->     
                            <div class="d3">
                <fieldset>
                <table>
                        <legend><b><i>Profile</i></b></legend>
                    <tr><td>Name : </td><td><%=session.getAttribute("CALL")%></td></tr>
                    <tr><td>Address : </td><td><%=session.getAttribute("CALL2")%></td></tr>
                    <tr><td>Contact Number : </td><td><%=session.getAttribute("CALL3")%></td></tr>
                    <tr><td>id: </td><td><%=session.getAttribute("ID")%></td></tr>
                    <tr><td>&nbsp;</td><td>Balance : Rs.</td><td><%=list2.get(0)%></td></tr>
                </table>
                    </fieldset>
            </div>
                            
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Header Text End ***** -->
    </div>
    <!-- ***** Welcome Area End ***** -->



<c:import url="/include/footer.jsp"/>

            
         