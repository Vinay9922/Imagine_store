<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCart.aspx.cs" Inherits="Apple_Store_System.search.ShowCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

     <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Imag!ne Apple Store</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../BizPage/assets/img/logos/rainbow.svg.png" rel="icon">
  <link href="../BizPage/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="../BizPage/assets/vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" />
  <link href="../BizPage/assets/vendor/aos/aos.css" rel="stylesheet" type="text/css" />
  <link href="../BizPage/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"type="text/css" />
  <link href="../BizPage/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"type="text/css" />
  <link href="../BizPage/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"type="text/css" />
  <link href="../BizPage/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css" />

  <!-- Template Main CSS File -->
  <link href="../BizPage/assets/css/style.css" rel="stylesheet" type="text/css" />

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
          <h1 class="logo"><a href="index.html"> <img src="../assets/img/logos/white.svg.png" alt="" class="img-fluid"> Imaig!ne</a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav id="navbar" class="navbar">
            <ul>
               <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Form_admin_login.aspx">Admin</asp:HyperLink></li>
              <li><a class="nav-link scrollto" href="#about">About</a></li>
              <li><a class="nav-link scrollto" href="#services">Services</a></li>
              <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
              <li><a class="nav-link scrollto" href="#team">Team</a></li>
              <li><a class="nav-link  active" href="blog.html">Blog</a></li>
              <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                  <li><a href="#">Drop Down 1</a></li>
                  <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                    <ul>
                      <li><a href="#">Deep Drop Down 1</a></li>
                      <li><a href="#">Deep Drop Down 2</a></li>
                      <li><a href="#">Deep Drop Down 3</a></li>
                      <li><a href="#">Deep Drop Down 4</a></li>
                      <li><a href="#">Deep Drop Down 5</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Drop Down 2</a></li>
                  <li><a href="#">Drop Down 3</a></li>
                  <li><a href="#">Drop Down 4</a></li>
                </ul>
              </li>
              <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
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
          <li><a href="index.html">Home</a></li>
          <li><a href="blog.html">Blog</a></li>
        </ol>
        <h2>show cart</h2>

      </div>
    </section><!-- End Breadcrumbs -->

   <section id="contact" class="section-bg_one" style="margin-top:50px;">
      <div class="container" data-aos="fade-up">
   
   <div class="section-header_one">
          <h3>show cart</h3>
        
        </div>

   <div class="form">
          <form id="form1" runat="server" class="php-email-form">
    <div>
    
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
    </div>
    <asp:Button ID="btn_buy_now" runat="server" onclick="btn_buy_now_Click" 
        Text="Buy Now" />
   
   <div>
   </div>

    </form>
    </div>
    </div>
    </section>
    
   <!-- Vendor JS Files -->
    <script src="../BizPage/assets/vendor/aos/aos.js" type="text/javascript"></script>
  <script src="../BizPage/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"type="text/javascript"></script>
  <script src="../BizPage/assets/vendor/glightbox/js/glightbox.min.js" type="text/javascript"></script>
  <script src="../BizPage/assets/vendor/isotope-layout/isotope.pkgd.min.js" type="text/javascript"></script>
  <script src="../BizPage/assets/vendor/purecounter/purecounter.js" type="text/javascript"></script>
  <script src="../BizPage/assets/vendor/swiper/swiper-bundle.min.js" type="text/javascript"></script>
  <script src="../BizPage/assets/vendor/waypoints/noframework.waypoints.js" type="text/javascript"></script>

  <!-- Template Main JS File -->
  <script src="../BizPage/assets/js/main.js" type="text/javascript"></script>
</body>
</html>

