<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp">
        <c:param name="title" value="Home Page"/>
</c:import>


<!-- ***** Welcome Area Start ***** -->
    <div class="welcome-area">
<br/><br/><br/><br/>
            
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                            <!--- *****  Content here  ***** -->     
                            <br>
            <div class="d3">
            <form action="logincode.jsp">
                <fieldset>
                        <legend><b><i>sign up</i></b></legend>
                    <br/>
                <table>
                    <tr><td width="39">&nbsp;&nbsp;&nbsp;</td><td width="80"><b>Id</b></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <td width="168">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="textbox" placeholder="enter account id" name="id"></td></tr>
                    <tr><td></td></tr><tr><td>&nbsp;&nbsp;&nbsp;</td><td><b>Password</b></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" value=""name="pin"></td></tr>
                    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td >&nbsp;</td></tr>
                </table>
              <div align="center"><input type="submit" value="submit"></div>
              <div align="center"><a href="forgotPass.jsp">Forgot Password</a></div>
              <div style="color: red">${errorMessage}</div>
                </fieldset>
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
            
        