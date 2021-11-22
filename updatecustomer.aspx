<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatecustomer.aspx.cs" Inherits="Apple_Store_System.update_customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.container,.container-fluid,.container-lg,.container-md,.container-sm,.container-xl,.container-xxl{width:100%;padding-right:var(--bs-gutter-x,.75rem);padding-left:var(--bs-gutter-x,.75rem);margin-right:auto;margin-left:auto}*,::after,::before{box-sizing:border-box}.align-items-center{align-items:center!important}.justify-content-center{justify-content:center!important}.row{--bs-gutter-x:1.5rem;--bs-gutter-y:0;display:flex;flex-wrap:wrap;margin-top: calc(-1 * var(--bs-gutter-y));
}.justify-content-between{justify-content:space-between!important}.d-flex{display:flex!important}.col-xl-11{flex:0 0 auto;width:91.66666667%}.row>*{flex-shrink:0;width:100%;max-width:100%;margin-top: var(--bs-gutter-y);
    color: #000000;
    padding-right: calc(var(--bs-gutter-x) * .5);
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Montserrat", sans-serif;
  font-weight: 400;
  margin: 0 0 20px 0;
  padding: 0;
}

.h1,h1{font-size:2.5rem}.h1,h1{font-size:calc(1.375rem + 1.5vw)}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{margin-top:0;margin-bottom:.5rem;font-weight:500;line-height:1.2}

a {
  color: #18d26e;
  transition: 0.5s;
  text-decoration: none;
}

a{color:#0d6efd;text-decoration:underline}dl,ol,ul{margin-top:0;margin-bottom:1rem}ol,ul{padding-left:2rem}.nav-link{transition:none}.nav-link{display:block;padding:.5rem 1rem;color:#0d6efd;text-decoration:none;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out}.dropdown,.dropend,.dropstart,.dropup{position:relative}ol ol,ol ul,ul ol,ul ul{margin-bottom:0}
  .mobile-nav-toggle {
    display: block;
  }

  .mobile-nav-toggle {
  color: #fff;
  font-size: 28px;
  cursor: pointer;
  display: none;
  line-height: 0;
  transition: 0.5s;
}

.container,.container-lg,.container-md,.container-sm,.container-xl,.container-xxl{max-width:1320px}.container,.container-lg,.container-md,.container-sm,.container-xl{max-width:1140px}.container,.container-lg,.container-md,.container-sm{max-width:960px}.container,.container-md,.container-sm{max-width:720px}.container,.container-sm{max-width:540px}.h2,h2{font-size:2rem}.h2,h2{font-size:calc(1.325rem + .9vw)}[data-aos=fade-up]{transform:translate3d(0,100px,0)}
.section-header h3 {
  font-size: 32px;
  color: rgb(255, 255, 255);
  text-transform: uppercase;
  text-align: center;
  font-weight: 700;
  position: relative;
  padding-bottom: 15px;
}
.h3,h3{font-size:1.75rem}.h3,h3{font-size:calc(1.3rem + .6vw)}.col-md-6{flex:0 0 auto;width:50%}.form-control{transition:none}.form-control{display:block;width:100%;padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#212529;background-color:#fff;background-clip:padding-box;border:1px solid #ced4da;-webkit-appearance:none;-moz-appearance:none;appearance:none;border-radius:.25rem;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container-fluid">

      <div class="row justify-content-center align-items-center">
        <div class="col-xl-11 d-flex align-items-center justify-content-between">
          <h1 class="logo"><a href="index.html">Apple Store</a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav id="navbar" class="navbar">
            <ul>
              <li><a class="nav-link scrollto " href="#hero">Home</a></li>
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
        <h2>Customer Form</h2>

      </div>
    </section><!-- End Breadcrumbs -->

      <section id="contact" class="section-bg" style="margin-top:50px;">
      <div class="container" data-aos="fade-up">
   
   <div class="section-header">
          <h3>Coustmer</h3>
        
        </div>

     <div class="form">
            <div class="row">
              <div class="form-group col-md-6">
                Customer ID
                <asp:TextBox ID="cust_id1" class="form-control" runat="server"></asp:TextBox>
           </div>
            <div class="form-group col-md-6">
                &nbsp;first name
                <asp:TextBox ID="first_nm1" class="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
              <div class="row">
              <div class="form-group col-md-6">
                &nbsp;last name
                <asp:TextBox ID="last_nm1" class="form-control" runat="server"></asp:TextBox>
            </div>
             <div class="form-group col-md-6">
                 Shipping Address
                <asp:TextBox ID="ship_adrs1" class="form-control" runat="server"></asp:TextBox>
           </div>
           </div>

            <div class="row">
              <div class="form-group col-md-6">
                &nbsp;Billing Address
                  <asp:TextBox ID="bil_adrs1" class="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group col-md-6">
&nbsp;City
                    <asp:TextBox ID="city1" class="form-control" runat="server"></asp:TextBox>
                </div>
           </div>
           <div class="row">
              <div class="form-group col-md-6">
                  Pincode
                <asp:TextBox ID="pincode1" class="form-control" runat="server"></asp:TextBox>
           </div>
             <div class="form-group col-md-6">
                 Mobile
                <asp:TextBox ID="mob_no1" class="form-control" runat="server"></asp:TextBox>
          </div>
          </div>

           <div class="row">
              <div class="form-group col-md-6">
                  Email
                <asp:TextBox ID="email1" class="form-control" runat="server"></asp:TextBox>
           </div>
             <div class="form-group col-md-6">
                &nbsp;Password
                <asp:TextBox ID="pass1" class="form-control" runat="server"></asp:TextBox>
         </div>
         </div>
          <div class="row">
             <div class="form-group col-md-6">
                 <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" 
                     Text="Update" />
          </div>
           <div class="form-group col-md-6">
           </div>
           </div>
    
    
    
    </div>
    </div>
    </section>

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
    
    </div>
    </form>
</body>
</html>
