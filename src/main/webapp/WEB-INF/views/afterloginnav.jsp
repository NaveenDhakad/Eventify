<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management Portal</title>
      <%@include file = "All_CSS_js.jsp"%>

      <style>
          body {
              padding-top: 56px; /* Adjust this value based on the navbar height */
          }

        .sidebar {
            background-color: #f8f9ff;
            min-height: calc(100vh - 56px);
        }

        .nav-link.active {
            color: #4747ff !important;
            position: relative;
        }

        .nav-link.active::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: #4747ff;
        }

        .notification-banner {
            background-color: #f8f9ff;
            border: 1px solid #e9ecef;
            border-radius: 8px;
        }

        .empty-state {
            color:black;
            max-width: 400px;
            margin: 100px auto;
            text-align: center;
        }

        .top-nav {
            background-color: #1a1147;
        }

        .create-event-btn {
            background-color: #4747ff;
            border-color: #4747ff;
        }
    </style>
</head>
<body>
 <nav class="navbar navbar-expand-lg top-nav fixed-top ">
        <div class="container-fluid" style="text-align:left;justify-content: left;">
            <a class="navbar-brand text-white" href="#">Backstage</a>
            <div class="d-flex align-items-center" >
                <a href="running" class="text-white text-decoration-none me-4 active btn-outline-success"  style="border-bottom: 2px solid white;">Home</a>
                <a href="portal-setting-general" class="text-white text-decoration-none"  >Portal Settings</a>

            </div>
        </div>
             <button class="btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
        <i class="fa-solid fa-circle-user" style="color: white ; height : 30px ; width : 30px ; font-size : 2rem ; margin-right : 1rem ;   "></i>
                    </button>

    </nav>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 sidebar p-3">
                <div class="list-group list-group-flush">
                    <a href="running" class="list-group-item list-group-item-action active bg-transparent" style="color: red;">
                        <i class="fa-solid fa-calendar-days"></i> Events
                    </a>
                    <a href="dashboard" class="list-group-item list-group-item-action bg-transparent" >
                        <i class="fa-solid fa-users"></i> Attendee Profiles
                    </a>
                    <a href="setting-space" class="list-group-item list-group-item-action bg-transparent">
                        <i class="fa-solid fa-gear"></i> Space Settings
                    </a>
                </div>
            </div>
    <!-- Main Content -->
            <div class="col-md-9 col-lg-10 p-4">
                <!-- Notification Banner -->
                <div class="notification-banner p-3 mb-4">
                    <div class="d-flex align-items-center">
                        <div class="flex-shrink-0">
                            <img src="images/calender.png" width="70" height="70">
                        </div>
                        <div class="flex-grow-1 ms-3">
                            <h5 class="mb-1">Unauthenticated Domains</h5>
                            <p class="mb-0">
                                As of January 1, 2025, sending emails from unauthenticated domains is no longer allowed to ensure better delivery rates.
                                To comply with this, emails are now sent from noreply@eventifybackstage.in as the default sender address.
                                To avoid this, please authenticate your domains.
                                <a href="#" class="text-primary">Learn more</a>
                            </p>
                        </div>
                    </div>
                </div>

  <%@include file = "leftpopupmyaccount.jsp"%>
  </body>
</html>