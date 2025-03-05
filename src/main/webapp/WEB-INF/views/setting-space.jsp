<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Space Settings - Backstage</title>
      <%@include file = "All_CSS_js.jsp"%>
    <style>
        body {
            padding-top: 56px; /* Adjust this value based on the navbar height */
        }

        .navbar-custom {
            background-color: #1a1147;
        }
        .sidebar {
            background-color: #f8f9fa;
            min-height: calc(100vh - 56px);
        }
        .active-nav-item {
            background-color: #e7eaf9;
            color: #4355b9;
        }
        .upload-box {
            border: 2px dashed #dee2e6;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
        }
        .logo-placeholder {
            width: 50px;
            height: 50px;
            background-color: #e9ecef;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <svg width="24" height="24" class="me-2" viewBox="0 0 24 24" fill="white">
                    <rect width="24" height="24" rx="4"/>
                </svg>
                Backstage
            </a>
            <div class="navbar-nav me-auto">
                <a class="nav-link active-nav-item" href="running">Home</a>
                <a class="nav-link " href="portal-setting-general">Portal Settings</a>
            </div>
            <div class="d-flex align-items-center">

                <div class="dropdown">
                    <button class="btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown">
                        Default Space
                    </button>
                </div>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 sidebar p-3">
                <div class="mb-4">
                    <a href="running" class="text-decoration-none text-dark active-nav-item">
                        <i class="fa-solid fa-arrow-left"></i> Back to Events
                    </a>
                </div>
                <h6 class="text-uppercase mb-3">Space Settings</h6>
                <div class="nav flex-column">

                    <a  href="setting-space" class="nav-link active-nav-item mb-2 active-nav-item">Space Info</a>
                    <a href="setting-team" class="nav-link text-dark mb-2 ">Team</a>
                    <a href="setting-custom" class="nav-link text-dark mb-2">Custom Domain</a>

                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 p-4">

                <h2 class="mb-4">Space Info</h2>

                <!-- Basic Details Section -->
                <div class="mb-5">
                    <h4 class="d-flex align-items-center mb-4">

                        Basic Details
                    </h4>

                    <div class="mb-4">
                        <label class="form-label">Space Name</label>
                        <input type="text" class="form-control" value="Default Space">
                        <div class="form-text">Pick a name for this Space where all the events you create will be listed.</div>
                    </div>

                    <div class="mb-4">
                        <label class="form-label">Space Key</label>
                        <input type="text" class="form-control" value="DefaultSpace">
                        <div class="form-text">Pick a Space key, this is the plug to your URL. eg. domain.com/spacekey/events</div>
                    </div>
                </div>

                <!-- Logo Section -->
                <div class="mb-5">
                    <h4 class="d-flex align-items-center mb-4">
                        <i class="fa-solid fa-image " ></i> &nbsp;
                        Logo
                    </h4>
                    <p>This logo will be used on the event website, in emails and as a thumbnail in places where the event website link is shared.</p>

                    <div class="upload-box">
                        <div class="d-flex align-items-center mb-3">
                         <div style="height: 100px;width: 100px;background-color: #dee2e6;">
                            <i class="fa-solid fa-image fa-2x" style="margin-top: 35px;margin-left: 35px;"></i>&nbsp;
                        </div>
                            <button class="btn btn-primary" style="margin-left: 20px;">Upload</button>
                        </div>
                        <div class="small text-muted">
                            <div>File size: Up to 5MB</div>
                            <div>Optimal dimensions: 50x50px</div>
                            <div>Supported file types: JPG, JPEG, PNG, GIF, WEBP</div>
                        </div>
                    </div>
                </div>

                <!-- Favicon Section -->
                <div class="mb-5">
                    <h4 class="d-flex align-items-center mb-4">

                        Favicon
                    </h4>
                    <p>Add a favicon to represent the web pages of this Space. This will be the default favicon used throughout the Space.</p>

                    <div class="upload-box">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <div class="logo-placeholder me-3">  <i class="fa-solid fa-image fa-2x" style="margin-left: 8px;margin-top: 6px;"></i> </div>
                                <div class="small text-muted">
                                    <div>File size: Up to 256KB</div>
                                    <div>Optimal dimensions: 16x16px</div>
                                    <div>Supported file types: PNG, JPG, JPEG, ICO</div>
                                </div>
                            </div>
                            <button class="btn btn-primary">Upload</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>