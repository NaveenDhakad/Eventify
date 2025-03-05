<!DOCTYPE
html >
  <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Settings</title>
      <%@include file="All_CSS_js.jsp" %>

    <style>
     .active1 {
                background-color: #4154f1 !important;
                color: white !important;
            }

        .sidebar {
            background-color: #fff;
            border-right: 1px solid #e9ecef;
            height: 100vh;
            position: fixed;
            width: 250px;
        }

        .sidebar-item {
            padding: 12px 24px;
            color: black;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .sidebar-item a {
            text-decoration: none;
            color: black;
        }

        .sidebar-item a:hover {
            text-decoration: none;
        }

        .sidebar-item:hover {
            background-color: #f8f9fa;
        }

        .sidebar-item.active {
            background-color: #e8f0fe;
            color: #4285f4;
        }

        .main-content {
            margin-left: 250px;
            padding: 2rem;
        }

        .nav-tabs .nav-link {
            color: #6b7280;
            border: none;
            padding: 1rem 0;
            margin-right: 2rem;
            font-weight: 500;
        }

        .nav-tabs .nav-link.active {
            color: #4F46E5;
            border-bottom: 2px solid #4F46E5;
        }

        .form-switch .form-check-input {
            width: 3em;
            height: 1.5em;
            margin-top: 0;
        }

        .form-switch .form-check-input:checked {
            background-color: #22C55E;
            border-color: #22C55E;
        }

        .time-input {
            width: 80px;
            padding: 0.375rem;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
        }

        .setting-description {
            color: #6b7280;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }

        .setting-section {
            margin-bottom: 2rem;
        }

        .info-icon {
            color: #6b7280;
            font-size: 1rem;
            margin-left: 0.5rem;
        }
    </style>
</head>
<body>
 <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>

    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-item">
                <a href="registration-ticket"><i class="bi bi-ticket"></i> Ticket Class</a>
            </div>
            <div class="sidebar-item">
                <a href="registration-form"><i class="bi bi-person"></i> Registration Form</a>
            </div>
            <div class="sidebar-item">
                <a href="registration-cancel"><i class="bi bi-x-circle"></i> Cancellation Policy</a>
            </div>
            <div class="sidebar-item active active1">
                <a href="registration-setting"><i class="bi bi-gear"></i> Registration Setting</a>
              </div>
              <div class="sidebar-item ">
                <a href="regis-approval"><i class="bi bi-check-circle"></i>  Registration Approval</a>
              </div>
            <div class="sidebar-item ">
                <a href="regis-attendie"><i class="bi bi-person"></i> Attendees</a>
              </div>
               <div class="sidebar-item ">
                <a href="prospect"><i class="bi bi-search"></i> Prospect</a>
              </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <h1 class="mb-4">Registration Settings</h1>

            <!-- Tabs -->
            <ul class="nav nav-tabs mb-4">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Registration</a>
                </li>

            </ul>

            <!-- Settings Form -->
            <form>
                <!-- Registration Time Limit -->
                <div class="setting-section">
                    <label class="form-label fw-medium">Registration Time Limit</label>
                    <div class="d-flex align-items-center gap-3">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="timeLimit" id="hasLimit" checked>
                            <input type="number" class="time-input" value="11" min="1">
                            <span class="ms-2">Min</span>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="timeLimit" id="noLimit">
                            <label class="form-check-label" for="noLimit">No limit</label>
                        </div>
                    </div>
                </div>

                <!-- Apple Wallet -->
                <div class="setting-section">
                    <div class="d-flex justify-content-between align-items-start">
                        <div>
                            <label class="form-label fw-medium">Allow attendees to add tickets to Apple Wallet <i class="bi bi-info-circle info-icon"></i></label>
                            <p class="setting-description">Tickets can be added to Apple Wallet after signing into the event microsite.</p>
                        </div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" checked>
                        </div>
                    </div>
                </div>

                <!-- Show Ticket Availability -->
                <div class="setting-section">
                    <div class="d-flex justify-content-between align-items-start">
                        <div>
                            <label class="form-label fw-medium">Show Ticket Availability</label>
                            <p class="setting-description">Display the number of remaining tickets in each ticket class on the event website</p>
                        </div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox">
                        </div>
                    </div>
                </div>

                <!-- Restrict Duplicate Attendees -->
                <div class="setting-section">
                    <div class="d-flex justify-content-between align-items-start mb-3">
                        <div>
                            <label class="form-label fw-medium">Restrict Duplicate Attendees <i class="bi bi-info-circle info-icon"></i></label>
                            <p class="setting-description">Manage repeated email addresses in the attendee list for your event.</p>
                        </div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" checked>
                        </div>
                    </div>

                    <div class="ms-4">
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="radio" name="duplicateRestriction" id="inEvent" checked>
                            <label class="form-check-label" for="inEvent">
                                In the event
                                <p class="setting-description">Restrict repeated email addresses in the event's attendee list</p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="duplicateRestriction" id="inTicket">
                            <label class="form-check-label" for="inTicket">
                                In ticket classes
                                <p class="setting-description">Restrict repeated email addresses in a ticket class</p>
                            </label>
                        </div>
                    </div>
                </div>

                <!-- Registration Approval -->
                <div class="setting-section">
                    <div class="d-flex justify-content-between align-items-start">
                        <div>
                            <label class="form-label fw-medium">Registration approval <i class="bi bi-info-circle info-icon"></i></label>
                            <p class="setting-description">You can pre-screen the order request placed by the visitors and manually approve or deny them before issuing their tickets.</p>
                        </div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>


</body>
</html>