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

        /* Remove the underline from sidebar links */
        .sidebar-item a {
            text-decoration: none; /* Removes underline from links */
            color: black; /* Ensures link text is black */
        }

        .sidebar-item a:hover {
            text-decoration: none; /* Ensures no underline on hover */
        }

        .sidebar-item:hover {
            background-color: #f8f9fa;
        }

        .sidebar-item.active {
            background-color: #e8f0fe;
            color: #4285f4;
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

           <div class="sidebar-item ">
              <a href="registration-form"><i class="bi bi-person"></i> Registration Form</a>
           </div>

          <div class="sidebar-item">
            <a href="registration-cancel"><i class="bi bi-x-circle"></i> Cancellation Policy</a>
          </div>
          <div class="sidebar-item">
            <a href="registration-setting"><i class="bi bi-gear"></i> Registration Setting</a>
          </div>
          <div class="sidebar-item active active1">
            <a href="regis-approval"><i class="bi bi-check-circle"></i>  Registration Approval</a>
          </div>
          <div class="sidebar-item ">
            <a href="regis-attendie"><i class="bi bi-person"></i> Attendees</a>
          </div>
           <div class="sidebar-item ">
            <a href="prospect"><i class="bi bi-search"></i> Prospect</a>
          </div>
       </div>
    <div class="container" style="margin-left :25rem ;>
        <section class="speakers-section">

            <div class="content-wrapper" style="margin-top: 150px;">
                <img src="video/image.png" alt="Microphone illustration" class="illustration">

                <h2 class="add-speaker-title">Approve/Deny Registrations</h2>

                <p class="description" style="font-size: 20px;">
                    Enable Registration Approval to start receiving order
                </p>

                <a href="registration-setting" class="btn btn-primary" style="height: 50px;">
                     Enable Registration Approval
                </a>
            </div>
        </section>
    </div>

</body>
</html>