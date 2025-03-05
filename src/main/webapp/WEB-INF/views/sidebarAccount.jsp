<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Settings</title>
    <!-- Bootstrap CSS -->
  <%@include file = "All_CSS_js.jsp"%>

    <style>
        .sidebar {
            background-color: #0a1929 ;
            min-height: 100vh;
            width: 280px;
            position: fixed;
            left: 0;
            top: 0;
        }
        .main-content {
            margin-left: 280px;
            padding: 2rem;
            background-color: whitesmoke;
            min-height: 100vh;
        }
        .nav-link {
            color: #8b949e;
            padding: 0.75rem 1.5rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .nav-link:hover {
            color: green;
        }
       .nav-link.active {
           color: #00ff95 !important;
           background-color: rgba(255, 255, 255, 0.1);
       }
        .sub-nav {
            padding-left: 2.5rem;
            background-color: rgba(255, 255, 255, 0.05);
        }
        .profile-card {
            background: white;
            border-radius: 8px;
            padding: 2rem;
            margin-bottom: 2rem;
        }
        .edit-btn {
            background-color: #00d09c;
            color: white;
            border: none;
            padding: 0.5rem 1.5rem;
            border-radius: 4px;
        }
        .edit-btn:hover {
            background-color: #00b386;
        }
        .profile-header {
            display: flex;
            align-items: flex-start;
            justify-content: space-between;
            margin-bottom: 2rem;
        }
        .avatar {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            background-color: #e9ecef;
            margin-right: 1rem;
        }
        .info-label {
            color: #666;
            font-size: 0.875rem;
            margin-bottom: 0.25rem;
        }
        .brand {
            padding: 1rem 1.5rem;
            display: flex;
            align-items: center;
            gap: 10px;
            color: white;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }
        .nav-link[aria-expanded="true"] .bi-chevron-right {
            transform: rotate(90deg);
        }
        .nav-link .bi-chevron-right {
            transition: transform 0.3s ease;
        }
        .email-icon, .phone-icon {
            width: 40px;
            height: 40px;
            background-color: #e9ecef;
        }
        .verification-icon {
            width: 20px;
            height: 20px;
        }
    </style>
</head>
<body>
 <%@include file = "myAccountnav.jsp"%>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="brand">
            <i class="bi bi-shield-check"></i>
            <h5 class="mb-0">Accounts</h5>
        </div>
        <nav class="nav flex-column mt-3">
        <!-- Update your navigation links with actual URLs -->
        <a href="Profile" class="nav-link d-flex justify-content-between align-items-center"
           onclick="navigateWithExpand(event, 'Profile', 'profileSubmenu')"
           data-bs-toggle="collapse" data-bs-target="#profileSubmenu">
             <span><i class="bi bi-person"></i> Profile</span>

                </a>
       <div class="collapse" id="profileSubmenu">
                <div class="sub-nav">
                    <a href="#personal-info" class="nav-link ">Personal Information</a>
                    <a href="#Email-section" class="nav-link">Email Address</a>
                    <a href="#Mobile-number" class="nav-link">Mobile Numbers</a>
                </div>
            </div>
              <a href="Security" class="nav-link d-flex justify-content-between align-items-center"
                       onclick="navigateWithExpand(event, 'Security', 'securitySubmenu')"
                       data-bs-toggle="collapse" data-bs-target="#securitySubmenu">
                             <span><i class="bi bi-shield-lock"></i> Security</span>

                            </a>

            <div class="collapse" id="securitySubmenu">
                <div class="sub-nav">
                    <a href="#security-section" class="nav-link">Password</a>
                    <a href="#Geo-Fancing" class="nav-link">Geo-Fancing</a>
                         <a href="#Allowed-Ip-Address" class="nav-link">Allowed Ip Address</a>
                              <a href="#Application" class="nav-link">Application Specific Password</a>
                                   <a href="#Device-Signin" class="nav-link">Device Signin</a>
                </div>
            </div>

<a href="Setting" class="nav-link d-flex justify-content-between align-items-center"
   onclick="navigateWithExpand(event, 'Setting', 'settingSubmenu')"
   data-bs-toggle="collapse" data-bs-target="#settingSubmenu" aria-expanded="false" aria-controls="settingSubmenu">
      <span><i class="bi bi-gear"></i> Settings </span>

</a>
            <div class="collapse" id="settingSubmenu">
                <div class="sub-nav">
                    <a href="#Preferences" class="nav-link">Preferences</a>

                    <a href="#Authorized-account" class="nav-link">Authorized Websites</a>
                                        <a href="#linked-Accounts" class="nav-link">Linked Accounts</a>
                                                            <a href="#close-account" class="nav-link">Close Accounts</a>
                </div>
            </div>
<a href="Groups" class="nav-link d-flex justify-content-between align-items-center"
   onclick="navigateWithExpand(event, 'Groups', 'groupSubmenu')"
   data-bs-toggle="collapse" data-bs-target="#groupSubmenu" aria-expanded="false" aria-controls="groupSubmenu">
       <span><i class="bi bi-people"></i> Groups</span>


</a>

            <div class="collapse" id="groupSubmenu">
                <div class="sub-nav">
                </div>
            </div>
<a href="Privacy" class="nav-link d-flex justify-content-between align-items-center"
   onclick="navigateWithExpand(event, 'Privacy', 'privacySubmenu')"
   data-bs-toggle="collapse" data-bs-target="#privacySubmenu" aria-expanded="false" aria-controls="privacySubmenu">
       <span><i class="bi bi-lock"></i> Privacy</span>

</a>

          <div class="collapse" id="privacySubmenu">
                <div class="sub-nav">
                    <a href="#DataProcessing" class="nav-link">DataProcessing</a>
                    <a href="#Manage-your-Contact" class="nav-link">Manage your Contact</a>
                </div>
            </div>


        </nav>
    </div>

    <script>
    // Modified navigation function
    function navigateWithExpand(event, url, submenuId) {
        event.preventDefault();
        const submenu = document.getElementById(submenuId);

        // Store the target submenu in session storage
        sessionStorage.setItem('activeSubmenu', submenuId);

        // Toggle the submenu
        new bootstrap.Collapse(submenu, { toggle: true }).show();

        // Navigate after collapse animation
        setTimeout(() => {
            window.location.href = url;
        }, 350);
    }

    // Initialize submenu states on page load
    document.addEventListener('DOMContentLoaded', () => {
        const activeSubmenu = sessionStorage.getItem('activeSubmenu');
        if (activeSubmenu) {
            const submenu = document.getElementById(activeSubmenu);
            new bootstrap.Collapse(submenu, { toggle: true }).show();
            sessionStorage.removeItem('activeSubmenu');
        }

        // Highlight active menu based on current URL
        const currentPath = window.location.pathname.split('/').pop();
        document.querySelectorAll('.nav-link').forEach(link => {
            if (link.getAttribute('href') === currentPath) {
                link.classList.add('active');
                const parentSubmenu = link.closest('.collapse');
                if (parentSubmenu) {
                    new bootstrap.Collapse(parentSubmenu, { toggle: true }).show();
                }
            }
        });
    });
    </script>
</body>
</html>

