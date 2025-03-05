<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management Portal</title>
     <%@include file = "All_CSS_js.jsp"%>

    <style>
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
   <%@include file = "afterloginnav.jsp"%>

                <!-- Header -->
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2>Event - Default Space</h2>
    <%@include file = "createbuttonpopup.jsp"%>
                    </div>

                <!-- Tabs -->
                <ul class="nav nav-tabs mb-4">
                    <li class="nav-item">
                        <a class="nav-link " href="running">Running</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="live">Live</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Draft">Drafts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="past">Past</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cancel">Cancelled</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="all">All</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="trash">Trash</a>
                    </li>
                </ul>

                <!-- Empty State -->
                <div class="empty-state">
                    <img src="images/calender.png" alt="Calendar" width="160" height="160" class="mb-3">
                    <h4 style="font-weight: bold;">Publish Event</h4>
                    <p class="text-muted">Events that have begun will be listed here</p>
                </div>
            </div>
        </div>
    </div>
<%@include file = "leftpopupmyaccount.jsp"%>
</body>
</html>