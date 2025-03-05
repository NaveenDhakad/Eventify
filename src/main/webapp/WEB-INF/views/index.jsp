<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eventify : Home</title>
   <%@include file =  "All_CSS_js.jsp" %>
  <link href = "CSS/style.css" rel = "stylesheet"/>
 <%@include file =  "indexcss.jsp" %>
<style>
.h3{
color : black ;
}
.popup-box {
  position: absolute;
  top: 60px; /* Adjust this value to position below the navbar */
  left: -50px;

  background-color: white;
  border: 1px solid #ddd;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  padding: 10px 20px;
  display: none; /* Initially hidden */
  z-index: 2;
  width: 200px; /* Adjust width as needed */
  height : 300px ;
  border-radius: 8px;
}

.nav-item:hover .popup-box {
  display: block; /* Show on hover */
}

.popup-box p {
  margin: 0;
  font-size: 14px;
  color: #333;
}

.navbar1 .nav-link {
  position: relative;
}

  .navbar1 {
       transition: all 0.3s ease-in-out;
       padding: 20px 20px;
       background-color: black !important; /* Black background initially */
     }

     .navbar1 .navbar-brand,
     .navbar1 .nav-link {
       color: white !important; /* White text for the black background */
     }

     /* Navbar styles after scrolling (White Background) */
     .navbar1.scrolled {
       background-color: white !important; /* White background after scroll */
       padding: 10px 20px; /* Shrink padding */
       box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Add shadow */
     }

     .navbar1.scrolled .navbar-brand,
     .navbar1.scrolled .nav-link {
       color: black !important; /* Black text for the white background */
     }

</style>
  </head>
  <body   >
      <%@include file =  "Navbar.jsp" %>
