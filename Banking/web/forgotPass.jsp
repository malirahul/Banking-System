<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp">
        <c:param name="title" value="Home Page"/>
</c:import>


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
                <td>Enter your New Password</td>
                <td><input type="textbox" placeholder="enter your name" name="name" autocomplete="off"></td>
              </tr>
              <tr>
              <td>Confirm your Password</td>
                <td><input type="Password" placeholder="enter password" name="pass" required="" autocomplete="off"></td>
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
            
           