

  <!-- Contact -->
  <section class="mx-auto" id="contact">
    <h2 class="heading">Contact Us</h2>
    <form>
      <div class="row mb-3">
        <div class="col">
                <input type="text" class="form-control" placeholder="First name" aria-label="First name" required="">
        </div>
        <div class="col">
                <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" required="">
        </div>
      </div>
      <div class="mb-3">

        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
          placeholder="Enter your E-Mail" required="">

      </div>
      <div class="mb-3">
        <input type="text" class="form-control" placeholder="Enter Your City" aria-label="City" required="">
      </div>
      <div class="mb-3">

        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
          placeholder="Leave your comments here...." required=""></textarea>
      </div>

      <button type="submit" class="btn btn-primary" >Submit</button>

    </form>
  </section>
  <!-- End Contact -->
  <br>
  <br>
  
<!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <ul class="social">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p class="copyright">Copyright &copy; 2021 Created by: Rahul Mali, Mandsaur(m.P)</p>
                </div>
            </div>
        </div>
    </footer>
    
    
<!-- Jquery needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="js/main.js"></script>
    

<!-- Function used to shrink nav bar removing paddings and adding black background -->
    <script>
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.nav').addClass('affix');
                console.log("OK");
            } else {
                $('.nav').removeClass('affix');
            }
        });
       
    </script>
    
        </body>
</html>
