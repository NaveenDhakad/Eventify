<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Left Side Popup with Bootstrap</title>
    <%@include file = "All_CSS_js.jsp"%>
    <style>
.close {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 10px;
        background: #f8f9fa; /* Optional: Add background color for better visibility */
        border-top: 1px solid #dee2e6; /* Optional: Add a top border */
    }
         .sticky-top-section {
                position: sticky !important ;
                top: 0 !important;
                z-index: 1020 !important; /* Ensure it appears above other elements */
                background: #fff; /* Background to avoid overlap issues */
            }

            /* Add max-height and overflow for scrolling */
            .offcanvas-body {
                overflow-y: auto;
                max-height: calc(100vh - 56px); /* Adjust based on header height */
            }
            </style>
</head>
<body>
    <div class="offcanvas offcanvas-end" tabindex="-1" data-bs-backdrop = "false"  id="offcanvasLeft" aria-labelledby="profileSettingsLabel">
           <div class="offcanvas-header border-bottom">
               <h5 class="offcanvas-title" id="profileSettingsLabel">Profile Settings</h5>
               <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
           </div>
           <div class="offcanvas-body p-0">
               <!-- Sticky Profile and Account Section -->
               <div class="sticky-top-section">
                   <!-- Profile Section -->
                   <div class="text-center p-4 border-bottom">
                       <div class="avatar mb-3">
                           <img src="calender.png" class="rounded-circle" width="80" height="80" alt="Profile">
                       </div>
                       <h5 class="mb-1">naveendhakad7999</h5>
                       <p class="text-muted mb-1">naveendhakad7999@gmail.com</p>
                       <small class="text-muted">User ID : 60036372645</small>
                       <div class="mt-2">
                           <a href="#" class="text-primary text-decoration-none">Profile Settings</a>
                       </div>
                   </div>

                   <!-- Account Navigation Section -->
                   <div class="d-flex border-bottom">
                       <a href="Profile" class="flex-grow-1 p-3 text-decoration-none text-dark border-end">
                           <i class="bi bi-person text-primary me-2"></i>
                           My Account
                       </a>
                       <a href="/" class="flex-grow-1 p-3 text-decoration-none text-danger">
                           <i class="bi bi-box-arrow-right me-2"></i>
                           Sign Out
                       </a>
                   </div>
               </div>

               <!-- Workspace Section -->
               <div class="p-3 border-bottom">
                   <h6 class="mb-3">Workspace</h6>
                   <div class="d-flex justify-content-between align-items-center mb-2">
                       <div>
                           <strong>Portal :</strong> foodorder
                       </div>
                       <div>
                           <button class="btn btn-link p-0"><i class="bi bi-arrow-clockwise"></i></button>
                           <button class="btn btn-link p-0 ms-2"><i class="bi bi-gear"></i></button>
                       </div>
                   </div>
                   <small class="text-muted">ID : 60036370562</small>

                   <div class="mt-3">
                       <div class="d-flex justify-content-between align-items-center">
                           <div>
                               <strong>Space :</strong> Default Space
                           </div>
                           <button class="btn btn-link p-0"><i class="bi bi-gear"></i></button>
                       </div>
                       <small class="text-muted">ID : 331350000000020011</small>
                   </div>
               </div>

               <!-- Appearance Section -->
               <div class="p-3 border-bottom">
                   <h6 class="mb-3">Appearance</h6>
                   <div class="d-flex gap-3 mb-3">
                       <div class="text-center">
                           <div class="border rounded p-2 mb-2">
                               <i class="bi bi-sun"></i>
                           </div>
                           <small>Light</small>
                       </div>
                       <div class="text-center">
                           <div class="border rounded p-2 mb-2">
                               <i class="bi bi-moon"></i>
                           </div>
                           <small>Dark</small>
                       </div>
                       <div class="text-center">
                           <div class="border rounded p-2 mb-2">
                               <i class="bi bi-circle-half"></i>
                           </div>
                           <small>System</small>
                       </div>
                       <div class="ms-auto">
                           <button class="btn btn-link text-primary">
                               <i class="bi bi-sliders me-2"></i>
                               Customize
                           </button>
                       </div>
                   </div>
               </div>

               <!-- Subscription Section -->
               <div class="p-3 border-bottom">
                   <h6 class="mb-3">Subscription Plan : <b>Coming Soon</b></h6>
                   <div class="d-flex justify-content-between align-items-center">
                       <div>
                           <i class="bi bi-gift text-success me-2"></i>
                           Free
                       </div>
                       <a href="#" class="text-primary text-decoration-none">Plan Details</a>
                   </div>
               </div>

               <!-- Close Button -->
               <div class="p-1 close">
                   <button class="btn btn-light w-100" data-bs-dismiss="offcanvas">Close</button>
               </div>
           </div>
       </div>
</body>
</html>
