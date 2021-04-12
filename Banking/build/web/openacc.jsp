<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp">
        <c:param name="title" value="Home Page"/>
</c:import>

<table class="t">
                <tr>
                    <td><a href="signup.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">LogIn</button></a></td>
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
                <td width="195"><div align="center"><strong>Home</strong></div></td>
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
                            <!--- *****  Content here  ***** --> <br/><br/><br/><br/> 
                            <div class="tt">
                <form action="opencode.jsp">
            <table width="477" height="350" border="10" align="center">
                    <legend><b><i>Register Your Account</i></b></legend>
                    <br/>
              <tr>
                <td width="168">Name</td>
                <td width="283"><input type="textbox" placeholder="enter your name" name="name"autocomplete="off"></td>
              </tr>
              <tr>
                <td>Address</td>
                <td><input type="textbox" placeholder="enter address" name="address" required="" autocomplete="off"></td>
              </tr>
              <tr>
                <td>Contact Number</td>
                <td><input type="textbox" placeholder="enter your number" name="contact" required="" autocomplete="off"></td>
              </tr>
              <tr>
                <td>Date of Birth</td>
                <td><input type="date" name="date"></td>
              </tr>
              <tr>
                <td>AdharCardNo.</td>
                <td><input type="textbox" placeholder="enter adhar number" name="adhar" required="" autocomplete="off"></td>
              </tr>
              <tr>
                <td>City</td>
                <td><input type="textbox" placeholder="enter your city" name="city" required="" autocomplete="off"></td>
              </tr>
              <tr>
                <td>State</td>
                <td><input type="textbox" placeholder="enter your state" name="state" required="" autocomplete="off"></td>
              </tr>
              <td>Password</td>
                <td><input type="Password" placeholder="enter password" name="pass" required="" autocomplete="off"></td>
              </tr>
        </table>
                        <br/>
                    <div align="center"><input type="submit" value="Submit"></div>
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
            
        