<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Team Section</title>
    <%@include file = "All_CSS_js.jsp"%>


  <style>
    body {
        padding-top: 56px; /* Adjust this value based on the navbar height */
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
          <a href="setting-space" class="nav-link text-dark mb-2">Space Info</a>
          <a href="setting-team" class="nav-link active-nav-item mb-2">Team</a>
          <a href="setting-custom" class="nav-link text-dark mb-2">Custom Domain</a>

        </div>
      </div>

      <!-- Main Content -->
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