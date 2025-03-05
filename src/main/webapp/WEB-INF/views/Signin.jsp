<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eventify Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light min-vh-100 d-flex flex-column">
    <div class="flex-grow-1 d-flex align-items-center justify-content-center p-3">
        <div class="bg-white rounded-3 shadow-sm p-4 p-md-5" style="max-width: 1000px;">
            <div class="row g-4">
                <!-- Left Section -->
                <div class="col-12 col-lg-6">
                    <!-- Logo -->
                    <img src="images/EVENTIFY .png" alt="Zoho Logo" class="mb-4" height="35">

                    <!-- Smart Sign In Button -->
                    <a href="#" class="btn btn-primary rounded-pill mb-4 d-inline-flex align-items-center gap-2" style="background-color: #4754cb; border-color: #4754cb; margin-left : 25% ; ">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z"/>
                        </svg>
                         Try smart sign-in
                    </a>
                    <form method = "post" action = "/Signin">
                    <!-- Sign In Form -->
                    <h2 class="fs-4 mb-1">Sign in</h2>
                    <p class="text-secondary mb-4">to access Eventify Backstage</p>

                    <div class="mb-4">
                        <input type="text" class="form-control form-control-lg" name = "username" placeholder="Email address or mobile number"  style="font-size: 16px; color: #888; required">
                    </div>
             <div class="mb-4">
                        <input type="password" class="form-control form-control-lg" name = "password" placeholder=" Enter password " style="font-size: 16px; color: #888; required">
                    </div>

                    <button class="btn btn-primary w-100 mb-4" style="background-color: #0091ff; border-color: #0091ff;">
                        Sign In
                    </button>
</form>
                    <!-- Social Sign In -->
                    <p class="text-secondary mb-3">Sign in using</p>
                    <div class="d-flex gap-2 mb-4">
                        <button class="btn btn-light rounded-circle p-2 border">
                            <img src="https://www.google.com/favicon.ico" alt="Google" width="20" height="20">
                        </button>
                        <button class="btn btn-light rounded-circle p-2 border">
                            <img src="https://www.facebook.com/favicon.ico" alt="Facebook" width="20" height="20">
                        </button>
                        <button class="btn btn-light rounded-circle p-2 border">
                            <img src="https://twitter.com/favicon.ico" alt="Twitter" width="20" height="20">
                        </button>
                        <button class="btn btn-light rounded-circle p-2 border">
                            <img src="https://www.microsoft.com/favicon.ico" alt="Microsoft" width="20" height="20">
                        </button>
                        <button class="btn btn-light rounded-circle p-2 border">
                            <img src="https://www.apple.com/favicon.ico" alt="Apple" width="20" height="20">
                        </button>
                        <button class="btn btn-light rounded-circle p-2 border">
                            <img src="https://github.com/favicon.ico" alt="GitHub" width="20" height="20">
                        </button>
                    </div>

                    <!-- Sign Up Link -->
                    <p class="text-secondary">
                        Don't have a Eventify account?
                        <a href="Signup" class="text-decoration-none" style="color: #0091ff;">Sign up now</a>
                    </p>
                </div>

                <!-- Right Section -->
                <div class="col-lg-6 text-center d-none d-lg-block">
                    <img src="images/Passwordless_illustration.svg" alt="Passwordless Sign-in Illustration" class="img-fluid mb-4" style="max-width: 280px;">
                    <h3 class="fs-5 mb-3">Passwordless sign-in</h3>
                    <p class="text-secondary mb-3">
                        Move away from risky passwords and experience one-tap access to Eventify. Download and install OneAuth.........  <b>Coming soon </b>
                    </p>
                    <a href="#" class="text-decoration-none" style="color: #0091ff;">Learn more</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center p-4 text-secondary">
        <small>© 2025, Eventify Corporation Pvt. Ltd. All Rights Reserved.</small>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>