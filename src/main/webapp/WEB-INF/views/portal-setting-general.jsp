<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal Settings</title>
    <%@include file = "All_CSS_js.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .nav-link.active {
            color: #4747ff !important;
            position: relative;
        }
        .top-nav {
            background-color: #1a1147;
        }
        .sidebar {
            background-color: #f3f4f6;
            height: 100vh;
            padding: 1rem;
        }
        .sidebar .nav-link {
            color: #000;
            font-weight: 500;
        }
        .content {
            padding: 2rem;
        }
        .header {
            background-color: #1e3a8a;
            color: white;
            padding: 1rem;
            border-radius: 8px;
        }
        .card {
            margin-bottom: 1.5rem;
        }
        .card-title {
            font-size: 1.25rem;
        }
        .upload-section {
            display: flex;
            align-items: center;
            gap: 1rem;
        }
        .upload-section img {
            max-height: 50px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        .text-muted {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg top-nav ">
        <div class="container-fluid" style="text-align:left;justify-content: left;">
            <a class="navbar-brand text-white" href="#">Backstage</a>
            <div class="d-flex align-items-center" >
                <a href="running" class="text-white text-decoration-none me-4  "  >Home</a>
                <a href="portal-setting-general" class="text-white text-decoration-none active"  style="border-bottom: 2px solid white;">Portal Settings</a>

            </div>
        </div>
          <button class="btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
                        <i class="fa-solid fa-circle-user" style="color: white ; height : 30px ; width : 30px ; font-size : 2rem ; margin-right : 1rem ;   "></i>
                                    </button>
    </nav>

    <div class="container-fluid" >
        <div class="row">
            <nav class="col-3 sidebar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="portal-setting-general">General</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-branding">Branding</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-portalMember">Portal Members</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-space">Spaces</a>
                    </li>

                </ul>
                     </nav>
            <main class="col-9 content"  >
                <div class="header">
                    <h1>Portal Info</h1>
                </div>
                <div class="mt-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Basic Details</h5>
                            <form>
                                <div class="mb-3">
                                    <label for="portalName" class="form-label">Portal Name</label>
                                    <input type="text" class="form-control" id="portalName" placeholder="eventify">
                                    <div class="form-text">Events are created inside this portal. Pick a name that best represents these events.</div>
                                </div>
                                <div class="mb-3">
                                    <label for="organizationName" class="form-label">Organization</label>
                                    <input type="text" class="form-control" id="organizationName" placeholder="Organization Name">
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Manage Portal Logo and Favicon</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <h6>Logo</h6>
                                    <div class="upload-section">
                                        <img src="video/Screenshot 2025-01-28 132828.png" alt="logo preview" >
                                        <div>
                                            <button class="btn btn-primary btn-sm">Upload</button>
                                            <div class="text-muted">File size: Up to 5MB<br>Optimal dimensions: 50x50px<br>Supported file types: JPG, JPEG, PNG, GIF, WEBP</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h6>Favicon</h6>
                                    <div class="upload-section">
                                        <img src="video/Screenshot 2025-01-28 132828.png" alt="favicon preview">
                                        <div>
                                            <button class="btn btn-primary btn-sm">Upload</button>
                                            <div class="text-muted">File size: Up to 256KB<br>Optimal dimensions: 16x16px<br>Supported file types: PNG, JPG, JPEG, ICO</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Primary Contact</h5>
                            <p>Sender Name: <strong>Eventify Backstage</strong> <a href="#">Edit Name</a></p>
                            <p>Sender Email: <strong>noreply@eventifybackstage.in</strong></p>
                            <p>Reply-to Email: <strong>Portal Owner (nikhil417@gmail.com)</strong></p>
                            <a href="#" class="btn btn-link">Change Primary Contact</a>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <%@include file = "leftpopupmyaccount.jsp"%>
</body>
</html>