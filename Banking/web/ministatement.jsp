<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList" %>
<%
    int ac=(Integer)session.getAttribute("ID");
    String acc=String.valueOf(ac);
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
PreparedStatement dev=con.prepareStatement("select * from bankaccount where accountno=?");
dev.setString(1, acc);
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ResultSet rs=dev.executeQuery();
while(rs.next())
{
 list1.add(rs.getString(1)); 
 list2.add(rs.getString(2)); 
 list3.add(rs.getString(3));
 list4.add(rs.getString(4)); 
}
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
            <div class="wh">
            <table width="1070" class="t2">
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
                </div>
   
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                            <!--- *****  Content here  ***** -->     
                            
                            
                    <table class="rm" border="5">
                             <div style="color: blanchedalmond"><legend><b><i>Bank Balance</i></b></legend></div>
                        <br/><br/>
            <tr align="center" class="line" >
                    <td><b>Account Id</b></td>
                    <td><b>Balance</b></td>
                    <td><b>Transaction History</b></td>
                    <td><b>Date</b></td>
            </tr>
        
            <%
             for(int i=0;i<list1.size();i++)
             {
             %>
             <tr align="center">
                 <td><%=list1.get(i)%></td>
                 <td><%=list2.get(i)%></td>
                 <td><%=list3.get(i)%></td>
                 <td><%=list4.get(i)%></td>
             </tr>
             <%
                 }
             %>
        </table>
                            
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Header Text End ***** -->
    </div>
    <!-- ***** Welcome Area End ***** -->
<br/><br/><br/><br/><br/><br/><br/><br/>


<c:import url="/include/footer.jsp"/>
            
        