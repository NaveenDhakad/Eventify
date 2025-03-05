<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
  <%@include file = "All_CSS_js.jsp"%>
    <style>
        body {
            background-color: whitesmoke ;
        }
        .form-switch .form-check-input {
            width: 3em;
            height: 1.5em;
        }
        .form-switch .form-check-input:checked {
            background-color: #00d084;
            border-color: #00d084;
        }
        .settings-card {
            border-radius: 8px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }
        .section-title {
            font-size: 1.1rem;
            font-weight: 500;
            color: #333;
        }
        .section-description {
            color: #666;
            font-size: 0.95rem;
        }
        .form-select {
            border-color: #e0e0e0;
            color: #333;
        }
        .email-notifications {
            color: #666;
            font-size: 1.1rem;
            margin-bottom: 1rem;
        }

        .empty-state-image {
            max-width: 150px;
            opacity: 0.7;
        }



        .linked-accounts-card {
            border-radius: 8px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }
        .account-item {
            padding: 1rem 0;
            border-top: 1px solid #e0e0e0;
        }
        .google-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #fff;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }
        .timestamp {
            font-size: 0.875rem;
            color: #666;
        }
        .platform-icons img {
            width: 20px;
            height: 20px;
            margin-right: 0.5rem;
        }
        .location {
            color: #666;
            font-size: 0.9rem;
        }
        .link-account {
            color: #0086f9;
            text-decoration: none;
            font-weight: 500;
        }
        .link-account:hover {
            text-decoration: underline;
        }
        .social-signin-btn {
            width: 100%;
            padding: 12px;
            margin-bottom: 12px;
            border: 1px solid #e0e0e0;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            transition: background-color 0.2s;
        }
        .social-signin-btn img {
            width: 24px;
            height: 24px;
        }
        .social-signin-btn.google { background-color: #fff; color: #000; }
        .social-signin-btn.microsoft { background-color: #2f2f2f; color: #fff; }
        .social-signin-btn.linkedin { background-color: #0a66c2; color: #fff; }
        .social-signin-btn.facebook { background-color: #1877f2; color: #fff; }
        .social-signin-btn.twitter { background-color: #1da1f2; color: #fff; }
        .social-signin-btn.apple { background-color: #000; color: #fff; }
        .social-signin-btn.github { background-color: #24292e; color: #fff; }

        .delete-icon {
            width: 80px;
            height: 80px;
            opacity: 0.7;
        }
        .close-btn {
            background-color: #dc3545;
            border-color: #dc3545;
            padding: 0.5rem 2rem;
        }
        .close-btn:hover {
            background-color: #bb2d3b;
            border-color: #b02a37;
        }
        .card {
            max-width: 800px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@include file = "sidebarAccount.jsp"%>

    <div class="container py-1">
        <h1 class="mb-4">Settings</h1>

        <div class="card settings-card" id = "Preferences" style="min-width: 70rem !important ; margin-left : 15rem ;">
            <div class="card-body"  >
                <!-- Preferences Header -->
                <h2 class="h4 mb-2">Preferences</h2>
                <p class="section-description mb-4">Manage your preferences for date format, privacy settings, and email notifications.</p>

                <!-- Date Format -->
                <div class="mb-4">
                    <h3 class="section-title mb-2">Date Format</h3>
                    <p class="section-description mb-2">Select the date and time format to be used for your Zoho account activity.</p>
                    <select class="form-select">
                        <option selected>MMM d, yyyy HH:mm ('24-hour')</option>
                        <option>MM/dd/yyyy hh:mm a</option>
                        <option>dd/MM/yyyy HH:mm</option>
                    </select>
                </div>

                <!-- Profile Picture Visibility -->
                <div class="mb-4">
                    <h3 class="section-title mb-2">Profile Picture Visibility</h3>
                    <p class="section-description mb-2">Select who can view your profile picture.</p>
                    <select class="form-select">
                        <option selected>Only myself</option>
                        <option>My team</option>
                        <option>Everyone</option>
                    </select>
                </div>

                <!-- Email Notifications -->
                <div class="mb-4">
                    <h3 class="email-notifications">Email notifications</h3>

                    <!-- New sign-in alert -->
                    <div class="mb-4">
                        <div class="d-flex justify-content-between align-items-start">
                            <div>
                                <h4 class="section-title mb-2">New sign-in to account alert</h4>
                                <p class="section-description mb-0">Receive email alerts whenever your account is signed in from a new device, browser, or location.</p>
                            </div>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" checked>
                            </div>
                        </div>
                    </div>

                    <!-- Third-party app access -->
                    <div class="mb-4">
                        <div class="d-flex justify-content-between align-items-start">
                            <div>
                                <h4 class="section-title mb-2">Third-party app access alert</h4>
                                <p class="section-description mb-0">Receive email alerts whenever your account is accessed from a new third-party app or location. Example: IMAP/POP clients such as mail apps and calendar apps.</p>
                            </div>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" checked>
                            </div>
                        </div>
                    </div>

                    <!-- Newsletter subscription -->
                    <div>
                        <div class="d-flex justify-content-between align-items-start">
                            <div>
                                <h4 class="section-title mb-2">Newsletter subscription</h4>
                                <p class="section-description mb-0">Receive marketing communication regarding <a href="#" class="text-decoration-none">Zoho's</a> products, services, and events from Zoho and its regional partners.</p>
                            </div>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" checked>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5" style="margin-top: -50px;">
        <div class="card shadow-sm" id = "Authorized-account" style="min-width: 70rem !important ; margin-left : 15rem ;">
            <div class="card-body p-4 p-md-5" >
                <!-- Header Section -->
                <div class="mb-4">
                    <h1 class="card-title h2 mb-3">Authorized Websites</h1>
                    <p class="text-muted mb-0">
                        View and manage the websites you've granted access to your account information.
                    </p>
                </div>

                <!-- Empty State Section -->
                <div class="text-center py-5">
                    <img
                        src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-28%20152655-G5YqMNgjWD0lw0ajDWMlJoazV1Cf81.png"
                        alt="No authorized websites"
                        class="empty-state-image mb-4"
                    >
                    <p class="text-muted h5 fw-normal">You don't have any authorized websites</p>
                </div>

                <!-- Optional: Add Website Button -->
                <div class="text-center">
                    <button class="btn btn-primary" type="button">
                        Add Website
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5" style="margin-top: -50px;">
        <div class="card linked-accounts-card"  style="min-width: 70rem !important ; margin-left : 15rem ;">
            <div class="card-body" id = "linked-Accounts" >
                <h2 class="h4 mb-2">Linked Accounts</h2>
                <p class="text-muted mb-4">View and manage the list of accounts that are linked with your Zoho account.</p>

                <!-- Linked Account Item -->
                <div class="account-item">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="d-flex align-items-center">
                            <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-28%20152708-W7QRySZ9K1uhfGXdYVDeD6GzjVEyqX.png" alt="Google" class="google-icon me-3">

                            <div>
                                <div class="d-flex align-items-center mb-1">
                                    <span class="me-2">patidarmukul64@gmail.com</span>
                                    <span class="timestamp">2 days ago</span>
                                </div>

                                <div class="d-flex align-items-center">
                                    <div class="platform-icons me-3">
                                        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%234285f4' d='M12 0C5.372 0 0 5.372 0 12s5.372 12 12 12 12-5.372 12-12S18.628 0 12 0z'/%3E%3C/svg%3E" alt="Browser">
                                        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%230078d4' d='M0 0h24v24H0z'/%3E%3C/svg%3E" alt="Windows">
                                    </div>
                                    <span class="location">Bicholi Mardana, Madhya Pradesh, In...</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Link Account Button -->
                <div class="mt-4">
                    <a href="#" class="link-account" data-bs-toggle="modal" data-bs-target="#linkAccountModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg me-1" viewBox="0 0 16 16">
                            <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
                        </svg>
                        Link Your Account
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Link Account Modal -->
    <div class="modal fade" id="linkAccountModal" tabindex="-1" aria-labelledby="linkAccountModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <h5 class="modal-title" id="linkAccountModalLabel">Link Your Account</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <button class="social-signin-btn google">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg" alt="Google">
                        Sign In With Google
                    </button>

                    <button class="social-signin-btn microsoft">
                        <i class="fab fa-windows"></i>
                        Sign In With Microsoft
                    </button>

                    <button class="social-signin-btn linkedin">
                        <i class="fab fa-linkedin"></i>
                        Sign In With LinkedIn
                    </button>

                    <button class="social-signin-btn facebook">
                        <i class="fab fa-facebook"></i>
                        Sign In With Facebook
                    </button>

                    <button class="social-signin-btn twitter">
                        <i class="fab fa-twitter"></i>
                        Sign In With Twitter
                    </button>

                    <button class="social-signin-btn apple">
                        <i class="fab fa-apple"></i>
                        Sign in with Apple
                    </button>

                    <button class="social-signin-btn github">
                        <i class="fab fa-github"></i>
                        Sign In With Github
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <div class="card shadow-sm" id = "close-account"  style="min-width: 70rem !important ; margin-left : 15rem ;">
            <div class="card-body p-4 p-md-5">
                <!-- Header Section -->
                <div class="mb-4">
                    <h1 class="h2 mb-3">Close Account</h1>
                    <p class="text-muted mb-0">
                        Permanently delete all the data associated with your account and the apps you use.
                        <a href="#" class="text-primary text-decoration-none">Refer help article</a>
                    </p>
                </div>

                <!-- Warning Section -->
                <div class="text-center py-4">
                    <img
                        src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-28%20152720-rLo1bxgJdqHfX131NscZALd8l8o6vQ.png"
                        alt="Delete account icon"
                        class="delete-icon mb-4"
                    >
                    <p class="text-center mb-4" style="max-width: 600px; margin: 0 auto;">
                        Closing your Zoho Account will permanently delete all your
                        account information and you will no longer be able to use any
                        of the Zoho services.
                    </p>

                    <!-- Confirmation Button -->
                    <button
                        class="btn btn-danger close-btn"
                        type="button"
                        data-bs-toggle="modal"
                        data-bs-target="#confirmModal"
                    >
                        Close Account
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Confirmation Modal -->
    <div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true" style="margin-top: -90px;">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmModalLabel">Confirm Account Closure</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to permanently close your account? This action cannot be undone.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-danger">Confirm Close Account</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>