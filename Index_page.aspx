<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index_page.aspx.cs" Inherits="Apple_Store_System.Index_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Imag!ne Apple Store</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="BizPage/assets/img/logos/rainbow.svg.png" rel="icon">
  <link href="BizPage/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="BizPage/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="BizPage/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="BizPage/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="BizPage/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="BizPage/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="BizPage/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="BizPage/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: BizPage - v5.7.0
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container-fluid">

      <div class="row justify-content-center align-items-center">
        <div class="col-xl-11 d-flex align-items-center justify-content-between">
          <h1 class="logo"><a href="index.html"> <img src="BizPage/assets/img/logos/white.svg.png" alt="" class="img-fluid"> Imaig!ne</a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
           <!-- <a href="index.html" class="logo"><img src="assets/img/logos/800px-Apple_Computer_Logo_rainbow.svg.png" alt="" class="img-fluid"></a> -->

          <nav id="navbar" class="navbar">
            <ul>
              <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Form_admin_login.aspx">Admin</asp:HyperLink></li>
              <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="search/main_search.aspx">Search</asp:HyperLink></li>
              <li><a class="nav-link scrollto" href="#about">About</a></li>
              <li><a class="nav-link scrollto" href="#services">Services</a></li>
              <li><a class="nav-link scrollto " href="#portfolio">Products Details</a></li>
              <li><a class="nav-link scrollto" href="#team">Team</a></li>

              <!--<li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
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
              </li> -->

              <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
          </nav><!-- .navbar -->
        </div>
      </div>

    </div>
  </header><!-- End Header -->

  <!-- ======= hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

        <ol id="hero-carousel-indicators" class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <div class="carousel-item active" style="background-image: url(BizPage/assets/img/hero-carousel/apple\ baner\ 1.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">We are professional</h2>
                <p class="animate__animated animate__fadeInUp">Imagine is an Apple Premium Reseller operated by Apple technologies.With more than a decade's experience in the Retail scenario, we are your local Apple expert.</p>
               
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(BizPage/assets/img/hero-carousel/banner\ 5.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Apple Premium Product Reseller</h2>
                <p class="animate__animated animate__fadeInUp">We Are Official Reseller Of Apple's Premium Products, Which Is Handeled By Apple Technologies. We Have An Latest Tech. Products. We have Also Accessories</p>
                
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(BizPage/assets/img/hero-carousel/banner\ 6.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Apple I - Watch</h2>
                <p class="animate__animated animate__fadeInUp">The goal of the Apple Watch was to complement an iPhone and add new functions, and to free people from their phones.Kevin Lynch was hired by Apple to make wearable technology for the wrist. He said: "People are carrying their phones with them and looking at the screen so much</p>
                
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(BizPage/assets/img/apple\ ad\ vid/airpod1.png)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Apple AirPods</h2>
                <p class="animate__animated animate__fadeInUp">They feature an external redesign with shorter stems similar to AirPods Pro and use similar pinch controls. They include support for spatial audio and Dolby Atmos, IPX4 water resistance, skin detection and a case supporting MagSafe charging..</p>
                
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(BizPage/assets/img/apple\ ad\ vid/poster\ 2.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Imag!ne Apple Store.</h2>
                <p class="animate__animated animate__fadeInUp">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero Section -->

  <main id="main">

    <!-- ======= Featured Services Section Section ======= -->
    <!-- <section id="featured-services">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 box">
            <i class="bi bi-briefcase"></i>
            <h4 class="title"><a href="">Lorem Ipsum Delino</a></h4>
            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
          </div>

          <div class="col-lg-4 box box-bg">
            <i class="bi bi-card-checklist"></i>
            <h4 class="title"><a href="">Dolor Sitema</a></h4>
            <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
          </div>

          <div class="col-lg-4 box">
            <i class="bi bi-binoculars"></i>
            <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
            <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
          </div>

        </div>
      </div>
    </section> -->
    <!-- End Featured Services Section -->

    <!-- ======= About Us Section ======= -->
    <section id="about">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>About Us</h3>
          <p>
            Imagine is the best place to get your hands on all Apple Products, get demonstrations of the latest Apple products, or attend training and events based around the latest technology.
          </p>
        </header>

        <div class="row about-cols">

          <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
            <div class="about-col">
              <div class="img">
                <img src="BizPage/assets/img/about-mission.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="bi bi-bar-chart"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Mission</a></h2>
              <p>
                Showcasing the entire Apple product line in a customer-friendly environment, Imagine is an Apple Premium Reseller operated by Apple technologies.With more than a decade's experience in the Retail scenario, we are your local Apple expert. We take the time to talk to you about your specific needs, to create an Apple solution that is right for you. So for everything you need, including friendly, down-to-earth and expert advice, step into Imagine.
              </p>
            </div>
          </div>

          <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
            <div class="about-col">
              <div class="img">
                <img src="BizPage/assets/img/about-plan.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="bi bi-brightness-high"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Plan</a></h2>
              <p>
                Imagine offers a wide range of Apple products and third party accessories. Our stores have the assortment of accessories to help buyers get the most out of the product range.the store stocks a huge range of accessories for I-Watch, iPad and iPhone.
              </p>
            </div>
          </div>

          <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
            <div class="about-col">
              <div class="img">
                <img src="BizPage/assets/img/about-vision.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="bi bi-calendar4-week"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Vision</a></h2>
              <p>
                The Imagine Store also has trained staff to guide you best on the Apple product and accessories. Our endeavor at Imagine is to provide the best possible service in terms of customer experience. At the Imagine Store, knowledgeable salespeople are available to help customers learn about all the latest products from Apple. The hands-on store experience provides visitors with a chance to test-drive entire product line.
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End About Us Section -->


     <!-- ======= Advertise Video Section ======= -->
     <section id="advertise">
      <div class="container" data-aos="fade-up">
     
           <!-- Advertise Feature one -->
           <div class="adfeature">
            
          <div class="col-md-12 adbox" data-aos="fade-up" data-aos-delay="100">
            <h3 class="title" data-aos="fade-up">iPhone 13 pro</h3>
            <video src="BizPage/assets/img/apple ad vid/Apple iPhone 13 Pro Commercial ad trailer.mp4" width="800px" controls autoplay muted loop></video>
          </div >
          </div>
          
           <!-- Advertise Feature two -->
           <div class="adfeature">
           <div class="col-md-12 adbox" data-aos="fade-up" data-aos-delay="200">
            <h3 class="title" data-aos="fade-up">Apple Air Pod's</h3>
            <video src="BizPage/assets/img/apple ad vid/Introducing AirPods Pro — Apple.mp4" poster="BizPage/assets/img/Accesories/Air pods/apple airpod 3rd gen 1.png" width="800px" controls></video>
          </div >
           </div>


           <!-- Advertise Feature three -->
           <div class="adfeature">
            <div class="col-md-12 adbox" data-aos="fade-up" data-aos-delay="300">
             <h3 class="title" data-aos="fade-up">Apple i-watch</h3>
             <video src="BizPage/assets/img/apple ad vid/Apple Watch Series 7 Trailer Commercial Ad.mp4" poster="BizPage/assets/img/Accesories/I-watchs/I-watch 7/i-watch 7 midnight 1.png" width="800px" controls></video>
           </div >
           </div>

           <!-- Advertise Feature four -->
           <div class="adfeature">
            <div class="col-md-12 adbox" data-aos="fade-up" data-aos-delay="200">
             <h3 class="title" data-aos="fade-up">Apple Events</h3>
             <video src="BizPage/assets/img/apple ad vid/Apple event in 51 seconds.mp4"  poster="BizPage/assets/img/i-phones/i-phone 13 pro/i-Phone-pro_graphite gray.png" width="800px" controls></video>
           </div >
            </div>

        </div>
     </section><!-- End Advertise Video Section -->




    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container" data-aos="fade-up">

        <header class="section-header_one wow fadeInUp">
          <h3>Services</h3>
          <p>Imag!ne Stores Gives You A Very Well And Good Services To The Customers. We Assure That Every Service Will provide An Eqaully Importances. </p>
        </header>

        <div class="row">

          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="100">
            <div class="icon"><i class="bi bi-bag-check"></i></div>
            <h4 class="title"><a href="">Free Shipping</a></h4>
            <p class="description">We Give A Free Delivery To Customers Products, Which Is purchased From Our Online Shop. </p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="">Product Inssurence</a></h4>
            <p class="description">Imag!ne Store Give's A Facility Of Product Inssurence. These Inssurence Are Available In Sotre And Customers Will Get This Easily. </p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-headset"></i></div>
            <h4 class="title"><a href="">I-phone Care Centre</a></h4>
            <p class="description">We Have Well Technologies Equipped  I-Phone Care Centre. Customer can easily get there solution over there problems.</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-smartwatch"></i></div>
            <h4 class="title"><a href="">I-watch service</a></h4>
            <p class="description">We Have An Official I-Watch Service Centre. Customers Any Issue Related I-watch, It Will Be Solved Service Centre.</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-earbuds"></i></div>
            <h4 class="title"><a href="">Air Pod's service</a></h4>
            <p class="description">We Have An Official Apple AirPods Service Centre. Customers Any Issue Related AirPods, It Will Be Solved Service Centre.</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="400">
            <div class="icon"><i class="bi bi-cart-check-fill"></i></div>
            <h4 class="title"><a href="">Easy Online Shop</a></h4>
            <p class="description">Customers Who Are Unable To Reach Out To Our Shop, Then They Have A Great Advantage Of Our Online Imag!ne Apple Store. So Customer Can Easily Buy Any Prouducts, As like They Do In Store.</p>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Call To Action Section ======= -->
    <!-- <section id="call-to-action">
      <div class="container text-center" data-aos="zoom-in">
        <h3>Call To Action</h3>
        <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a class="cta-btn" href="#">Call To Action</a>
      </div>
    </section> End Call To Action Section -->

    <!-- ======= Skills Section ======= -->
    <!--<section id="skills">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>Our Skills</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip</p>
        </header>

        <div class="skills-content">

          <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">HTML <i class="val">100%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">CSS <i class="val">90%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">JavaScript <i class="val">75%</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">Photoshop <i class="val">55%</i></span>
            </div>
          </div>

        </div>

      </div>
    </section> End Skills Section -->

    <!-- ======= Facts Section ======= -->
    <section id="facts">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>Facts</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </header>

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
            <p>Clients</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="421" data-purecounter-duration="1" class="purecounter"></span>
            <p>Sale's</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="1364" data-purecounter-duration="1" class="purecounter"></span>
            <p>Hours Of Support</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="38" data-purecounter-duration="1" class="purecounter"></span>
            <p>Hard Workers</p>
          </div>

        </div>

        <div class="facts-img">
         <img src="BizPage/assets/img/apple%20ad%20vid/fact%201.jpg" alt="" class="img-fluid">
        </div>

      </div>
    </section><!-- End Facts Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="section-bg_one">
      <div class="container" data-aos="fade-up">

        <header class="section-header_one">
          <h3 class="section-title">Products & Accessories</h3>
        </header>

        <div class="row" data-aos="fade-up" data-aos-delay="100"">
      <div class=" col-lg-12">
          <ul id="portfolio-flters">
            <li data-filter="*" class="filter-active">All</li>
            <li data-filter=".filter-app">I-Phones</li>
            <li data-filter=".filter-card">AirPods</li>
            <li data-filter=".filter-web">I-Watch</li>
            <li data-filter=".filter-acc">Accesories</li>
          </ul>
        </div>
      </div>

      <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/i-phones/i-phone 13 pro/i-Phone-pro_sierra blue.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/i-phones/i-phone 13 pro/i-Phone-pro_sierra blue.png" data-lightbox="portfolio" data-title="I-Phones" class="link-preview"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/i-phone 13 pro.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-Phone 13 pro</a></h4>
              <p>I-Phones</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/I-watchs/I-watch 7/i-watch 7 red 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/I-watchs/I-watch 7/i-watch 7 red 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-Watch"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/I-watch 7.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-Watch 7</a></h4>
              <p>I-Watch</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/i-phones/i-phone 12 mini/i-phone 12 mini blue 3.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/i-phones/i-phone 12 mini/i-phone 12 mini blue 1.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-Phones"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/i-phone 12 mini.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-Phone 12 mini</a></h4>
              <p>I-Phones</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/Air pods/apple airpod 3rd gen 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/Air pods/apple airpod 3rd gen 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="AirPods"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/Apple Airpods.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">AirPods 3rd Genration</a></h4>
              <p>AirPods</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/I-watchs/I-watch 6/i-watch 6 rose gold 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/I-watchs/I-watch 6/i-watch 6 rose gold 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-Watch"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/I-watch 6.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-Watch 6</a></h4>
              <p>I-Watch</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/i-phones/i-phone xr/i-phone xr 1 white.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/i-phones/i-phone xr/i-phone xr 3 white.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="App 3"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/i-phone XR.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-Phone XR</a></h4>
              <p>I-Phones</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/Air pods/apple airpod max 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/Air pods/apple airpod max 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Card 1"><i class="bi bi-plus"></i></a>
              <a href="BizPage/portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">Airpods Max</a></h4>
              <p>Air Pods</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/Air pods/Apple Airpods Pro 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/Air pods/Apple Airpods Pro 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Card 3"><i class="bi bi-plus"></i></a>
              <a href="BizPage/portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">Airpods Pro</a></h4>
              <p>Air Pods</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
          <div class="BizPage/portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-watchs"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/I-watch SE.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-watch SE</a></h4>
              <p>I-watchs</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-acc">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-watchs"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/I-watch SE.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-watch SE</a></h4>
              <p>I-watchs</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-acc">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-watchs"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/I-watch SE.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-watch SE</a></h4>
              <p>I-watchs</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-acc">
          <div class="portfolio-wrap">
            <figure>
              <img src="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 1.png" class="img-fluid" alt="">
              <a href="BizPage/assets/img/Accesories/I-watchs/I-watch se/i-watch SE silver white 2.png" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="I-watchs"><i class="bi bi-plus"></i></a>
              <a href="BizPage/Extra Detail pages/I-watch SE.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="BizPage/portfolio-details.html">I-watch SE</a></h4>
              <p>I-watchs</p>
            </div>
          </div>
        </div>

      </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Our Clients Section ======= -->
    <%--<section id="clients">
      <div class="container" data-aos="zoom-in">

        <header class="section-header">
          <h3>Bussiness Partners</h3>
        </header>

        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-9.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-10.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-11.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-12.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-13.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-14.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-9.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-10.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-12.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="BizPage/assets/img/clients/client-13.png" class="img-fluid" alt=""></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>--%><!-- End Our Clients Section -->


     <!-- ======= Team Section ======= -->
     <section id="team">
      <div class="container" data-aos="fade-up">
        <div class="section-header_one">
          <h3>Team</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="100">
              <img src="BizPage/assets/img/team-1.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Walter White</h4>
                  <span>Chief Executive Officer</span>
                  <div class="social">
                    <a href=""><i class="bi bi-twitter"></i></a>
                    <a href=""><i class="bi bi-facebook"></i></a>
                    <a href=""><i class="bi bi-instagram"></i></a>
                    <a href=""><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <img src="BizPage/assets/img/team-2.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Sarah Jhonson</h4>
                  <span>Product Manager</span>
                  <div class="social">
                    <a href=""><i class="bi bi-twitter"></i></a>
                    <a href=""><i class="bi bi-facebook"></i></a>
                    <a href=""><i class="bi bi-instagram"></i></a>
                    <a href=""><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <img src="BizPage/assets/img/team-3.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>William Anderson</h4>
                  <span>CTO</span>
                  <div class="social">
                    <a href=""><i class="bi bi-twitter"></i></a>
                    <a href=""><i class="bi bi-facebook"></i></a>
                    <a href=""><i class="bi bi-instagram"></i></a>
                    <a href=""><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="400">
              <img src="BizPage/assets/img/team-4.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Amanda Jepson</h4>
                  <span>Accountant</span>
                  <div class="social">
                    <a href=""><i class="bi bi-twitter"></i></a>
                    <a href=""><i class="bi bi-facebook"></i></a>
                    <a href=""><i class="bi bi-instagram"></i></a>
                    <a href=""><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->


    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="section-bg_two">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>Customers</h3>
        </header>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="BizPage/assets/img/testimonial-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4>
                <p>
                  <img src="BizPage/assets/img/quote-sign-left.png" class="quote-sign-left" alt="">
                  Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                  <img src="BizPage/assets/img/quote-sign-right.png" class="quote-sign-right" alt="">
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="BizPage/assets/img/testimonial-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Designer</h4>
                <p>
                  <img src="BizPage/assets/img/quote-sign-left.png" class="quote-sign-left" alt="">
                  Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                  <img src="BizPage/assets/img/quote-sign-right.png" class="quote-sign-right" alt="">
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="BizPage/assets/img/testimonial-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <h4>Store Owner</h4>
                <p>
                  <img src="BizPage/assets/img/quote-sign-left.png" class="quote-sign-left" alt="">
                  Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                  <img src="BizPage/assets/img/quote-sign-right.png" class="quote-sign-right" alt="">
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="BizPage/assets/img/testimonial-4.jpg" class="testimonial-img" alt="">
                <h3>Matt Brandon</h3>
                <h4>Freelancer</h4>
                <p>
                  <img src="BizPage/assets/img/quote-sign-left.png" class="quote-sign-left" alt="">
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                  <img src="BizPage/assets/img/quote-sign-right.png" class="quote-sign-right" alt="">
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="BizPage/assets/img/testimonial-5.jpg" class="testimonial-img" alt="">
                <h3>John Larson</h3>
                <h4>Entrepreneur</h4>
                <p>
                  <img src="BizPage/assets/img/quote-sign-left.png" class="quote-sign-left" alt="">
                  Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                  <img src="BizPage/assets/img/quote-sign-right.png" class="quote-sign-right" alt="">
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

   

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="section-bg_one">
      <div class="container" data-aos="fade-up">

        <div class="section-header_one">
          <h3>Contact Us</h3>
          <p>Just Feel Free To Shear Your Any Suggesstion/Problems</p>
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="bi bi-geo-alt"></i>
              <h3>Address</h3>
              <address>A108 Adam Street, NY 535022, USA</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="bi bi-phone"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:+155895548855">+1 5589 55488 55</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="bi bi-envelope"></i>
              <h3>Email</h3>
              <p><a href="mailto:info@example.com">info@example.com</a></p>
            </div>
          </div>

        </div>

        <div class="form">
          <form action="forms/contact.php" method="post" role="form" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-6">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>
            </div>
            <div class="text-center">
              <div class="new-hover">
              <button type="submit">Send Message</button>
            </div>
            </div>
          </form>
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- Vendor JS Files -->
  <script src="BizPage/assets/vendor/aos/aos.js"></script>
  <script src="BizPage/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="BizPage/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="BizPage/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="BizPage/assets/vendor/php-email-form/validate.js"></script>
  <script src="BizPage/assets/vendor/purecounter/purecounter.js"></script>
  <script src="BizPage/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="BizPage/assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="BizPage/assets/js/main.js"></script>

</body>

</html>