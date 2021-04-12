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
                <form  action="transfercode.jsp">
                <table width="344">
                    <tr><td width="168">Account id : </td><td width="164"><%=session.getAttribute("ID") %></td></tr><tr></tr>
                    <tr><td>Receiver Id :</td><td><input type="textbox"placeholder="enter receiver id"name="rec"autocomplete="off"></td></tr>
                    <tr><td>Amount : Rs.</td><td><input type="textbox" placeholder="enter amount to transfer" name="amount"autocomplete="off"></td></tr>
                    <tr><td>enter your UPI pin :</td></tr>
                    <tr><td><input type="password" placeholder="" name="pin"></td></tr>
                </table>
                <br>
                <div class="o">Amount is Insufficient Account</div>
                    <div align="center"><input type="submit" name="Submit"></div>
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
       