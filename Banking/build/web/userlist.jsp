<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp">
        <c:param name="title" value="Home Page"/>
</c:import>

<table class="t">
                <tr>
                    <td><a href="openacc.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">New Account</button></a></td>
                    <td><a href="signup.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">LogIn</button></a></td>
                </tr>
            </table>
          
      </div>
            
        </div>
    </nav>
    
        <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banksystem","root","root");
                PreparedStatement ps=con.prepareStatement("select * from bankuser order by accountno");
                
                ArrayList list1=new ArrayList();
                ArrayList list2=new ArrayList();
                ArrayList list3=new ArrayList();
                ArrayList list4=new ArrayList();
                ArrayList list5=new ArrayList();
                ArrayList list6=new ArrayList();
                ArrayList list7=new ArrayList();
                ArrayList list8=new ArrayList();
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                 list1.add(rs.getString(10)); 
                 list2.add(rs.getString(1)); 
                 list3.add(rs.getString(2));
                 list4.add(rs.getString(3)); 
                 list5.add(rs.getString(4)); 
                 list6.add(rs.getString(5)); 
                 list7.add(rs.getString(7)); 
                 list8.add(rs.getString(8)); 
                }
                %>

<!-- ***** Welcome Area Start ***** -->
    <div class="welcome-area">
<br/><br/><br/><br/>
<div style="color: blanchedalmond"><legend><b><i>Customer Detail</i></b></legend></div>
                        <table class="rr" border="2">
                                <tr align="center" class="line" >
                                        <td><b>Account Id</b></td>
                                        <td><b>Name</b></td>
                                        <td><b>Address</b></td>
                                        <td><b>Conatct No</b></td>
                                        <td><b>AdharCard No</b></td>
                                        <td><b>DOB</b></td>
                                        <td><b>City</b></td>
                                        <td><b>State</b></td>
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
                                     <td><%=list5.get(i)%></td>
                                     <td><%=list6.get(i)%></td>
                                     <td><%=list7.get(i)%></td>
                                     <td><%=list8.get(i)%></td>
                                 </tr>
                                 <%
                                     }
                                 %>
                            </table>
    </div>   
                    


<c:import url="/include/footer.jsp"/>