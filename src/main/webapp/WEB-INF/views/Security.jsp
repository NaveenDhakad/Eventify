<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Security Settings</title>
    <%@include file = "All_CSS_js.jsp"%>
    <style>
body{
    background-color: whitesmoke;
}

.btn-custom {
            background-color: #00c853;
            border-color: #00c853;
        }
        .map-icon {
            width: 120px;
            height: 120px;
            background-color: #f8f9fa;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto;
        }
        .map-icon i {
            font-size: 48px;
            color: #00c853;
        }

    .btn-success {
        background-color: #00c853;
        border-color: #00c853;
    }

    .btn-success:hover {
        background-color: #00b34a;
        border-color: #00b34a;
    }

    .modal-header {
        border-bottom: none;
    }

    .modal-body {
        padding: 1.5rem;
    }

    .illustration {
        width: 120px;
        height: 120px;
        background-color: #f8f9fa;
        border-radius: 50%;
        margin: 2rem auto;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .illustration img {
        width: 60%;
        height: auto;
    }



    .device-initial {
        width: 48px;
        height: 48px;
        background-color: #ff9800;
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 18px;
        font-weight: 500;
    }

    .device-list-item {
        display: flex;
        align-items: center;
        padding: 1rem 0;
        border-top: 1px solid #e9ecef;
    }

    .device-info {
        margin-left: 1rem;
    }

    .device-name {
        font-size: 1rem;
        font-weight: 500;
        margin-bottom: 0.25rem;
    }

    .device-location {
        color: #6c757d;
        margin: 0;
    }

</style>

</head>
<body>
<%@include file = "sidebarAccount.jsp"%>
<div class="container">


<div class="container py-5">
    <div class="card" style="min-width: 70rem !important ; margin-left : 15rem ; ">
        <div class="card-body" id = "security-section">
            <h1 class="h3 mb-4">Security</h1>
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <h2 class="h5 mb-1">Password</h2>
                    <p class="text-muted mb-0">Last changed a few seconds ago</p>
                </div>
                <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#passwordModal">
                    Change Password
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Password Change Modal -->
<div class="modal fade" id="passwordModal" tabindex="-1" aria-labelledby="passwordModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="passwordModalLabel">Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Set a strong password to prevent unauthorized access to your account.</p>
                <form id="passwordForm">
                    <div class="mb-3">
                        <label for="currentPassword" class="form-label">Current Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="currentPassword" required>
                            <button class="btn btn-outline-secondary" type="button" onclick="togglePassword('currentPassword')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                </svg>
                            </button>
                        </div>
                        <div class="text-end mt-1">
                            <a href="#" class="text-primary text-decoration-none">Forgot Password?</a>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="newPassword" class="form-label">New Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="newPassword" required>
                            <button class="btn btn-outline-secondary" type="button" onclick="togglePassword('newPassword')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                    <div class="mb-4">
                        <label for="confirmPassword" class="form-label">Confirm New Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="confirmPassword" required>
                            <button class="btn btn-outline-secondary" type="button" onclick="togglePassword('confirmPassword')">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success w-100">Change Password</button>
                </form>
            </div>
        </div>
    </div>
</div>




 <!-- fencing page -->


 <div class="container py-5">
    <div class="card shadow-sm" style="min-width: 70rem !important ; margin-left : 15rem ; ">
        <div class="card-body text-center" id = "Geo-Fancing">
            <h1 class="card-title mb-2">Geo-fencing</h1>
            <p class="text-muted mb-4">
                Secure your account by allowing access only from the countries you want.
            </p>

            <div class="mb-4">
                <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-28%20144340-iuRNMvr0XvMDnvymfwUpwVcTP8cEh2.png" alt="Geo-fencing illustration" class="img-fluid" style="max-width: 150px;">
            </div>

            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#geoFencingModal">
                Set up Geo-fencing
            </button>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="geoFencingModal" tabindex="-1" aria-labelledby="geoFencingModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="geoFencingModalLabel">Geo-fencing</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="alert alert-warning" role="alert">
                    Geo-fencing will work based on IP address. So, if VPN is connected to a country that is not on allowed or on restricted list, your account cannot be accessed.
                </div>

                <form>
                    <div class="mb-3">
                        <label for="countrySelect" class="form-label">Country</label>
                        <select class="form-select" id="countrySelect">
                            <option selected>Choose Countries</option>
                            <option value="us">United States</option>
                            <option value="uk">United Kingdom</option>
                            <option value="ca">Canada</option>
                            <option value="au">Australia</option>
                            <option value="fr">France</option>
                            <option value="de">Germany</option>
                            <option value="jp">Japan</option>
                            <option value="in">India</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="accessType" id="allowAccess" checked>
                            <label class="form-check-label" for="allowAccess">
                                Allow access from selected countries
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="accessType" id="restrictAccess">
                            <label class="form-check-label" for="restrictAccess">
                                Restrict access from selected countries
                            </label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Reset</button>
                <button type="button" class="btn btn-success">Next</button>
            </div>
        </div>
    </div>
</div>


<!-- IP Address -->


<div class="container py-5"  ">
    <div class="bg-white p-4 rounded shadow-sm" id = "Allowed-Ip-Address" style="min-width: 70rem !important ; margin-left : 15rem ; border : 0.1px  solid grey   !important ; ">
        <!-- Header Section -->
        <h1 class="h3 mb-2">Allowed IP Address</h1>
        <p class="text-muted mb-5">Restrict access to your account by adding a range of trusted IP addresses.</p>

        <!-- Center Content -->
        <div class="text-center">
            <!-- Map Icon -->
            <div class="map-icon mb-4">
                <i class="bi bi-geo-alt-fill"></i>
            </div>

            <!-- Button -->
            <button class="btn btn-success text-white px-4 py-2 " data-bs-toggle="modal" data-bs-target="#ipModal">
                Add Allowed IP Address
            </button>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="ipModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-0">
                <h5 class="modal-title">Add IP Address</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <!-- Alert -->
                <div class="alert alert-warning border-0">
                    <i class="bi bi-exclamation-circle me-2"></i>
                    Ensure that the IP address you provide is a static IP address. Since the dynamic IP addresses change and you might get locked out of your account.
                </div>

                <form>
                    <div class="mb-4">
                        <label class="form-label">IP Name</label>
                        <input type="text" class="form-control" placeholder="Enter name for reference">
                        <div class="form-text">This name is only for your reference</div>
                    </div>

                    <div class="mb-4">
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="radio" name="ipType" id="currentIP" checked>
                            <label class="form-check-label" for="currentIP">
                                <div>Add current IP address</div>
                                <small class="text-muted">The IP address of this device connected network is 152.58.58.161</small>
                            </label>
                        </div>

                        <div class="form-check mb-3">
                            <input class="form-check-input" type="radio" name="ipType" id="staticIP">
                            <label class="form-check-label" for="staticIP">
                                Add static IP address
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="ipType" id="ipRange">
                            <label class="form-check-label" for="ipRange">
                                Add IP range
                            </label>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-custom text-white w-100">Next</button>
                </form>
            </div>
        </div>
    </div>
</div>




<!-- Specific password -->

<!-- Main Content -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8" id = "Application">
            <div class="card shadow-sm" style="min-width: 70rem !important ;  ">
                <div class="card-body p-4">
                    <h1 class="h3 mb-2">Application-Specific Passwords</h1>
                    <p class="text-muted mb-5">
                        Allow third-party applications, like email clients, to access your account with unique passwords instead of using your account password.
                    </p>

                    <div class="text-center">
                        <div class="illustration">
                            <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-28%20144432-oxMm3CkgnzSQ9a2CGMJV2eIzsjL3ye.png" alt="Password illustration">
                        </div>

                        <p class="text-center mb-4">
                            Use application-specific passwords instead of your account password to access your Zoho account from third-party applications
                        </p>

                        <button class="btn btn-success px-4" data-bs-toggle="modal" data-bs-target="#passwordModal">
                            Generate New Password
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="passwordModal" tabindex="-1" aria-labelledby="passwordModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="passwordModalLabel">Application-Specific Passwords</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="mb-4">
                    Enter the app name you want to set the application-specific password for. You'll only be able to access this app with the configured application-specific password.
                </p>

                <form id="passwordForm">
                    <div class="mb-4">
                        <label for="appName" class="form-label">Enter app name</label>
                        <input type="text" class="form-control" id="appName" required>
                    </div>

                    <button type="submit" class="btn btn-success">Generate</button>
                </form>
            </div>
        </div>
    </div>
</div>





<!-- Devide Sign in -->

<div class="container py-5">
    <div class="row justify-content-center" id = "Device-Signin">
        <div class="col-md-8">
            <div class="card shadow-sm" style="min-width: 70rem !important ; ">
                <div class="card-body p-4">
                    <h1 class="h3 mb-2">Device Sign-ins</h1>
                    <p class="text-muted mb-4">View and manage the list of locations where you've signed in on your devices.</p>

                    <div class="device-list">
                        <div class="device-list-item">
                            <div class="device-initial">
                                DE
                            </div>
                            <div class="device-info">
                                <div class="device-name">Desktop</div>
                                <p class="device-location">Bicholi Mardana, Madhya Pradesh, India</p>
                            </div>
                        </div>
                        <!-- Additional device items can be added here -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function togglePassword(inputId) {
        const input = document.getElementById(inputId);
        input.type = input.type === 'password' ? 'text' : 'password';
    }

    document.getElementById('passwordForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const newPassword = document.getElementById('newPassword').value;
        const confirmPassword = document.getElementById('confirmPassword').value;

        if (newPassword !== confirmPassword) {
            alert('New passwords do not match!');
            return;
        }

        // Here you would typically make an API call to change the password
        console.log('Password change requested');

        // Show success message and close modal
        alert('Password changed successfully!');
        bootstrap.Modal.getInstance(document.getElementById('passwordModal')).hide();
        this.reset();
    });
</script>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">

    // Optional JavaScript for handling form submission
    document.querySelector('form').addEventListener('submit', function(e) {
        e.preventDefault();
        // Add your form handling logic here

        // Close modal
        const modal = bootstrap.Modal.getInstance(document.getElementById('ipModal'));
        modal.hide();
    });
</script>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">



    document.getElementById('passwordForm').addEventListener('submit', function(e) {
        e.preventDefault();
        // Add your password generation logic here

        // Close modal
        const modal = bootstrap.Modal.getInstance(document.getElementById('passwordModal'));
        modal.hide();
    });
</script>



</body>
</html>