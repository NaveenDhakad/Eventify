<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Speakers Section</title>
         <%@include file="All_CSS_js.jsp" %>

    <style>
    .active1 {
                    background-color: #4154f1 !important;
                    color: white !important;
                }

        .speakers-section {
            padding: 2rem 0;
        }

        .content-wrapper {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            padding: 2rem 1rem;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 600;
            text-align: left;
            margin-bottom: 3rem;
        }

        .illustration {
            width: 200px;
            height: 200px;
            margin: 2rem auto;
        }

        .add-speaker-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin: 1.5rem 0;
        }

        .description {
            color: #666;
            margin-bottom: 2rem;
        }

        .btn-add-speaker {
            background-color: #4F46E5;
            color: white;
            padding: 0.75rem 2rem;
            border-radius: 0.5rem;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .btn-add-speaker:hover {
            background-color: #4338CA;
            color: white;
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

        /* Modal styles */
        .custom-modal {
            background: rgba(0, 0, 0, 0.5);
        }

        .custom-modal .modal-content {
            border-radius: 12px;
            padding: 20px;
        }

        .custom-modal .modal-header {
            border-bottom: none;
            padding-bottom: 0;
        }

        .custom-modal .modal-body {
            padding: 20px 0;
        }

        .custom-modal .url-input {
            background-color: #f8f9fa;
            border: 1px solid #dee2e6;
            border-radius: 4px;
            padding: 8px 12px;
        }

        .custom-modal .btn-publish {
            background-color: #4F46E5;
            color: white;
            border: none;
            padding: 8px 24px;
            border-radius: 6px;
        }

        .custom-modal .btn-close {
            background-color: #f8f9fa;
            color:white;
            border: 1px solid #dee2e6;
            padding: 8px 24px;
            border-radius: 6px;
            width: 30px;
        }

        .modal-illustration {
            width: 120px;
            height: 120px;
            margin: 0 auto 20px;
        }
    </style>
</head>
<body>
<%@include file="SidebarAndNavbarCreatEventManage.jsp" %>

    <div class="d-flex">
        <div class="sidebar">
           <div class="sidebar-item ">
              <a href="Registration-Ticket"><i class="bi bi-ticket"></i> Ticket Class</a>
           </div>

           <div class="sidebar-item">
              <a href="registration-form"><i class="bi bi-person"></i> Registration Form</a>
           </div>

           <div class="sidebar-item">
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
           <div class="sidebar-item active active1">
            <a href="prospect"><i class="bi bi-search"></i> Prospect</a>
          </div>
        </div>

        <div class="container" style ="margin-left : 25rem ; ">
            <section class="speakers-section">
                <div class="content-wrapper" style="margin-top: 150px;">
                    <img src="video/Screenshot 2025-01-30 174706.png" alt="Microphone illustration" class="illustration">

                    <h2 class="add-speaker-title">No prospect yet</h2>

                    <p class="description" style="font-size: 20px;">
                        Publish your event website to reach prospects
                    </p>

                    <button class="btn btn-add-speaker" data-bs-toggle="modal" data-bs-target="#publishModal">
                        Publish Your Event
                    </button>
                </div>
            </section>
        </div>
    </div>

    <!-- Publish Modal -->
    <div class="modal fade custom-modal" id="publishModal" tabindex="-1" aria-labelledby="publishModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <img src="video/Screenshot 2025-01-30 180123.png" alt="Website illustration" class="modal-illustration">
                    <h5 class="modal-title mb-4" id="publishModalLabel">
                        Your event will no longer be considered as draft and will be accessible to the participants
                    </h5>
                    <div class="mb-4">
                        <label class="form-label text-start d-block mb-2">Your Website URL</label>
                        <div class="input-group">
                            <input type="text" class="form-control url-input" value="https://foodie1234.zohostage.in" readonly>
                            <input type="text" class="form-control url-input" value="froide" placeholder="Enter URL suffix">
                        </div>
                    </div>
                    <div class="d-flex justify-content-end gap-2">
                        <button type="button" class="btn btn-close" data-bs-dismiss="modal" style="background-color: black;height: 22px;">Close</button>
                        <button type="button" class="btn btn-publish">Publish</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>