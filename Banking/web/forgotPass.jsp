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
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                            <!--- *****  Content here  ***** -->     
                            
                    <div class="tt">
                <form action="forgotPasscode.jsp">
            <table width="477" height="150" border="7" align="center">
                    <legend><b><i>Forgot Password</i></b></legend>
                    <br/>
                    <tr>
                <td>Name</td>
                <td><input type="textbox" placeholder="enter your name" name="name" autocomplete="off"></td>
              </tr>
              <tr>
                <td>Adhar Number</td>
                <td><input type="textbox" placeholder="enter your name" name="email" autocomplete="off"></td>
              </tr>
              <tr>
                <td>Number</td>
                <td><input type="textbox" placeholder="enter your name" name="number" autocomplete="off"></td>
              </tr>
              <tr>
                <td>Enter your New Password</td>
                <td><input type="Password" placeholder="enter your name" name="pass1" autocomplete="off"></td>
              </tr>
              
              <tr>
              <td>Confirm your Password</td>
                <td><input type="Password" placeholder="enter password" name="pass2" required="" autocomplete="off"></td>
              </tr>
            </table>
                        <br/>
                    <div align="center"><input type="submit" value="Submit"></div>
                    <br/>
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
            
           