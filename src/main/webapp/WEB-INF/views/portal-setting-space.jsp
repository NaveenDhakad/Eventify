<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spaces - Zoho Backstage</title>
        <%@include file = "All_CSS_js.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
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
        /* Table Heading Style */
        .custom-table thead {
            background-color: #1e3a8a;
            color: white;
        }
        .table td, .table th {
            vertical-align: middle;
            text-align: center;
        }
        .space-badge {
            background-color: #28a745;
            color: white;
            padding: 4px 8px;
            font-size: 12px;
            border-radius: 8px;
            font-weight: bold;
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
        .sidebar .nav-link.active {
     /* Dark blue background */
    color:blue !important;  /* White text */

}
    </style>
</head>
<body>




    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg top-nav">
        <div class="container-fluid" style="text-align:left;justify-content: left;">
            <a class="navbar-brand text-white" href="#">Backstage</a>
            <div class="d-flex align-items-center">
                <a href="running" class="text-white text-decoration-none me-4">Home</a>
                <a href="portal-setting-general" class="text-white text-decoration-none active" style="border-bottom: 2px solid white;">Portal Settings</a>
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
                        <a class="nav-link " href="portal-setting-portalMember">Portal Members</a>
                    </li>



                    <li class="nav-item">
                        <a class="nav-link active" href="portal-setting-space">Spaces</a>
                    </li>
                </ul>
                </nav>

            <!-- Main Content -->
            <main class="col-md-9 col-lg-10 content">
                <div class="header">Spaces</div>

                <!-- Info Banner -->
                <div class="alert alert-light border mt-3">
                    <i class="fas fa-info-circle text-primary"></i>
                    <strong>Introducing Spaces in Eventify Backstage</strong><br>
                    Spaces help organizers combine events into groups. Contact <a href="mailto:support@eventifybackstage.com">support@eventifybackstage.com</a> for add-ons.
                </div>

                <!-- "Create Space" Button -->
                <!-- "Create Space" Button (Updated) -->
<div class="text-end">
    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#smallPopup">
        <i class="fas fa-plus"></i> Create Space
    </button>
</div>

                <!-- Spaces Table -->
                <div class="mt-3">
                    <h5>All Spaces</h5>
                    <table class="table custom-table">
                        <thead>
                            <tr>
                                <th>Spaces</th>
                                <th>Space Owner</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <a href="#" class="text-primary fw-bold">Default Space</a>
                                    <span class="space-badge">Primary Space</span><br>
                                    <small>Created on Jan 28, 2025</small>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center justify-content-center">
                                        <div class="member-icon me-2">NI</div>
                                        <div>
                                            <strong>Nikhilpatidar584</strong><br>
                                            <small>nikhilpatidar584@gmail.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td>

                                   <small>Space Lite</small>
                                   <div><span class="badge bg-success">Active</span></div>
                                </td>
                                <td>
                                    <button class="btn btn-outline-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#editSpaceModal">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <!-- Edit Space Modal -->
    <div class="modal fade" id="editSpaceModal" tabindex="-1" aria-labelledby="editSpaceModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Space</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <label>Space Name</label>
                    <input type="text" class="form-control" value="Default Space">

                    <label class="mt-2">Space Status</label>
                    <select class="form-control">
                        <option>Active</option>
                        <option>Inactive</option>
                    </select>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Save Changes</button>
                </div>
            </div>
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