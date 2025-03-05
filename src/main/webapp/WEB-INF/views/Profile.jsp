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
            background-color: #0a1929;
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
            color: #fff;
        }
        .nav-link.active {
            color: #00ff95;
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

<%@include file = "sidebarAccount.jsp"%>
    <!-- Main Content -->
    <div class="main-content">
        <h2 class="mb-4">Profile</h2>

        <!-- Profile Card -->
        <div class="profile-card">
            <div class="profile-header" id = "personal-info">
                <div class="d-flex">
                    <div class="avatar"></div>
                    <div>
                        <h4 class="mb-0">naveendhakad7999</h4>
                        <p class="text-muted mb-0">naveendhakad7999@gmail.com</p>
                    </div>
                </div>
                <button class="edit-btn">Edit</button>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="mb-4">
                        <div class="info-label">Full Name</div>
                        <div>naveendhakad7999</div>
                    </div>
                    <div class="mb-4">
                        <div class="info-label">Gender</div>
                        <div>I'd prefer not to say</div>
                    </div>
                    <div class="mb-4">
                        <div class="info-label">State</div>
                        <div>Madhya Pradesh</div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-4">
                        <div class="info-label">Display Name</div>
                        <div>naveendhakad7999</div>
                    </div>
                    <div class="mb-4">
                        <div class="info-label">Country/Region</div>
                        <div>
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAYAAAB24g05AAAAnUlEQVQoU2P8v5DhPwMVACPIAKaCk/8ZGRlRdP9nYGD4v8aLEcUQmAEwzSADGGEuQNYM0wwTR/GCgQEwzSADQHwYjWwziCYagGwzshdINoAYm3FqwKYZZltMPNH+J9oAkGaQzcg0sjiKAcjBhM0mkD+xBiOyZpAGbIYwEuNMkGaYQch8rF7AlQYYGf8zEmMzsWqxGkBs6iZWHwB7JU4RDs0imgAAAABJRU5ErkJggg==" class="me-2" alt="India flag">
                            India
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="info-label">Language</div>
                        <div>English</div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="info-label">Time zone</div>
                    <div>(GMT +05:30) India Standard Time ( Asia/Kolkata )</div>
                </div>
            </div>
        </div>

        <!-- Email Addresses Section -->
        <div class="card mb-4">
            <div class="card-body" id = "Email-section">
                <h5 class="card-title mb-2">My Email Addresses</h5>
                <p class="text-muted mb-4">You can use the following email addresses to sign in to your account and also to reset your password if you ever forget it.</p>

                <div class="d-flex align-items-center mb-4">
                    <div class="email-icon rounded-circle d-flex align-items-center justify-content-center me-3">
                        <i class="bi bi-envelope-fill"></i>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex align-items-center">
                            <span class="me-2">naveendhakad7999@gmail.com</span>
                            <span class="badge bg-success-subtle text-success me-2"><i class="bi bi-check-circle-fill"></i></span>
                            <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%20(6)-O9CboB9nB7bLd7gq7PW4pklhFrA9fu.png" alt="Google" class="verification-icon">
                        </div>
                        <small class="text-muted">16 days ago</small>
                    </div>
                </div>

                <button class="btn btn-link text-primary p-0">
                    <i class="bi bi-plus"></i> Add Email Address
                </button>
            </div>
        </div>

        <!-- Mobile Numbers Section -->
        <div class="card">
            <div class="card-body" id = "Mobile-number">
                <h5 class="card-title mb-2">My Mobile Numbers</h5>
                <p class="text-muted mb-4">View and manage all of the mobile numbers associated with your account.</p>

                <div class="d-flex align-items-center mb-4">
                    <div class="phone-icon rounded-circle d-flex align-items-center justify-content-center me-3">
                        <i class="bi bi-telephone-fill"></i>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex align-items-center">
                            <span class="me-2">+91 79993 65433</span>
                            <span class="badge bg-warning-subtle text-warning"><i class="bi bi-shield-fill-check"></i></span>
                        </div>
                        <small class="text-muted">16 days ago</small>
                    </div>
                </div>

                <button class="btn btn-link text-primary p-0">
                    <i class="bi bi-plus"></i> Add Mobile Number
                </button>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var navLinks = document.querySelectorAll('.nav-link[data-bs-toggle="collapse"]');

        navLinks.forEach(function(link) {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                var targetSubmenu = document.querySelector(this.getAttribute('data-bs-target'));

                // Close all other open submenus
                navLinks.forEach(function(otherLink) {
                    if (otherLink !== link) {
                        var otherSubmenu = document.querySelector(otherLink.getAttribute('data-bs-target'));
                        if (otherSubmenu && otherSubmenu.classList.contains('show')) {
                            otherSubmenu.classList.remove('show');
                            otherLink.setAttribute('aria-expanded', 'false');
                        }
                    }
                });

                // Toggle the clicked submenu
                if (targetSubmenu.classList.contains('show')) {
                    targetSubmenu.classList.remove('show');
                    this.setAttribute('aria-expanded', 'false');
                } else {
                    targetSubmenu.classList.add('show');
                    this.setAttribute('aria-expanded', 'true');
                }
            });
        });
    });
</script>
</body>
</html>