<nav class="navbar navbar1 navbar-expand-lg fixed-top" style = "height : 70px ; z-index :1 ; ">
    <div class="container-fluid">
  <div class="d-flex flex-column">
       <a class="navbar-brand m-0 p-0 " style = "font-size : 15px ;" href="#">Eventify</a>
       <a class="navbar-brand m-0 p-0" style = "font-size : 20px ;" href="#">BackStage</a>
     </div>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item position-relative">
            <a class="nav-link active" href="#home" id="homeNav" >Home</a>
             <div class="popup-box">
                        <p>Welcome to the Home Section!</p>
                      </div>
          </li>
          <li class="nav-item position-relative">
            <a class="nav-link" href="#about">About</a>
              <div class="popup-box">
                                    <p>Welcome to the Home Section!</p>
                                  </div>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="#services">Services</a>

          </li>
          <li class="nav-item position-relative" >
            <a class="nav-link" href="#contact">Contact</a>
              <div class="popup-box">
                                    <p>Welcome to the Home Section!</p>
                                  </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

       <div id="maindiv" class="container-fluid hero " style="display:flex; flex-wrap: wrap;  " >

         <div id="subdiv1" class="content">

             <h6 class="text-uppercase text-info">All-in-one event management software</h6>

             <h1 id="subhead">Built for the events of today -- and tomorrow</h1>

             <p id="para1">Everything you need to craft impactful event experiences all while staying technologically relevant, now and always.</p>

             <div class="btn-container">

                 <a href="Signup" style="font-weight: bold;" class="btn btn-danger">Sign Up For Free</a>

                 <a href="#" style="font-weight: bold;" class="btn btn-outline-light">Request Demo</a>

             </div>

         </div>

         <div id="subdiv2" class="video-section" style = "margin-right : 80px">

             <div class="live-badge">LIVE</div>
   <img src="images/videoframe_2853.png" style="width : 500px;height: 450px ;   " alt="The Hindu" class="img-fluid">

         </div>

         <div id="logodiv" style=" background: linear-gradient(to bottom right, #000428, #004e92); border: none;">

             <div class="logo-container">

                 <div class="col-md-2">

                     <img src="images/amazon.png" style="width:50%;height: 70%;" alt="Amazon" class="img-fluid">

                 </div>

                 <div class="col-md-2">

                     <img src="images/levis-white.svg" style="width:50%;height: 70%;" alt="Levi's" class="img-fluid">

                 </div>

                 <div class="col-md-2">

                     <img src="images/the-hindu-white.png" style="width:70%;height: 70%;" alt="Hindustan Times" class="img-fluid">

                 </div>

                 <div class="col-md-2">

                     <img src="images/razorpay-white.svg" style="width:70%;height: 70%;" alt="The Hindu" class="img-fluid">

                 </div>

                 <div class="col-md-2">

                     <img src="images/nudge.png"style="width:50%;height: 50%;" alt="TheNudge Institute" class="img-fluid">

                 </div>

             </div>

         </div>


 </div>
 <body>
     <div class="container-fluid" style ="background-color : black ; ">
         <h1 class="heading" style = "text-align : center ;">The simplest way to host all your events</h1>
         <div class="cards">
             <!-- In-person events card -->
             <div class="card in-person">
                 <h2>In-person events</h2>
                 <p>Keep it all together at the venue</p>
                 <button>Explore More</button>
                 <video class="event" src="images/VID-20250123-WA0003.mp4" style = "margin-top :30px " alt="In-person event" autoplay loop muted></video>
             </div>

             <!-- Virtual events card -->
             <div class="card virtual">
                 <h2>Virtual events</h2>
                 <p>Go beyond webina and workshop</p>
                 <button>Explore More</button>
                 <video class="event" src="images/VID-20250123-WA0004.mp4" style = "margin-top :30px " alt="Virtual event" autoplay loop muted></video>
             </div>

             <!-- Hybrid events card -->
             <div class="card hybrid">
                 <h2>Hybrid events</h2>
                 <p>Merge the physical with the virtual</p>
                 <button>Explore More</button>
                 <video class="event" src="images/VID-20250123-WA0005.mp4" style = "margin-top :30px " alt="Hybrid event" autoplay loop muted></video>
             </div>
         </div>

         <!-- Consultant Section -->
         <div id="consultant">
             <img id="consultantimg" src="images/c.png" alt="Constellation Research Logo">
             <p>
                 Featured in the Constellation ShortList™ for Event Marketing & Management Software
                 (2020, 2021, 2022, 2023, 2024)
             </p>
         </div>
     </div>
        <div class="container container123"  >
             <!-- Left Content -->
             <div class="left-content">
                 <p class="sub-heading">DO MORE IN LESS TIME</p>
                 <div class="main-heading">
                     End-to-end <span class="heading-icon">=</span>
                 </div>
                 <h2 class="headingh2">event planning</h2>
             </div>

             <!-- Right Content -->
             <div class="right-content">
                 Empower your team with all the tools they need to streamline your event planning process-be it setting the event agenda, accepting sponsor proposals, addressing attendee questions, or even hosting rehearsals.
             </div>
         </div>

  <div class="container-fluid containers " style = "margin-top : 20px  ;  min-height : 1000px  ;  ">
        <div class="intro" style = "  ">
            <h1 style="font-size: 60px;">We've got your back-in</h1>
            <h1 style="font-size: 60px;">more ways than one</h1>
        </div>

        <div class="section">
            <div class="content" style="margin-bottom: 300px;margin-left: 150px;">
                <h2 style="font-weight: bold;font-size: 40px;">Security by design</h2>
                <p style="font-size: 20px;font-weight: bold;">
                    We take your online safety very seriously. Not only are we committed to the highest international standards of security, but we also own our entire tech stack and all of our data centers. So go ahead and plan your event-we'll secure it, for you and your attendees.
                </p>
            </div>

            <div class="icon">
                <img src="images/securitylogo-removebg-preview.png" alt="Security Icon" style="height: 30%;width: 30%;margin-top: 140px;margin-left: 80px;">
            </div>
        </div>

        <div class="section">
            <div class="content shift-right" style="margin-right: -900px;margin-top: -250px;">
                <h2 style="font-weight: bold;font-size: 40px;">Privacy by default</h2>
                <p style="font-size: 20px;font-weight: bold;">
                    When we say we value privacy, we mean that we won't show you any ads, use third-party cookies to track you, or mine your data. Plus, we'll do our best to support you in protecting your attendees' information and staying compliant with data privacy regulations.
                </p>
            </div>
        </div>
    </div>



          <footer class="container-fluid py-5" style = "background-color : #F1F1F1 " >


                  <div class="row">
                      <!-- Promo Banner -->
                      <div class="col-md-3 mb-4">
                          <div class="promo-banner" style = "background-color : #0a1433">
                              <h2 class="green-title">The Green Room</h2>
                              <p class="mb-4">All that happens backstage to run a successful event</p>
                              <button class="learn-more-btn">Learn more</button>
                              <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%20(264)-bNpF3GK0rcTLTOAA29Vrsz9QWfTApF.png" alt="Backstage Illustration" class="img-fluid mt-3">
                          </div>
                      </div>

                      <!-- Features Column -->
                      <div class="col-md-3 mb-4" >
                          <h3 class="h3 mb-3">Features</h3>
                          <div class="footer-links">
                              <a href="#">Event website builder</a>
                              <a href="#">Event ticketing</a>
                              <a href="#">Event marketing</a>
                              <a href="#">Exhibition management</a>
                              <a href="#">Event sponsorship management</a>
                              <a href="#">Event app</a>
                              <a href="#">Event Lead Retrieval</a>
                              <a href="#">Event analytics</a>
                              <a href="#">All features</a>
                          </div>
                      </div>

                      <!-- Resources Column -->
                      <div class="col-md-3 mb-4">
                          <h3 class="h3 mb-3">Resources</h3>
                          <div class="footer-links">
                              <a href="#">The Green Room</a>
                              <a href="#">Help center</a>
                              <a href="#">Community forum</a>
                              <a href="#">Blog</a>
                              <a href="#">Webinars</a>
                              <a href="#">Product updates</a>
                          </div>

                          <h3 class="h3 mb-3 mt-4">How we compare</h3>
                          <div class="footer-links">
                              <a href="#">Airmeet alternative</a>
                              <a href="#">Cvent alternative</a>
                              <a href="#">Eventbrite alternative</a>
                              <a href="#">Hopin alternative</a>
                              <a href="#">Swapcard alternative</a>
                          </div>
                      </div>

                      <!-- Quick Links & Explore Column -->
                      <div class="col-md-3 mb-4">
                          <h3 class="h3 mb-3">Quick links</h3>
                          <div class="footer-links">
                              <a href="#">Pricing</a>
                              <a href="#">Contact us</a>
                              <a href="#">Customers</a>
                              <a href="#">GDPR and Eventify</a>
                              <a href="#">Newsletter</a>
                          </div>

                          <h3 class="h3 mb-3 mt-4">Explore</h3>
                          <div class="footer-links">
                              <a href="#">Event management software</a>
                              <a href="#">Event management Solution</a>
                              <a href="#">Event planning software</a>
                              <a href="#">Event ticketing software</a>
                          </div>
                      </div>
                  </div>

                  <div class="row mt-4 pt-4 border-top">
                      <div class="col-md-6">
                          <a href="mailto:support@eventifybackstage.com" class="text-decoration-none text-primary" style="font-size: 22px;font-weight: bold;margin-left: 50px;">
                              <i class="fa-solid fa-envelope"></i> support@eventifybackstage.com
                          </a>
                      </div>
                      <div class="col-md-6 text-md-end" style="margin-left: -40px;">
                          <div class="social-icons">
                              <a href="#" aria-label="Facebook" class="text-decoration-none" style="color: blue;size:100px">
                                  <i class="fab fa-facebook fa-lg"></i>
                              </a>
                              <a href="#" aria-label="Twitter" class="text-decoration-none"  >
                                  <i class="fab fa-twitter fa-lg"></i>
                              </a>
                              <a href="#" aria-label="LinkedIn" class="text-decoration-none" style="color: blue;">
                                  <i class="fab fa-linkedin fa-lg"></i>
                              </a>
                              <a href="#" aria-label="Instagram" class="text-decoration-none" style="color: #E1306C;">
                                  <i class="fab fa-instagram fa-lg"></i>
                              </a>
                          </div>
                      </div>
                  </div>
                  <div class="border-bottom" style="margin-top: 50px;"></div>

              </footer>
<script>
    // JavaScript to add 'scrolled' class on scroll
    const navbar = document.querySelector('.navbar1');

    window.addEventListener('scroll', () => {
      if (window.scrollY > 100) {
        navbar.classList.add('scrolled');
      } else {
        navbar.classList.remove('scrolled');
      }
    });
  </script>

  </body>
</html>