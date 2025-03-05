<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal Settings - Branding</title>
    <%@include file = "All_CSS_js.jsp"%>
      <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .top-nav {
            background-color: #1a1147;
            padding: 1rem;
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
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg top-nav">
        <div class="container-fluid" style="text-align:left;justify-content: left;">
            <a class="navbar-brand text-white" href="#">Backstage</a>
            <div class="d-flex">
                <a href="#" class="text-white text-decoration-none me-4">Home</a>
                <a href="#" class="text-white text-decoration-none active" style="border-bottom: 2px solid white;">Portal Settings</a>
            </div>
        </div>
        <button class="btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
                <i class="fa-solid fa-circle-user" style="color: white ; height : 30px ; width : 30px ; font-size : 2rem ; margin-right : 1rem ;   "></i>
                            </button>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <nav class="col-3 sidebar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link " href="portal-setting-general">General</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="portal-setting-branding">Branding</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-portalMember">Portal Members</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-space">Spaces</a>
                    </li>

                </ul>
            </nav>
            <main class="col-9 content">
                <div class="header">
                    <h1>Branding</h1>
                </div>
                <div class="mt-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Subdomain Name</h5>
                        <div style="display: flex;">
                            <input type="text" class="form-control mt-2" placeholder="Search Subdomain..." >

                        </div>
                            <p style="color:#1e3a8a;"> &nbsp; https://
                                foodie1234
                                .Eventifybackstage.in</p>
                            <h5 class="card-title">Domain</h5>
                            <input type="text" class="form-control mt-2" placeholder="foodie1234.Eventifybackstage.in ">
                            <p class="text-muted">
                               &nbsp; Events in this portal will be hosted on
                                <a href="https://foodie1234.zohobackstage.in/" target="_blank" class="text-primary text-decoration-underline">
                                    https://foodie1234.Eventifybackstage.in/
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Manage Portal Logo</h5>
                            <div class="upload-section">
                                <img src="video/Screenshot 2025-01-28 132828.png" alt="logo preview" class="img-thumbnail" width="100">
                                <div>
                                    <button class="btn btn-primary btn-sm">Upload New Logo</button>
                                    <p class="text-muted">Max size: 5MB | Supported formats: JPG, PNG, GIF</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
  <%@include file = "leftpopupmyaccount.jsp"%>
</body>
</html>