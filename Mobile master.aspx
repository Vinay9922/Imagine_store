<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mobile master.aspx.cs" Inherits="Apple_Store_System.Mobile_master" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
<script type="text/javascript" language="javascript">

    function formValidator() {
        // Make quick references to our fields
        var mob_nm = document.getElementById("mob_nm");
        var mob_rate = document.getElementById("mob_rate");
        var capacity = document.getElementById("capacity");
        var mob_descr = document.getElementById("mob_descr");
        var mob_stock = document.getElementById("mob_stock");

        // Check each input in the order that it appears in the form!
        if (notEmpty(mob_nm, "Name Must be given") && isAlphabet(mob_nm, "Please enter only letters for your name")) {
            if (notEmpty(mob_rate, "rate Must be given") && isNumeric(mob_rate, "Please enter only number")) {
                if (notEmpty(capacity, "capacity  Must be given") &&  isNumeric(capacity, "Please enter only number")) {

                    if (notEmpty(mob_descr, "mob_descr Must be given") && isAlphabet(mob_descr, "Please enter only letters")) {
                        if (notEmpty(mob_stock, "Stock Must be given") && isNumeric(mob_stock, "Please enter only number")) {
                            return true;
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

  <title>Imag!ne Apple Store</title>
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
              <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admindashboardform.aspx">DasBoard</asp:HyperLink></li>
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
        <h2>Mobile master Form</h2>

      </div>
    </section><!-- End Breadcrumbs -->

   <section id="contact" class="section-bg_one" style="margin-top:50px;">
      <div class="container" data-aos="fade-up">
   
   <div class="section-header_one">
          <h3>Mobile master</h3>
        
        </div>

    <div class="form">
          <form id="form1" runat="server" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-6">
                    Mobile ID
                    <asp:TextBox ID="mob_id" class="form-control" placeholder="ID" runat="server" Enabled="False"></asp:TextBox>
               </div>
                   <div class="form-group col-md-6">
                    Mobile Name
                    <asp:TextBox ID="mob_nm" class="form-control" placeholder="Name" runat="server" Enabled="False"></asp:TextBox>
                </div>
                </div>

                 <div class="row">
              <div class="form-group col-md-6">
                    Mobile Rate
                    <asp:TextBox ID="mob_rate" class="form-control" placeholder="Rate" runat="server" Enabled="False"></asp:TextBox>
              </div>
              <div class="form-group col-md-6">
                    Screen Size
                    <asp:TextBox ID="scr_size" class="form-control" placeholder="Size" runat="server" Enabled="False"></asp:TextBox>
              </div>
              </div>
                <div class="row">
              <div class="form-group col-md-6">
                    Color
                    <asp:TextBox ID="color" class="form-control" runat="server" placeholder="Color" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                  Capacity
                    <asp:TextBox ID="capacity" class="form-control" placeholder="Capacity" runat="server" Enabled="False"></asp:TextBox>
               </div>
               </div>

                   <div class="row">
                    <div class="form-group col-md-6">
                    Mobile Description
                    <asp:TextBox ID="mob_descr" class="form-control" placeholder="Description" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                     <div class="form-group col-md-6">
                    Mobile Features
                    <asp:TextBox ID="mob_feature" class="form-control" placeholder="Feature" runat="server" Enabled="False"></asp:TextBox>
                     </div>
                     </div>
                     <div class="row">
                    <div class="form-group col-md-6">
                    Mobile Image
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Image ID="Image1" runat="server" Height="39px" Width="47px" />
                        <asp:Button ID="btn_upload" runat="server" onclick="btn_upload_Click1" 
                            Text="upload" />
               </div>
                <div class="form-group col-md-6">
                    Mobile Stock
                    <asp:TextBox ID="mob_stock" class="form-control" placeholder="Stock" runat="server" Enabled="False"></asp:TextBox>
                </div>
                </div>

                   <div class="row">
             <div class="form-group col-md-3">
                    <asp:Button ID="btn_new" runat="server" onclick="btn_new_Click" Text="New" />
               </div>
               <div class="form-group col-md-3">
                    <asp:Button ID="btn_save" runat="server" Enabled="False" onclick="btn_save_Click" Text="Save" OnClientClick="return formValidator()" />
               </div>
               <div class="form-group col-md-3">
                  <asp:Button ID="btn_up" runat="server" Enabled="False" onclick="btn_up_Click" Text="Update" />
             </div>
             <div class="form-group col-md-3">
                    <asp:Button ID="btn_del" runat="server" Enabled="False" onclick="btn_del_Click" Text="Delete" />
              </div>
              </div>
               <div class="row" style = "margin-top:50px;">
           
                    <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateSelectButton="True" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                    </asp:GridView>
              
    
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
