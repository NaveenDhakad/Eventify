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
    <!-- Top Navigation -->
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
                    <a href="running" class="list-group-item list-group-item-action  bg-transparent" style="color: black;">
                        <i class="fa-solid fa-calendar-days"></i> Events
                    </a>
                    <a href="dashboard" class="list-group-item list-group-item-action active bg-transparent" class="active" style="color: red;">
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


                <!-- Header -->
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2>Attendees</h2>
                       <%@include file = "createbuttonpopup.jsp"%>
                </div>

                <!-- Tabs -->
                <ul class="nav nav-tabs mb-4">
                    <li class="nav-item">
                        <a class="nav-link active " href="dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Attendees">Attendees</a>
                    </li>

                </ul>

                <!-- Empty State -->
                <div class="empty-state">
                    <img src="images/calender.png" alt="Calendar" width="160" height="160" class="mb-3">
                    <h4>No attendee data yet</h4>
                    <p class="text-muted">Attendees profiles can be managed here when they register to your event</p>


                </div>
            </div>
        </div>
    </div>

<%@include file = "leftpopupmyaccount.jsp"%>
</body>
</html>