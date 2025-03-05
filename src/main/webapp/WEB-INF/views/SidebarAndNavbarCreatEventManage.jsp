<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swaranjali Dashboard</title>
 <%@include file = "All_CSS_js.jsp"%>
 <%@include file = "leftpopupmyaccount.jsp"%>
    <style>
      .active-nav-item {
                background-color: #eef2ff;
                color: #4361ee;
            }

        /* Style for the thumbnail preview */
        .thumbnail-preview {
            width: 120px;
            height: 90px;
            background-size: cover;
            background-position: center;
        }
       body {
            overflow: hidden;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .main-content-wrapper {
            flex: 1;
            min-height: 0;
            display: flex;
            overflow: hidden;
        }

        .primary-sidebar {
            height: 100%;
            overflow-y: auto;
        }


      .primary-sidebar {
            width: 120px;
            background: white;
            border-right: 1px solid #e5e7eb;
        }


         .nav-link1 {
                   color: #4b5563;
                   text-decoration: none;
                   padding: 0.35rem;
                   display: flex;
                   flex-direction: column;
                   align-items: center;
                   text-align: center;
                   font-size: 0.875rem;
               }

               .nav-link1 i {
                   font-size: 1.25rem;
                   margin-bottom: 0.25rem;
               }

               .nav-link1:hover {
                   background-color: #f3f4f6;
                   color: #4361ee;
               }


        .active-nav-item {
            background-color: #eef2ff;
            color: #4361ee;
        }
        :root {
            --navy-blue: #1a237e;
        }

        .top-navbar {
            background-color: #1a1a1a;
            padding: 8px 16px;
        }

        .main-header {
            background-color: var(--navy-blue);
            color: white;
            padding: 1rem;
        }

        .draft-badge {
            background-color: rgba(255,255,255,0.1);
            padding: 2px 8px;
            border-radius: 4px;
            font-size: 0.8rem;
            margin-left: 8px;
        }

        .btn-publish {
            background-color: #4154f1;
            color: white;
        }

        .language-selector {
            display: flex;
            align-items: center;
            color: rgba(255,255,255,0.8);
            gap: 5px;
        }
    </style>
</head>
<body>

<!-- Top Navigation -->

<!-- Main Header -->
<header class="main-header">
    <div class="container-fluid">
        <div class="d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <h4 class="mb-0">Swaranjali</h4>
                <span class="draft-badge">DRAFT</span>
                <div class="language-selector ms-4">
                    <i class="bi bi-globe"></i>
                    English
                </div>
            </div>
            <div class="d-flex align-items-center gap-3">
                <button class="btn btn-outline-light">
                    <i class="bi bi-pencil-square"></i>
                    Edit Website
                </button>
                <button class="btn btn-outline-light">
                    <i class="bi bi-eye"></i>
                    Preview
                </button>
                <button class="btn btn-publish">
                    Publish
                    <i class="bi bi-chevron-down"></i>
                </button>
                <button class="btn  " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
                           <i class="fa-solid fa-circle-user" style="color: white ; height : 30px ; width : 30px ; font-size : 2rem ; margin-right : 1rem ;  background-color : blue ;   "></i>
                                       </button>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="d-flex">
    <!-- Primary Sidebar -->
    <div class="primary-sidebar min-vh-100 " >
        <nav class="nav flex-column">
            <a href="#" class="nav-link nav-link1 " id="dashboard-link" onclick="setActiveNavItem('dashboard-link')">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
            <a href="Manage-Event-info" href = "Manage-Eventlibrary" class="nav-link nav-link1" id="manage-link" onclick="setActiveNavItem('manage-link')">
                <i class="bi bi-gear"></i>
                <span>Manage</span>
            </a>
            <a href="Registration-Ticket" class="nav-link nav-link1" id="registrations-link" onclick="setActiveNavItem('registrations-link')">
                <i class="bi bi-person-badge"></i>
                <span>Registrations</span>
            </a>
            <a href="Exhibitors" class="nav-link nav-link1" id="exhibitors-link" onclick="setActiveNavItem('exhibitors-link')">
                <i class="bi bi-shop"></i>
                <span>Exhibitors</span>
            </a>
            <a href="#" class="nav-link nav-link1" id="design-link" onclick="setActiveNavItem('design-link')">
                <i class="bi bi-pencil-square"></i>
                <span>Design</span>
            </a>
            <a href="#" class="nav-link nav-link1" id="communicate-link" onclick="setActiveNavItem('communicate-link')">
                <i class="bi bi-envelope"></i>
                <span>Communicate</span>
            </a>
            <a href="#" class="nav-link nav-link1" id="reports-link" onclick="setActiveNavItem('reports-link')">
                <i class="bi bi-graph-up"></i>
                <span>Reports</span>
            </a>
            <a href="#" class="nav-link nav-link1" id="event-day-link" onclick="setActiveNavItem('event-day-link')">
                <i class="bi bi-calendar-event"></i>
                <span>Event Day</span>
            </a>
            <a href="Setting-branding" class="nav-link nav-link1" id="settings-link" onclick="setActiveNavItem('settings-link')">
                <i class="bi bi-gear"></i>
                <span>Settings</span>
            </a>
            <a href="#" class="nav-link mt-auto" id="search-link" onclick="setActiveNavItem('search-link')">
                <i class="bi bi-search"></i>
                <span>Search</span>
            </a>
        </nav>
    </div>



    <!-- Main Content Area -->
<script>
    function setActiveNavItem(clickedId) {
        // Remove active class from all nav items
        const navItems = document.querySelectorAll('.nav-link1');
        navItems.forEach(item => {
            item.classList.remove('active-nav-item');
        });

        // Add active class to clicked item
        const clickedItem = document.getElementById(clickedId);
        if (clickedItem) {
            clickedItem.classList.add('active-nav-item');
        }
    }

    // Set initial active state (e.g., Dashboard)
    window.onload = function() {

    }
    document.addEventListener("DOMContentLoaded", function () {
        // Retrieve active link ID from localStorage
        const activeLinkId = localStorage.getItem("activeNavItem");

        if (activeLinkId) {
            setActiveNavItem(activeLinkId);
        } else {
            setActiveNavItem("dashboard-link"); // Default active link
        }

        // Attach click event listener to all nav links
        document.querySelectorAll(".nav-link1").forEach((link) => {
            link.addEventListener("click", function (event) {
                const linkId = this.id;
                localStorage.setItem("activeNavItem", linkId); // Store active link ID

                // Allow normal navigation (no preventDefault)
            });
        });
    });

    function setActiveNavItem(clickedId) {
        // Remove active class from all nav items
        document.querySelectorAll(".nav-link1").forEach((item) => {
            item.classList.remove("active-nav-item");
        });

        // Add active class to the clicked item
        const clickedItem = document.getElementById(clickedId);
        if (clickedItem) {
            clickedItem.classList.add("active-nav-item");
        }
    }

</script>

</body>
</html>