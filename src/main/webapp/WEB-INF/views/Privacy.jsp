<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Your Contact</title>
 <%@include file = "All_CSS_js.jsp"%>

   <style>

body{
    background-color: whitesmoke;
}



.privacy-card {
            border-radius: 8px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            background: white;
        }
        .form-control, .form-select {
            border-radius: 6px;
            border-color: #e0e0e0;
            padding: 0.75rem;
        }
        .form-control:focus, .form-select:focus {
            border-color: #00d084;
            box-shadow: 0 0 0 0.2rem rgba(0, 208, 132, 0.25);
        }
        .org-selector {
            border: 1px solid #e0e0e0;
            border-radius: 6px;
            padding: 0.75rem;
            cursor: pointer;
        }
        .org-selector:hover {
            border-color: #00d084;
        }
        .org-icon {
            width: 32px;
            height: 32px;
            background: #f0f2f5;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .initiate-btn {
            background-color: #00d084;
            border: none;
            padding: 0.75rem 2rem;
            font-size: 1rem;
            border-radius: 6px;
            color: white;
        }
        .initiate-btn:hover {
            background-color: #00b873;
            color: white;
        }
        .privacy-link {
            color: #00d084;
            text-decoration: none;
        }
        .privacy-link:hover {
            text-decoration: underline;
        }
        .modal-content {
            border-radius: 12px;
        }
        .country-select {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .country-select img {
            width: 24px;
            border-radius: 2px;
        }





        .card {
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .btn-success {
            background-color: #00b894;
            border-color: #00b894;
        }
        .btn-success:hover {
            background-color: #00a383;
            border-color: #00a383;
        }
        .dropdown-toggle::after {
            display: none;
        }
        .nav-tabs .nav-link {
            color: #6c757d;
            border: none;
            border-bottom: 2px solid transparent;
        }
        .nav-tabs .nav-link.active {
            color: #00b894;
            border-bottom: 2px solid #00b894;
        }
    </style>
</head>
<body class="bg-light">
<%@include file = "sidebarAccount.jsp"%>


    <div class="container py-1" id = "DataProcessing">

        <h1 class="h3 mb-4">Privacy</h1>
    <div class="card" style="min-width: 70rem !important ; margin-left : 15rem ; ">

        <div class="privacy-card p-4">
            <h2 class="h4 mb-3">Data Processing Addendum</h2>
            <p class="text-muted mb-4">Data Processing Addendum (DPA) is an agreement between you and Eventify about processing your personal data.</p>

            <h3 class="h5 mb-3">Initiate DPA</h3>
            <p class="mb-4">You can choose your organization to initiate the DPA with Eventify. A copy of the addendum will be sent to the email address <strong>patidarmukul64@gmail.com</strong></p>

            <div class="mb-4">
                <label class="form-label">Choose Organization</label>
                <div class="org-selector d-flex align-items-center justify-content-between">
                    <div class="d-flex align-items-center gap-3">
                        <div class="org-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
                            </svg>
                        </div>
                        <div>
                            <div class="text-muted small">eventifybackstage</div>


                            <div>Swaranjali</div>
                        </div>
                    </div>
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <polyline points="6 9 12 15 18 9"></polyline>
                    </svg>
                </div>
            </div>

            <button class="initiate-btn" data-bs-toggle="modal" data-bs-target="#dpaModal">
                Initiate Now
            </button>
        </div>
    </div>

    <!-- DPA Modal -->
    <div class="modal fade" id="dpaModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content" >
                <div class="modal-header border-0">
                    <h5 class="modal-title">Initiate DPA</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <p class="mb-4">By submitting the DPA, you confirm that you have read and agreed to Eventify's <a href="#" class="privacy-link">privacy policy</a>.</p>

                    <form class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label">Full Name*</label>
                            <input type="text" class="form-control" value="Mukul Patidar" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Email Address of the Authorized Signatory*</label>
                            <input type="email" class="form-control" value="patidarmukul64@gmail.com" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Company Name*</label>
                            <input type="text" class="form-control" value="Swaranjali" required>
                        </div>

                        <div class="col-12 mt-4">
                            <button type="submit" class="initiate-btn me-2">Submit</button>
                            <button type="button" class="btn btn-light" data-bs-dismiss="modal">Back</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="container mt-5">
    <div class="card" style="min-width: 70rem !important ; margin-left : 15rem ;>
        <div class="card-body" id = "Manage-your-Contact">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <h4 class="mb-1">Manage Your Contact</h4>
                    <p class="text-muted mb-0">View and manage the contacts you've assigned to represent your organization.</p>
                </div>
                <div class="d-flex align-items-center">
                    <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-29%20170952-XcisYk1xFV06DcQbccdqr34Jx7lAK8.png" alt="User Avatar" class="rounded-circle me-2" style="width: 40px; height: 40px;">
                    <div class="dropdown">
                        <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                            Eventifybackstage
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <li><a class="dropdown-item" href="#">  Eventifybackstage</a></li>
                               </ul>
                    </div>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn btn-success dropdown-toggle" type="button" id="addDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                    Add <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down ms-2" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
                    </svg>
                </button>
                <ul class="dropdown-menu" aria-labelledby="addDropdown">
                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#detailsModal">Details</a></li>
                    <li><a class="dropdown-item" href="#" onclick="showContactTab()">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Details Modal -->
<div class="modal fade" id="detailsModal" tabindex="-1">
    <div class="modal-dialog modal-lg" >
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Manage Your Contact</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="personal-tab" data-bs-toggle="tab" data-bs-target="#personal" type="button" role="tab" aria-controls="personal" aria-selected="true">Personal Details</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="organization-tab" data-bs-toggle="tab" data-bs-target="#organization" type="button" role="tab" aria-controls="organization" aria-selected="false">Organization Details</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact Details</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="personal" role="tabpanel" aria-labelledby="personal-tab">
                        <form>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="firstName" class="form-label">First Name</label>
                                    <input type="text" class="form-control" id="firstName">
                                </div>
                                <div class="col-md-6">
                                    <label for="lastName" class="form-label">Last Name</label>
                                    <input type="text" class="form-control" id="lastName">
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address*</label>
                                <input type="email" class="form-control" id="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="mobile" class="form-label">Mobile Number</label>
                                <input type="tel" class="form-control" id="mobile">
                            </div>
                            <div class="mb-3">
                                <label for="designation" class="form-label">Designation*</label>
                                <input type="text" class="form-control" id="designation" required>
                            </div>
                            <button type="button" class="btn btn-success" onclick="nextTab('organization-tab')">Next</button>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="organization" role="tabpanel" aria-labelledby="organization-tab">
                        <form>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="orgName" class="form-label">Organization Name</label>
                                    <input type="text" class="form-control" id="orgName">
                                </div>
                                <div class="col-md-6">
                                    <label for="employees" class="form-label">Number of Employees</label>
                                    <input type="number" class="form-control" id="employees">
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="industry" class="form-label">Industry Sector</label>
                                <select class="form-select" id="industry">
                                    <option selected>Select Industry Sector</option>
                                    <!-- Add more options here -->
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="street" class="form-label">Street Name/Area</label>
                                <input type="text" class="form-control" id="street">
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="city" class="form-label">City/Town</label>
                                    <input type="text" class="form-control" id="city">
                                </div>
                                <div class="col-md-6">
                                    <label for="state" class="form-label">State</label>
                                    <input type="text" class="form-control" id="state">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="country" class="form-label">Country/Region of Incorporation/Registration</label>
                                    <select class="form-select" id="country">
                                        <option selected>India</option>
                                        <!-- Add more options here -->
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="postalCode" class="form-label">Postal Pin Code</label>
                                    <input type="text" class="form-control" id="postalCode">
                                </div>
                            </div>
                            <div class="d-flex justify-content-between">
                                <button type="button" class="btn btn-light" onclick="nextTab('personal-tab')">Back</button>
                                <button type="button" class="btn btn-success" onclick="nextTab('contact-tab')">Next</button>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <form>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <h6>Roles</h6>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="dataProtectionOfficer">
                                        <label class="form-check-label" for="dataProtectionOfficer">
                                            Data Protection officer
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="privacyRepresentative">
                                        <label class="form-check-label" for="privacyRepresentative">
                                            Privacy Representative
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="transferAccountOwnership">
                                        <label class="form-check-label" for="transferAccountOwnership">
                                            Transfer Account Ownership
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h6>Notifications</h6>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="breachNotification">
                                        <label class="form-check-label" for="breachNotification">
                                            Breach Notification
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="subprocessorNotification">
                                        <label class="form-check-label" for="subprocessorNotification">
                                            Subprocessor addition & modification notification
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between">
                                <button type="button" class="btn btn-light" onclick="nextTab('organization-tab')">Back</button>
                                <button type="submit" class="btn btn-success">Add</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>