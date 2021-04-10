<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title><%
                if(request.getAttribute("title")==null){
                        out.print("Homepage");
                }else{
                        out.print(request.getAttribute("title"));
                }
          %></title>
          
                          
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                  integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
                <title>Banking System</title>
                <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
                
  <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>

  <style>
                /* css reset */
      *{
          padding: 0px;
          margin: 0px;

      }

      /* Navbar section */

      .nav {
          width: 100%;
          height: 75px;
          position: fixed;
          line-height: 65px;
          text-align: center;
      }

      .nav div.logo {
          float: left;
          width: auto;
          height: auto;
          padding-left: 3rem;
      }

      .nav div.logo a {
          text-decoration: none;
          color: #fff;
          font-size: 2.5rem;
      }

      .nav div.logo a:hover {
          color: #00E676;
      }

      .nav div.main_list {
          height: 65px;
          float: right;
      }

      .nav div.main_list ul {
          width: 100%;
          height: 65px;
          display: flex;
          list-style: none;
          margin: 0;
          padding: 0;
      }

      .nav div.main_list ul li {
          width: auto;
          height: 65px;
          padding: 0;
          padding-right: 3rem;
      }

      .nav div.main_list ul li a {
          text-decoration: none;
          color: black;
          line-height: 65px;
          font-size: 2.4rem;
      }

      .nav div.main_list ul li a:hover {
          color: #00E676;
      }


      /* Home section */

      .welcome-area {
          width: 100%;
          height: 100vh;
          background-image: url(./images/Untitled.png);
          background-repeat: no-repeat;
          background-position: center top;
              background-size:cover;
      }
      .welcome-area .header-text {
        position: absolute;
        top: 50%;
        transform: translateY(-55%);
        text-align: center;
        width: 100%;
      }

      .welcome-area .header-text h1 {
        font-weight: 500;
        font-size: 36px;
        line-height: 54px;
        letter-spacing: 1.4px;
        margin-bottom: 30px;
        color: black;
      }

      .welcome-area .header-text p {
        font-weight: 400;
        font-size: 15px;
        color: black;
        line-height: 28px;
        letter-spacing: 0.25px;
        margin-bottom: 40px;
        position: relative;
      }


      /* Heading */
      .heading{
          color: rgb(18, 18, 245);
          font-size: 35px;
          text-align: center;
          margin: 40px;
          padding-top: 40px;  
          font-family: 'Baloo Bhai 2', cursive;

      }
      /* End Heading */


      /* Text */
      .text{
          font-family: 'Baloo Bhai 2', cursive;
          font-size: 25px;    
      }
      /* End Text */

      /* Card */
      .card:hover{
          box-shadow: 5px 10px whitesmoke;
      }   

      /* End Card */

      #contact{
          width: 600px;
      }
      @media only screen and (max-width: 600px) {
          #contact {
            width: 400px;
          }
        }


      /* 
      ---------------------------------------------
      footer
      --------------------------------------------- 
      */
      footer {
        background-image: linear-gradient(127deg, #a759d1 0%, #8261ee 91%);
        padding-top: 30px;
      }

      footer .social {
        overflow: hidden;
        margin-top: 10px;
        text-align: center;
      }

      footer .social li {
        margin: 0px 10px;
        display: inline-block;
      }

      footer .social li a {
        color: #9d5bd9;
         text-align: center;
        background-color: #fff;
        width: 36px;
        height: 36px;
        line-height: 36px;
        border-radius: 50%;
        display: inline-block;
        font-size: 16px;
        -webkit-transition: all 0.3s ease 0s;
        -moz-transition: all 0.3s ease 0s;
        -o-transition: all 0.3s ease 0s;
        transition: all 0.3s ease 0s;
      }

      footer .social li a:hover {
        background-color: #ff589e;
        color: #fff;
      }

      footer .copyright {
        text-align: center;
        border-top: 1px solid rgba(250,250,250,0.2);
        margin-top: 30px;
        padding-top: 30px;
        padding-bottom: 30px;
        font-weight: 400;
        font-size: 12px;
        color: #fff;
        letter-spacing: 0.88px;
        text-transform: uppercase;
      }

      @media (max-width: 991px) {
        footer .text {
          margin-bottom: 30px;
        }
        footer h5 {
          margin-bottom: 15px;
        }
        footer .footer-nav {
          margin-bottom: 30px;
        }
      }


          
        .t
        {
            width: 40%;
            height: 15%;
            margin-right:1%;
        }
        .d
        {
            background-color:lightseagreen;
            margin-top: -1%;
            width: 104.75%;
            margin-left: -3.9%;
            height: 13.5%;
        }
        .name
        {
            margin-center: 70%;
           margin-top: 2%;
           color: black;
        }
        img{
            opacity: 0.95;
            margin-left: 12%;
            margin-top: -2%;
        }
        .th{
            margin-top: -1%;
        }
        .t2{
            color: #007bff;
        }
        .d2{
            margin-top: 8%;
            margin-left: 45%;
        }
        .tt{
            width: 75%;
            margin-left: 10%;
            margin-top: 5%;
            background-color: whitesmoke;
            opacity: 0.9;
        }
        .d3{
            margin-left: 50%;
            background-color:whitesmoke;
            width: 75%;
            height: 90%;
            margin-top:5%; 
            opacity: 0.9;
        }
        .rm{
                width: 650px;
                background-color:whitesmoke;
                border: 2;     
                letter-spacing: 1.2px;
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: Nunito Sans ;

        }
        .rr{
                width: 1350px;
                background-color:whitesmoke;
                border: 2;     
                letter-spacing: 1.2px;
                box-sizing: border-box;
                font-family: Nunito Sans ;
                margin-left: 10px;
        }
        
    @import url('https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Roboto:wght@300&display=swap');
    
    
  </style>
        </head>
        <body>
                <nav class="nav navbar navbar-expand-lg navbar-light bg-light sticky-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="home.jsp">

        <img src="images/logo.png" alt="logo" style="width:80px;">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="userlist.jsp"> View Customer</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact">Contact</a>
          </li>
        </ul>
          <span class="navTrigger">
                  <i><h1 class="name"><marquee>Welcome to the Bank</marquee></h1></i>
            </span>
          <table class="t">
                <tr>
                    <td><a href="set.jsp">Set UPI-Pin</a></td>
                    <td><a href="openacc.jsp">Create Account</a></td>
                    <td width="15%"><a href="signup.jsp"><input type="button" value="LogIn"></a></td>

                    <td width="15%"><a href="frony.jsp"><input type="button" onclick="alert('Are you sure you want to LogOut!');" value="LogOut"></a></td>
                </tr>
            </table>
          
      </div>
            
        </div>
    </nav>
          
                
     