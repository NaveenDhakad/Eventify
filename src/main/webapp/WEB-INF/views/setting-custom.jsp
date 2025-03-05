<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Custom Domain</title>
      <%@include file = "All_CSS_js.jsp"%>
  <style>
      body {
          padding-top: 56px; /* Adjust this value based on the navbar height */
      }

    .navbar-custom {
      background-color: #1a1147;
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

    .active-nav-item {
      font-weight: bold;
      color: #007bff;
    }

    body {
      background-color: #f8f9fa;
    }

    .content-container {
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .info-box {
      border: 1px solid #ddd;
      padding: 20px;
      border-radius: 8px;
      background-color: #f9f9f9;
    }

    .info-box p {
      margin-bottom: 0;
    }

    .steps-list {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">

        Backstage
      </a>
      <div class="navbar-nav me-auto">
        <a class="nav-link" href="running">Home</a>
        <a class="nav-link" href="portal-setting-general">Portal Settings</a>
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
      <div class="col-md-3 col-lg-2 sidebar">
        <div class="mb-4">
          <a href="running" class="text-decoration-none text-dark active-nav-item">
            <i class="fa-solid fa-arrow-left"></i> Back to Events
          </a>
      </div>
        <h6 class="text-uppercase mb-3">Space Settings</h6>
        <div class="nav flex-column">
                   <a  href="setting-space" class="nav-link  mb-2 ">Space Info</a>
                    <a href="setting-team" class="nav-link text-dark mb-2 ">Team</a>
                    <a href="setting-custom" class="nav-link active-nav-item mb-2">Custom Domain</a>
        </div>
      </div>

      <!-- Main Content -->
      <div class="col-md-9 col-lg-10 py-4">
        <div class="content-container">
          <h2>Customize Your Space</h2>
          <p>
            Take full control from creating a custom domain to privately distributing your own event app.
          </p>
          <div class="info-box my-4">
            <p>
              This is a premium feature of Spaces. To enable this, contact
              <a href="mailto:support@zohobackstage.com">support@eventifybackstage.com</a>
              and upgrade your Space add-on.
            </p>
          </div>

          <div class="row">
            <div class="col-md-6">
              <img src="images/custom-domain.png" alt="Preview" class="img-fluid rounded">
            </div>
            <div class="col-md-6">
              <ul class="steps-list list-group">
                <li class="list-group-item">1. Map your custom domain</li>
                <li class="list-group-item">2. Secure your domain</li>
                <li class="list-group-item">3. Verify custom domain mapping</li>
              </ul>
            </div>
          </div>

          <div class="mt-4">
            <p>
              Have a question to ask? Mail it to
              <a href="mailto:support@zohobackstage.com">support@eventifybackstage.com</a>
              and we’ll get back to you.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>