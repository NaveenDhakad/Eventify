<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Team Section</title>
    <%@include file = "All_CSS_js.jsp"%>


  <style>
   .bg-primary-dark {
              background-color: #1a237e;
          }
          .sidebar2 {
              width: 280px;
              min-height: 100vh;
          }
          .nav-link2 {
              color: #333;
          }
          .nav-link2:hover {
              background-color: #f8f9fa;
          }


    .navbar-custom {

      background-color: #1a1147;
    }
    .active-nav-item {
      background-color: #e7eaf9;
      color: #4355b9;
    }
    body {
      background-color: #f8f9fa;
    }
    .sidebar {
      background-color: #f4f5f7;
      padding: 15px;
      height: 100vh;
    }
    .sidebar a {
      color: #000;
      text-decoration: none;
      display: block;
      margin-bottom: 10px;
    }
    .active {
      font-weight: bold;
      color: #007bff;
       }
    .active1 {
      background-color: #4154f1 !important ;
                                color: white !important;
                    }
    .content-header {
      color: #212529;
      font-size: 24px;
      margin-bottom: 15px;
    }
    .table-container {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 20px;
    }
    .btn-invite {
      background-color: #007bff;
      color: #fff;
    }
    .btn-invite:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>
    <aside class="sidebar2 border-end p-3">
              <nav class="nav flex-column gap-1">
                  <a class="nav-link nav-link2 d-flex align-items-center " href="Manage-Event-info">
                      <i class="bi bi-info-circle me-2"></i> Event Info
                  </a>
                  <a class="nav-link nav-link2 d-flex align-items-center active active1" href="Manage-team">
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
      <div class="col-md-9">
        <div class="d-flex justify-content-between align-items-center">
          <h1 class="content-header">Team</h1>
        </div>
        <ul class="nav nav-tabs mb-3">
          <li class="nav-item">
            <a class="nav-link active" href="#">Members</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Roles and Privileges</a>
          </li>
        </ul>

        <!-- Space Members Section -->
        <div class="table-container mb-4">
          <div class="d-flex justify-content-between mb-3">
            <h5>Space Members (1)</h5>
            <button class="btn btn-invite">+ Invite Space Members</button>
          </div>
          <div class="mb-3">
            <input
              type="text"
              class="form-control"
              id="searchSpaceMembers"
              placeholder="Search Space Members by name or email..."
              onkeyup="filterTable('spaceMembersTable', 'searchSpaceMembers')"
            >
          </div>
          <table class="table table-bordered" id="spaceMembersTable">
            <thead>
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
                    <div
                      class="rounded-circle bg-warning text-white d-flex align-items-center justify-content-center"
                      style="width: 40px; height: 40px;"
                    >
                      NI
                    </div>
                    <div class="ms-2">
                      <strong>Nikhil417</strong>
                      <br>
                      <span>nikhil417@gmail.com</span>
                    </div>
                  </div>
                </td>
                <td>Space Owner</td>
                <td>Joined - a day ago</td>
              </tr>
            </tbody>
          </table>
        </div>

        <!-- Portal Members Section -->
        <div class="table-container">
          <h5>Portal Members (1)</h5>
          <div class="mb-3">
            <input
              type="text"
              class="form-control"
              id="searchPortalMembers"
              placeholder="Search Portal Members by name or email..."
              onkeyup="filterTable('portalMembersTable', 'searchPortalMembers')"
            >
          </div>
          <table class="table table-bordered" id="portalMembersTable">
            <thead>
              <tr>
                <th>Member</th>
                <th>Role</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <div class="d-flex align-items-center">
                    <div
                      class="rounded-circle bg-warning text-white d-flex align-items-center justify-content-center"
                      style="width: 40px; height: 40px;"
                    >
                      NI
                    </div>
                    <div class="ms-2">
                      <strong>Nikhil417</strong>
                      <br>
                      <span>nikhil417@gmail.com</span>
                    </div>
                  </div>
                </td>
                <td>Portal Owner</td>
                <td>Joined - a day ago</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  <script>
    // Filter function for tables
    function filterTable(tableId, inputId) {
      const input = document.getElementById(inputId).value.toLowerCase();
      const table = document.getElementById(tableId);
      const rows = table.getElementsByTagName("tr");

      for (let i = 1; i < rows.length; i++) {
        const rowText = rows[i].textContent.toLowerCase();
        rows[i].style.display = rowText.includes(input) ? "" : "none";
      }
    }
  </script>
</body>
</html>