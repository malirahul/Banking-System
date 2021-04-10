<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp">
        <c:param name="title" value="Home Page"/>
</c:import>


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
                <form  action="depositcode.jsp">
                        <legend><b><i>Deposit Money</i></b></legend>
                        <br/><br/>
                <table width="344">
                    <tr><td width="168">Account id : </td><td width="164"><%=session.getAttribute("ID") %></td></tr><tr></tr>
                    <tr><td>Amount : Rs.</td><td><input type="textbox" placeholder="enter amount to deposit" name="amount"autocomplete="off"></td></tr>
                    <tr><td>enter your UPI pin :</td></tr>
                    <tr><td><input type="password" placeholder="" name="pin"></td></tr>
                </table>
                <br>
                <div align="center"><input type="submit" value="Submit" name="Submit"></div>
                    <br/>
                    <div style="color: red">${errorMessage}</div>
                    </form>
            </div>
                            
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Header Text End ***** -->
    </div>
    <!-- ***** Welcome Area End ***** -->



<c:import url="/include/footer.jsp"/>
            