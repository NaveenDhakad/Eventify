<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal Members</title>
     <%@include file = "All_CSS_js.jsp"%>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .nav-link.active {
            color: blue !important;
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
            color: #1e3a8a;
            font-size: 1.8rem;
            font-weight: bold;
        }
        .btn-primary {
            background-color: #4747ff;
            border-color: #4747ff;
        }
        .search-input {
            width: 250px;
            border-radius: 8px;
            border: 1px solid #ced4da;
            padding: 0.5rem;
        }
        .table thead {
            background-color: #f8f9fa;
        }
        .table td, .table th {
            vertical-align: middle;
        }
        .member-icon {
            width: 40px;
            height: 40px;
            background-color: #f4a261;
            color: white;
            font-weight: bold;
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }
    </style>
</head>
<body>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg top-nav">
        <div class="container-fluid" style="text-align:left;justify-content: left;">
            <a class="navbar-brand text-white" href="#">Backstage</a>
            <div class="d-flex align-items-center">
                <a href="running.html" class="text-white text-decoration-none me-4">Home</a>
                <a href="portal-setting-general.html" class="text-white text-decoration-none active" style="border-bottom: 2px solid white;">Portal Settings</a>
            </div>
        </div>
           <button class="btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
                                <i class="fa-solid fa-circle-user" style="color: white ; height : 30px ; width : 30px ; font-size : 2rem ; margin-right : 1rem ;   "></i>
                                            </button>

    </nav>

    <!-- Main Container -->
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-general">General</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-branding">Branding</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="portal-setting-portalMember">Portal Members</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portal-setting-space">Spaces</a>
                    </li>

                </ul>
            </nav>

            <!-- Main Content -->
            <main class="col-md-9 col-lg-10 content">
                <div class="header">Portal Members</div>

                <!-- Tabs -->
                <ul class="nav nav-tabs mt-3">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Portal Members</a>
                    </li>

                </ul>

                <!-- Search & Buttons -->
                <div class="d-flex justify-content-between align-items-center mt-3">
                    <input type="text" class="form-control search-input" placeholder="Search">

                    <div>
                        <!-- Filter Button with Tooltip -->
                        <button class="btn btn-outline-secondary me-2" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Filter">
                            <i class="fa-solid fa-filter"></i>
                        </button>

                        <!-- Sorting Arrow Button with Tooltip -->
                        <button class="btn btn-outline-secondary me-2" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Sort">
                            <i class="fa-solid fa-arrow-up"></i>
                        </button>

                        <button class="btn btn-primary">+ Invite Portal Members</button>
                    </div>
                </div>

                <!-- Table -->
                <div class="mt-3">
                    <table class="table">
                        <thead class="table-light">
                            <tr>
                                <th>Name & Email</th>
                                <th>Role</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="member-icon me-2">NI</div>
                                        <div>
                                            <strong>Nikhilpatidar584</strong><br>
                                            <small>nikhilpatidar584@gmail.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td>Portal Owner</td>
                                <td>Joined Since Jan 28, 2025</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <script>
        // Enable Bootstrap tooltips
        document.addEventListener("DOMContentLoaded", function () {
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
            var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl);
            });
        });
    </script>
      <%@include file = "leftpopupmyaccount.jsp"%>
</body>
</html>