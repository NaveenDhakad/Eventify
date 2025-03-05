<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Sign-In Settings</title>
    <%@include file="All_CSS_js.jsp" %>

    <style>
        .active1 {
            background-color: #4154f1 !important;
            color: white !important;
        }

          body {
                   font-family: Arial, sans-serif;
                   background-color: #f8f9fa;

               }
               .popup {
                   display: none;
                   position: fixed;
                   top: 20px;
                   left: 50%;
                   transform: translateX(-50%);
                   background-color: #d4edda;
                   color: #155724;
                   padding: 10px 20px;
                   border-radius: 5px;
                   box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
               }
               .switch-container {
                   padding: 15px;
                   border: 1px solid #ddd;
                   border-radius: 5px;
                   background: #ffffff;
                   display: flex;
                   align-items: center;
                   justify-content: space-between;
               }
               .title-container {
                   display: flex;
                   align-items: center;
               }
               .icon {
                   width: 30px;
                   height: 30px;
                   margin-right: 10px;
               }
               .available-plans {
                   background: #fff3cd;
                   padding: 10px;
                   border-radius: 5px;
                   text-align: center;
                   border: 1px solid #ffeeba;
               }
               .plan-icons {
                   display: flex;
                   justify-content: center;
                   gap: 10px;
                   margin-bottom: 10px;
               }
               .plan-icons span {
                   width: 30px;
                   height: 30px;
                   background-color: #f8d7da;
                   display: inline-block;
                   border-radius: 50%;
                   line-height: 30px;
                   text-align: center;
                   font-weight: bold;
                   color: #721c24;
               }
               .upgrade-btn {
                   display: inline-block;
                   padding: 5px 15px;
                   background-color: #28a745;
                   color: white;
                   text-decoration: none;
                   border-radius: 5px;
                   font-size: 14px;
               }
            </style>
</head>
<body>

    <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>

    <aside class="sidebar2 border-end p-3" style="min-width: 15rem;">
        <nav class="nav flex-column gap-1">
            <a class="nav-link nav-link2 d-flex align-items-center " href="Setting-branding">
                <i class="bi bi-info-circle me-2"></i> Branding
            </a>
            <a class="nav-link nav-link2 d-flex align-items-center active active1" href="Setting-Signin">
                <i class="bi bi-people me-2"></i> Sign In
            </a>
            <a class="nav-link nav-link2 d-flex align-items-center" href="Setting-Workflow">
                <i class="bi bi-mic me-2"></i> Workflow
            </a>
        </nav>
    </aside>

     <div class="container">
         <div class="row">
             <div class="col-12">
                 <h4 class="mb-4">Sign-In Settings</h4> <!-- h4 in a separate line -->
             </div>
         </div>
           <!-- Popup Notification -->
       <div id="popupMessage" class="popup">
           Event website sign-in settings saved
       </div>

       <!-- Sign-In Sections (Placed Side-by-Side in a Row) -->
       <div class="container">
           <div class="row g-4">
               <!-- Visitor Sign-In -->
               <div class="col-md-15">
                   <div class="switch-container">
                       <div class="title-container">
                           <img src="visitor sign in.png" alt="Visitor Icon" class="icon">
                           <div>
                               <h5>Visitor Sign-In</h5>
                               <p>Manage if website visitors can sign in to the event website without buying a ticket or being part of the event team.</p>
                           </div>
                       </div>
                       <div class="available-plans">
                           <div class="plan-icons">
                               <span>🔶</span><span>💎</span> <span>🔵</span>
                           </div>
                           <a href="#" class="upgrade-btn">Upgrade</a>
                       </div>
                   </div>
               </div>

               <!-- Ticket ID Sign-In -->
               <div class="col-md-15">
                   <div class="switch-container">
                       <div class="title-container">
                           <img src="ticket sign.png" alt="Ticket Icon" class="icon">
                           <div>
                               <h5>Ticket ID Sign-In</h5>
                               <p>Manage if website visitors can sign in to the website with their ticket ID.</p>
                           </div>
                       </div>
                       <div class="d-flex justify-content-end">
                           <div class="form-check form-switch">
                               <input class="form-check-input" type="checkbox" id="ticketIDSignInToggle">
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>

       <script>
           // Function to show popup
           function showPopup() {
               let popup = document.getElementById("popupMessage");
               popup.style.display = "block";

               setTimeout(() => {
                   popup.style.display = "none";
               }, 3000); // Hide after 3 seconds
           }

           // Add event listener to Ticket ID Sign-In toggle
           document.getElementById("ticketIDSignInToggle").addEventListener("change", showPopup);
       </script>

</body>
</html>
