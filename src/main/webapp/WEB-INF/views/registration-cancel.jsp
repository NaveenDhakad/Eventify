<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancellation Policy</title>
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

        .policy-option {
            margin-bottom: 1.5rem;
        }

        .policy-title {
            font-weight: 500;
            margin-bottom: 0.25rem;
        }

        .policy-description {
            color: #666;
            margin-left: 1.75rem;
        }

        .form-check-input:checked {
            background-color: #4F46E5;
            border-color: #4F46E5;
        }
    </style>
</head>
<body>
 <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>

    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-item">
                <a href="Registration-Ticket"><i class="bi bi-ticket"></i> Ticket Class</a>
            </div>
            <div class="sidebar-item">
                <a href="registration-form"><i class="bi bi-person"></i> Registration Form</a>
            </div>
            <div class="sidebar-item active active1">
                <a href="registration-cancel"><i class="bi bi-x-circle"></i> Cancellation Policy</a>
            </div>
            <div class="sidebar-item">
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
            <h1 class="mb-2">Cancellation Policy</h1>
            <p class="mb-4">Select cancellation policy for this event</p>

            <form>
                <div class="policy-option">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="cancellationPolicy" id="cancelAnytime" checked>
                        <label class="form-check-label policy-title" for="cancelAnytime">
                            Cancel Any Time
                        </label>
                    </div>
                    <p class="policy-description">Allow cancellations and refunds at any time before check-in</p>
                </div>

                <div class="policy-option">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="cancellationPolicy" id="noCancellation">
                        <label class="form-check-label policy-title" for="noCancellation">
                            No Cancellation Policy
                        </label>
                    </div>
                    <p class="policy-description">Do not allow cancellations and refunds</p>
                </div>

                <div class="policy-option">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="cancellationPolicy" id="customCancellation">
                        <label class="form-check-label policy-title" for="customCancellation">
                            Custom Cancellation Policy
                        </label>
                    </div>
                    <p class="policy-description">Specify the number of days prior to the event for allowing cancellations and refunds</p>
                </div>

                <div class="mt-4">
                    <button type="submit" class="btn btn-primary me-2" style="background-color: #4F46E5; border: none;">Save</button>
                    <button type="button" class="btn btn-light">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>