<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Dashboard</title>
    <!-- Bootstrap CSS -->
    <%@include file="All_CSS_js.jsp" %>
    <style>         .sidebar2 {
                        width: 280px;
                        min-height: 100vh;
                    }
                    .nav-link2 {
                        color: #333;
                    }
                    .nav-link2:hover {
                        background-color: blue;
                    }
                 .active1{
                  background-color: #4154f1 !important ;
                             color: white !important;

                 }

        .bg-primary-dark {
            background-color: #1a237e;
        }
        .sidebar {
            width: 280px;
            min-height: 100vh;
        }
        .nav-link {
            color: #333;
        }
        .nav-link:hover {
            background-color: #f8f9fa;
        }
        /* Style for the thumbnail preview */
        .thumbnail-preview {
            width: 100px;
            height: 90px;
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
    <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>
       <aside class="sidebar2 border-end p-3">
            <nav class="nav flex-column gap-1">
                <a class="nav-link nav-link2 d-flex align-items-center active active1" href="Manage-Event-info">
                    <i class="bi bi-info-circle me-2"></i> Event Info
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center" href="Manage-team">
                    <i class="bi bi-people me-2"></i> Team
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center" href="Manage-Speaker">
                    <i class="bi bi-mic me-2"></i> Speakers
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center" href="Manage-Eventlibrary">
                    <i class="bi bi-book"></i> &nbsp;Event Library
                </a>
            </nav>
        </aside>

    <div class="min-vh-100 bg-white">
        <div class="d-flex">
            <!-- Main Content -->
            <main class="flex-grow-1 p-4">
                <div class="container-fluid">
                    <h2 class="h4 mb-4">Basic Details</h2>

                    <div class="row g-4">
                        <!-- Event Name -->
                        <div class="col-12">
                            <label class="form-label">
                                Event Name <span class="text-danger">*</span>
                            </label>
                            <input type="text" class="form-control" value="Swaranjali">
                        </div>

                        <!-- Date and Time -->
                        <div class="col-12">
                            <label class="form-label">Date and Time</label>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <input type="date" class="form-control" value="2025-02-28">
                                        <span class="input-group-text">
                                            <i class="bi bi-calendar"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <input type="time" class="form-control" value="08:00">
                                        <span class="input-group-text">
                                            <i class="bi bi-clock"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Website Access -->
                        <div class="col-12">
                            <label class="form-label">Event Website Access</label>
                            <div class="card">
                                <div class="card-body d-flex align-items-center gap-3">
                                    <i class="bi bi-globe fs-5"></i>
                                    <div>
                                        <div class="fw-medium">Public</div>
                                        <div class="text-muted small">Any visitor can access this event website</div>
                                    </div>
                                    <button class="btn btn-outline-secondary ms-auto">Manage Access</button>
                                </div>
                            </div>
                        </div>

                        <!-- Thumbnail -->
                        <div class="col-12">
                            <label class="form-label">Event Thumbnail</label>
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex gap-3">
                                        <!-- The image preview box -->
                                        <div id="thumbnailPreview" class="bg-light rounded d-flex align-items-center justify-content-center thumbnail-preview">
                                            <i class="bi bi-image fs-1 text-muted"></i>
                                        </div>
                                        <div>
                                            <!-- Hidden file input for image upload -->
                                            <input type="file" id="imageUpload" class="d-none" accept="image/*">
                                            <button id="changeButton" class="btn btn-outline-secondary mb-2">Change</button>
                                            <div class="text-muted small">
                                                <div>File size: Up to 5MB</div>
                                                <div>Optimal dimensions: 600x280px</div>
                                                <div>Supported file types: JPG, JPEG, PNG, GIF, WEBP</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
   <script>
       window.onload = function () {
           var changeButton = document.getElementById("changeButton");
           var imageUpload = document.getElementById("imageUpload");
           var thumbnailPreview = document.getElementById("thumbnailPreview");

           if (changeButton && imageUpload && thumbnailPreview) {
               // Trigger file input when "Change" button is clicked
               changeButton.addEventListener("click", function () {
                   imageUpload.click();
               });

               // Handle file selection and update preview
               imageUpload.addEventListener("change", function (event) {
                   var file = event.target.files[0];
                   if (file) {
                       var reader = new FileReader();
                       reader.onload = function (e) {
                           thumbnailPreview.style.backgroundImage = "url('" + e.target.result + "')";
                           thumbnailPreview.innerHTML = ""; // Remove default icon
                       };
                       reader.readAsDataURL(file);
                   }
               });
           }
       };
   </script>

</body>
</html>
