<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href = "CSS/style.css" rel = "stylesheet"/>
<style>
       #maindiv{

           width: 100%;

           height: 874px;
      background: linear-gradient(to bottom , #000000, #004e92);
       }



       #subhead{

           width: 460px;

           color: #ffffff;

           font-weight: bold;

       }



       #para1{

           width: 415px;

           height: 92px;

           color: #ffffff;

           font: 18px,sans-serif;

       }



       #subdiv1{

           margin-left: 100px;

           height: 580px;

           width: 640px;

       }



       #subdiv2{

           width: 640px;

           height: 500px;

       }



       body {

           background-color:white;

           color: white;

           font-family: Arial, sans-serif;

       }



       .hero {

           display: flex;

           justify-content: space-between;

           align-items: center;

           padding: 50px;

       }



       .content {

           max-width: 600px;

       }



       .content h1 {

           font-size: 3rem;

           font-weight: bold;

       }



       .content p {

           margin: 20px 0;

           font-size: 1.2rem;

       }



       .btn-container {

           display: flex;

           gap: 20px;

       }



       .btn-container .btn {

           padding: 15px 30px;

           font-size: 1rem;

       }



       .video-section {

           position: relative;
           max-width: 500px;

       }



       .video-section .live-badge {

           position: absolute;

           top: 10px;

           left: 10px;

           background: red;

           color: white;

           padding: 5px 10px;

           font-size: 0.9rem;

           border-radius: 3px;

       }



       /* Adjust #logodiv to have logos below the video */

       #logodiv {

           margin-top: 20px;

           width: 100%;

           background-color: #004e92;



           padding: 20px 0;

           display: flex;

           flex-direction: column; /* Arrange contents vertically */

           align-items: center;

       }



       .logo-container {

           display: flex;

           justify-content: center;

           gap: 20px;

           flex-wrap: wrap; /* Ensures the logos wrap to the next line */

           margin-top: 20px;

           width: 100%;

       }



       .logo-container .col-md-2 {

           flex: 1 1 18%; /* Flex items will shrink and grow */

           text-align: center;

           margin-bottom: 20px; /* Adds space between rows */

       }

               /* Container and Heading */
               .container {
                   text-align: center;
                   padding: 20px;
                   background-color: #000;
                   width: 1312px;
                   height: 870px;
                   color: white;
                   margin: auto; /* Center container horizontally */
               }

               .heading {
                   font-size: 2rem;
                   margin-bottom: 40px;
               }

               /* Card Section */
               .cards {
                   display: flex;
                   justify-content: center;
                   gap: 20px;
               }

               .card {
                   background-color: #222;
                   border-radius: 10px;
                   width: 300px;
                   padding: 20px;
                   color: white;
                   text-align: center;
                   position: relative;
                   overflow: hidden;
               }

               .card img {
                   width: 100%;
                   border-radius: 10px;
                   margin-top: 15px;
               }

               .card h2 {
                   font-size: 1.5rem;
                   margin: 10px 0;
               }

               .card p {
                   font-size: 1rem;
                   margin: 10px 0;
               }

               .card button {
                   background-color: white;
                   color: black;
                   border: none;
                   padding: 10px 20px;
                   font-size: 1rem;
                   cursor: pointer;
                   border-radius: 5px;
                   margin-top: 10px;
               }

               .card button:hover {
                   background-color: #ddd;
               }

               .event {
                   height: 175px;
                   width: 250px;
               }

               /* Background gradients for cards */
               .in-person {
                   background: linear-gradient(135deg, #4a148c, #880e4f);
               }

               .virtual {
                   background: linear-gradient(135deg, #1a237e, #0d47a1);
               }

               .hybrid {
                   background: linear-gradient(135deg, #ad1457, #880e4f);
               }

               /* Consultant Section */
               #consultant {
                   height: 235px;
                   width: 725px;
                   margin: 40px auto; /* Center horizontally with space from above */
                   padding: 40px 20px;
                   background-color: #000; /* Black background */
                   color: white; /* White text */
                   display: flex; /* Use flexbox for inline layout */
                   align-items: center; /* Vertically align the image and text */
                   justify-content: space-between; /* Space out the image and text */
                   text-align: left;
                   border-radius: 10px; /* Optional: Rounded corners */
               }

               #consultantimg {
                   width: 190px;
                   height: 130px;
                   object-fit: contain; /* Ensure the image maintains its aspect ratio */
               }

               #consultant p {
                   font-size: 1rem;
                   margin: 0;
                   line-height: 1.5;
                   max-width: 500px; /* Limit the width of the text */
                   padding-left: 20px; /* Add spacing between the image and text */
               }
                      .container123 {
                           display: flex;
                           align-items: flex-start; /* Aligns items at the top */
                           justify-content: space-between;
                           padding: 100px;
                           width: 1300px;
                           height : 20rem ;
                           margin: auto;
                           background-color: purple;
                           border-radius: 15px;
                       }

                       .left-content {
                           max-width: 600px;
                           color: white;
                           font-family: Arial, sans-serif;

                       }

                       .sub-heading {
                           color: #00ff00; /* Bright green color */
                           font-size: 1.2rem;
                           margin-bottom: 10px;
                           font-weight: bold;
                       }

                       .main-heading {
                           font-size: 3rem;
                           font-weight: bold;
                           line-height: 1.2;
                           margin: 0;
                       }

                       .heading-icon {
                           background-color: #00ff00; /* Bright green circle */
                           color: #000; /* Black icon color */
                           border-radius: 50%;
                           width: 40px;
                           height: 40px;
                           display: inline-flex;
                           align-items: center;
                           justify-content: center;
                           font-size: 1.2rem;
                           font-weight: bold;
                           margin-left: 10px;
                       }

                       .right-content {
                           font-size: 1rem;
                           line-height: 1.6;
                           font-family: Arial, sans-serif;

                           color: white;
                           max-width: 500px; /* Adjusted width for 4 lines */
                       }

                       .headingh2 {
                           margin-top: 10px;
                           font-size: 2.5rem;
                           font-weight: bold;
                       }
                           .promo-banner {
                                                          background-color: #0a1433;
                                                          color: white;
                                                          padding: 2rem;
                                                          border-radius: 8px;
                                                      }
                                                      .green-title {
                                                          color: #00ff9d;
                                                          font-size: 2rem;
                                                          font-weight: bold;
                                                      }
                                                      .learn-more-btn {
                                                          background-color: #ff4d4d;
                                                          border: none;
                                                          padding: 0.5rem 1.5rem;
                                                          border-radius: 4px;
                                                          color: white;
                                                      }
                                                      .font-large{
                                                      font-size: 30px;
                                                  }
                                                      .footer-links a {
                                                          color: #333;
                                                          text-decoration: none;
                                                          display: block;
                                                          margin-bottom: 0.5rem;
                                                      }
                                                      .footer-links a:hover {
                                                          color: #0056b3;
                                                      }
                                                      .social-icons a {
                                                          margin-right: 1rem;
                                                          color: #333;
                                                          text-decoration: none;
                                                      }
                                                      .containers{
                                                                  display: flex;
                                                                  flex-direction: column;
                                                                  justify-content: center;
                                                                  align-items: center;
                                                                  padding: 40px;
                                                                  height: 100vh;
                                                                  margin: 0;
                                                                  font-family: Arial, sans-serif;
 background: radial-gradient(ellipse at top, rgba(0, 0, 0, 1), transparent 70%),
                 radial-gradient(ellipse at bottom, rgba(0, 0, 0, 0.1), transparent 70%),
                 linear-gradient(to right,
                     #0f103b 30%,
                     #1b2e3c 45%,
                     #174542 55%,
                     #094646 70%);

                                                                  color: white;
                                                              }

                                                              .section {
                                                                  display: flex;
                                                                  justify-content: space-around;
                                                                  align-items: center;
                                                                  width: 100%;
                                                                  margin-bottom: 20px;
                                                              }

                                                              .content {
                                                                  max-width: 400px;
                                                              }

                                                              .content.shift-right {
                                                                  margin-left: 40px;
                                                              }

                                                               h2 {
                                                                  font-size: 24px;
                                                                  margin-bottom: 16px;
                                                              }

                                                             p {
                                                                  font-size: 16px;
                                                                  line-height: 1.6;
                                                              }

                                                              .icon {
                                                                  text-align: center;
                                                                  width: 100%;
                                                              }

                                                              .icon img {
                                                                  width: 150px;
                                                                  height: 180px;
                                                                  display: block;
                                                                  margin: 0 auto;
                                                              }

                                                               .intro {
                                                                  text-align: center;
                                                                  margin-bottom: 40px;
                                                              }

                                                              .intro h1 {
                                                                  font-size: 36px;
                                                                  margin: 0;
                                                              }

                                                              .intro h2 {
                                                                  font-size: 24px;
                                                                  margin-top: 10px;
                                                              }

</style>
  </head>
  <body>


  </body>
</html>
