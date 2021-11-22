<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Apple_Store_System.Customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
<script type="text/javascript" language="javascript">

    function formValidator() {
        // Make quick references to our fields
        var custid = document.getElementById("cust_nm");
        var firstnm = document.getElementById("first_nm");
        var lastnm = document.getElementById("last_nm");
        var shipadr = document.getElementById("ship_adrs");
        var billadr = document.getElementById("bil_adrs");
        var city = document.getElementById("city");
        var pincode = document.getElementById("pincode");
        var mobile = document.getElementById("mob_no");
        var email = document.getElementById("email");
        var  password = document.getElementById("pass");

        // Check each input in the order that it appears in the form!
        if (notEmpty(firstnm, "Name Must be given") && isAlphabet(firstnm, "Please enter only letters for your name")) {
            if (notEmpty(lastnm, "lastname Must be given") && isAlphabet(lastnm, "Please enter only letters for your name")) {
                if (notEmpty(shipadr, "shipping address Must be given") && isAlphanumeric(shipadr, "Numbers and Letters Only for Address")) {

                    if (notEmpty(billadr, "billing address Must be given") && isAlphanumeric(billadr, "Numbers and Letters Only for Address")) {
                        if (notEmpty(city, "city Must be given") && isAlphabet(city, "Please enter only letters")) {

                            if (notEmpty(pincode, "pincode must be given") && isNumeric(pincode, "Entre only numbers") && lengthRestriction(pincode, 6, 6)) {

                                if (notEmpty(mobile, "mobile no Must be given") && validmobile(mobile) && isNumeric(mobile, "Please enter a valid mobile no")) {
                                    if (notEmpty(email, "Email Must be given") && emailValidator(email, "Please enter a valid email address")) {
                                        if (notEmpty(password, "password Must be given") && lengthRestriction(password, 4, 10)) {
                                            return true;
                                         }
                                     }
                                 }
                             }
                          }
                        }

                    }
                }
            }
        return false;
    } 


    function notEmpty(elem, helperMsg) {

        if (elem.value.length == 0) {
            alert(helperMsg);
            elem.focus(); // set the focus to this input
            return false;
        }
        return true;
    }

    function isNumeric(elem, helperMsg) {
        var numericExpression = /^[0-9]+$/;
        if (elem.value.match(numericExpression)) {
            return true;
        } else {
            elem.value = "";
            alert(helperMsg);
            elem.focus();
            return false;
        }
    }

    function isAlphabet(elem, helperMsg) {
        var alphaExp = /^[a-zA-Z ]+$/;
        if (elem.value.match(alphaExp)) {
            return true;
        } else {
            alert(helperMsg);
            elem.value = "";
            elem.focus();
            return false;
        }
    }

    function isAlphanumeric(elem, helperMsg) {
        var alphaExp = /^[0-9a-zA-Z ]+$/;
        if (elem.value.match(alphaExp)) {
            return true;
        } else {
            alert(helperMsg);
            elem.value = "";
            elem.focus();
            return false;
        }
    }

    function validmobile(elem) {
        var uInput = elem.value;
        if (uInput.length == 10) {
            return true;
        } else {
            alert("Please enter valid mobile Or Phone No");
            elem.value = "";
            elem.focus();
            return false;
        }
    }


    function lengthRestriction(elem, min, max) {
        var uInput = elem.value;
        if (uInput.length >= min && uInput.length <= max) {
            return true;
        } else {
            alert("Please enter between " + min + " and " + max + " characters");
            elem.value = "";
            elem.focus();
            return false;
        }
    }

    function madeSelection(elem, helperMsg) {
        if (elem.value == "Please Choose") {
            alert(helperMsg);
            elem.focus();
            return false;
        } else {
            return true;
        }
    }

    function emailValidator(elem, helperMsg) {
        var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
        if (elem.value.match(emailExp)) {
            return true;
        } else {
            alert(helperMsg);
            elem.value = "";
            elem.focus();
            return false;
        }
    }
</script>

<meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>

  <!-- Favicons -->
  <link href="BizPage/assets/img/logos/rainbow.svg.png" rel="icon">
  <link href="BizPage/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="BizPage/assets/vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" />
  <link href="BizPage/assets/vendor/aos/aos.css" rel="stylesheet" type="text/css" />
  <link href="BizPage/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"type="text/css" />
  <link href="BizPage/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"type="text/css" />
  <link href="BizPage/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"type="text/css" />
  <link href="BizPage/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css" />

  <!-- Template Main CSS File -->
  <link href="BizPage/assets/css/style.css" rel="stylesheet" type="text/css" />

  <!-- =======================================================
  * Template Name: BizPage - v5.7.0
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    
     <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container-fluid">

      <div class="row justify-content-center align-items-center">
        <div class="col-xl-11 d-flex align-items-center justify-content-between">
          <h1 class="logo"><a href="index.html"> <img src="../BizPage/assets/img/logos/white.svg.png" alt="" class="img-fluid"> Imaig!ne</a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav id="navbar" class="navbar">
            <ul>
              <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/search/main_search.aspx">Search</asp:HyperLink></li>
              <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Form_admin_login.aspx">LogOut</asp:HyperLink></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
          </nav><!-- .navbar -->
        </div>
      </div>

    </div>
  </header><!-- End Header -->

  <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Form_admin_login.aspx">Home</asp:HyperLink></li>
        </ol>
        <h2>Customer Form</h2>

      </div>
    </section><!-- End Breadcrumbs -->

      <section id="contact" class="section-bg_one" style="margin-top:50px;">
      <div class="container" data-aos="fade-up">
   
   <div class="section-header_one">
          <h3>Coustmer</h3>
        
        </div>

     <div class="form">
          <form id="form2" runat="server" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-6">
                Customer ID
                <asp:TextBox ID="cust_id" class="form-control" runat="server"></asp:TextBox>
           </div>
            <div class="form-group col-md-6">
                &nbsp;first name
                <asp:TextBox ID="first_nm" class="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
              <div class="row">
              <div class="form-group col-md-6">
                &nbsp;last name
                <asp:TextBox ID="last_nm" class="form-control" runat="server"></asp:TextBox>
            </div>
             <div class="form-group col-md-6">
                 Shipping Address
                <asp:TextBox ID="ship_adrs" class="form-control" runat="server"></asp:TextBox>
           </div>
           </div>

            <div class="row">
              <div class="form-group col-md-6">
                &nbsp;Billing Address
                  <asp:TextBox ID="bil_adrs" class="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group col-md-6">
&nbsp;City
                    <asp:TextBox ID="city" class="form-control" runat="server"></asp:TextBox>
                </div>
           </div>
           <div class="row">
              <div class="form-group col-md-6">
                  Pincode
                <asp:TextBox ID="pincode" class="form-control" runat="server"></asp:TextBox>
           </div>
             <div class="form-group col-md-6">
                 Mobile
                <asp:TextBox ID="mob_no" class="form-control" runat="server"></asp:TextBox>
          </div>
          </div>

           <div class="row">
              <div class="form-group col-md-6">
                  Email
                <asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
           </div>
             <div class="form-group col-md-6">
                &nbsp;Password
                <asp:TextBox ID="pass" class="form-control" runat="server"></asp:TextBox>
         </div>
         </div>
          <div class="row">
             <div class="form-group col-md-6">
                <asp:Button ID="btn_ins" runat="server" onclick="btn_ins_Click" Text="Insert" OnClientClick="return formValidator()"/>
          </div>
           <div class="form-group col-md-6">
           </div>
           </div>
    
    
    
    </form>
    </div>
    </div>
    </section>


    <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>Imaig!ne Apple Store</h3>
            <p>Imagine is the best place to get your hands on all Apple Products, get demonstrations of the latest Apple products, Showcasing the entire Apple product line in a customer-friendly environment, Imagine is an Apple Premium Reseller operated by Apple technologies. we are your local Apple expert. We take the time to talk to you about your specific needs, to create an Apple solution that is right for you. So for everything you need, including friendly, down-to-earth and expert advice, step into Imagine.</p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Elixa park, Near Star Bazar<br>
              Opposite DYP Mall, E-Ward, 416093<br>
              Kolhapur | India <br>
              <strong>Phone:</strong> +91 9922 123 456<br>
              <strong>Email:</strong> Imaginestorekop@gmail.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="dribbble"><i class="bi bi-github"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem marada parida nodela caramase seza.</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Imaig!n Apple Store</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
      -->
        
      </div>
    </div>
  </footer><!-- End Footer -->


    <script src="BizPage/assets/vendor/aos/aos.js"></script>
     <script src="BizPage/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
     <script src="BizPage/assets/vendor/glightbox/js/glightbox.min.js"></script>
     <script src="BizPage/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
     <%--<script src="BizPage/assets/vendor/php-email-form/validate.js"></script>--%>
     <script src= "BizPage/assets/vendor/purecounter/purecounter.js"></script>
     <script src="BizPage/assets/vendor/swiper/swiper-bundle.min.js"></script>
     <script src="BizPage/assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="BizPage/assets/js/main.js"></script>
</body>
</html>
