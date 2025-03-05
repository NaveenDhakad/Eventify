
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Workflow Management</title>
    <%@include file="All_CSS_js.jsp" %>

    <style>
     #main {
         max-height: 100vh !important; /* Limits height to viewport */
         overflow-y: auto !important; /* Enables vertical scrolling */
         scroll-behavior: smooth !important;
     }

    .active1 {
                background-color: #4154f1 !important;
                color: white !important;
            }

        body {
            scroll-behavior: smooth;
        }

        .section {
            min-height: 100vh;
            padding: 50px 15px;
        }

        .hidden {
            display: none;
        }
    </style>
</head>

<body class="bg-light">
<%@include file="SidebarAndNavbarCreatEventManage.jsp" %>
 <aside class="sidebar2 border-end p-3" style="min-width: 15rem;">
        <nav class="nav flex-column gap-1">
            <a class="nav-link nav-link2 d-flex align-items-center " href="Setting-branding">
                <i class="bi bi-info-circle me-2"></i> Branding
            </a>
            <a class="nav-link nav-link2 d-flex align-items-center" href="Setting-Signin">
                <i class="bi bi-people me-2"></i> Sign In
            </a>
            <a class="nav-link nav-link2 d-flex align-items-center active active1" href="Setting-Workflow">
                <i class="bi bi-mic me-2"></i> Workflow
            </a>
        </nav>
    </aside>

    <!-- Main Section -->
    <div id="main"  class="section container">
        <!-- Notification Section -->
        <div class="alert alert-primary d-flex align-items-center" role="alert">
            <div>
                <h6 class="alert-heading">Unauthenticated Domains</h6>
                <p class="mb-0">As of January 1, 2025, sending emails from unauthenticated domains is no longer allowed to ensure better delivery rates. To comply with this, emails are now sent from <strong>noreply@zohobackstage.in</strong> as the default sender address. To avoid this, please authenticate your domains. <a href="#">Learn more.</a></p>
            </div>
        </div>

        <!-- Workflow Rules Section -->
        <div class="text-center mt-4">
            <img src="https://via.placeholder.com/150" class="mb-4" alt="Workflow Illustration">
            <h3 class="fw-bold">Workflow Rules</h3>
            <p class="text-muted">Set up workflows to trigger actions and automate processes</p>
            <a href="#workflow-details" class="btn btn-primary" id="add-workflow-btn">Add Workflow Rule</a>
        </div>
    </div>

    <!-- Workflow Details Section -->
    <div id="workflow-details" class="section container bg-white border rounded hidden">
        <h4 class="fw-bold pt-3">Workflow Details</h4>
        <p>Select the applicable module and provide more details for your workflow.</p>
        <form>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="module" class="form-label">Module <span class="text-danger">*</span></label>
                    <select id="module" class="form-select">
                        <option selected disabled>Choose a module</option>
                        <option value="event-website" data-bs-target="#event-website-triggers">Event Website</option>
                        <option value="order" data-bs-target="#order-triggers">Order</option>
                        <option value="order-request" data-bs-target="#order-request-triggers">Order Request</option>
                        <option value="attendee" data-bs-target="#attendee-triggers">Attendee</option>
                        <option value="announcement" data-bs-target="#announcement-triggers">Announcement</option>
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="workflow-name" class="form-label">Workflow Name</label>
                    <input type="text" id="workflow-name" class="form-control" placeholder="Enter Name">
                </div>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea id="description" class="form-control" rows="4" placeholder="Enter Description"></textarea>
            </div>
            <button type="button" class="btn btn-success" onclick="saveWorkflow()">Save</button>
            <a href="#main" class="btn btn-secondary">Back</a>
        </form>

        <!-- Conditional Content Section -->
        <div id="conditional-content" class="mt-4">
            <!-- Triggers Section (Event Website) -->
            <div id="event-website-triggers" class="collapse">
                <h6 class="fw-bold">Triggers <span class="text-danger">*</span></h6>
                <p class="text-muted">Specify the conditions to trigger the workflow</p>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="published" value="published">
                    <label class="form-check-label" for="published">Published</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="republished" value="republished">
                    <label class="form-check-label" for="republished">Republished</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Unpublished</label>
                </div>
            </div>

            <!-- Triggers Section (Order) -->
            <div id="order-triggers" class="collapse">
                <h6 class="fw-bold">Triggers <span class="text-danger">*</span></h6>
                <p class="text-muted">Specify the conditions to trigger the workflow</p>
                <!-- Add Order-specific triggers here -->
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="published" value="published">
                    <label class="form-check-label" for="published">Before Purchase</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="republished" value="republished">
                    <label class="form-check-label" for="republished">Edited</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Created</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Created or Edited</label>
                </div>
     </div>

            <!-- Triggers Section (Order Request) -->
            <div id="order-request-triggers" class="collapse">
                <h6 class="fw-bold">Triggers <span class="text-danger">*</span></h6>
                <p class="text-muted">Specify the conditions to trigger the workflow</p>
                <!-- Add Order Request-specific triggers here -->

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="published" value="published">
                    <label class="form-check-label" for="published">Received</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="republished" value="republished">
                    <label class="form-check-label" for="republished">Approved</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Rejected</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Cancelled</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Fulfilled</label>
                </div>

            </div>

            <!-- Triggers Section (Attendee) -->
            <div id="attendee-triggers" class="collapse">
                <h6 class="fw-bold">Triggers <span class="text-danger">*</span></h6>
                <p class="text-muted">Specify the conditions to trigger the workflow</p>

                <!-- Add Attendee-specific triggers here -->
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="republished" value="republished">
                    <label class="form-check-label" for="republished">Edited</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Created</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Created or Edited</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Check in</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Check out</label>
                </div>
            </div>

            <!-- Triggers Section (Announcement) -->
            <div id="announcement-triggers" class="collapse">
                <h6 class="fw-bold">Triggers <span class="text-danger">*</span></h6>
                <p class="text-muted">Specify the conditions to trigger the workflow</p>
                <!-- Add Announcement-specific triggers here -->

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Created</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Edited</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Created or Edited</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="triggers" id="unpublished" value="unpublished">
                    <label class="form-check-label" for="unpublished">Deleted</label>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Get elements
        const moduleSelect = document.getElementById('module');
        const workflowDetails = document.getElementById('workflow-details');
        const conditionalContent = document.getElementById('conditional-content');
        const addWorkflowBtn = document.getElementById('add-workflow-btn');

        // Add event listener to dropdown
        moduleSelect.addEventListener('change', function () {
            const selectedModule = this.value;
            // Hide all trigger sections
            document.querySelectorAll('.collapse').forEach(section => section.classList.remove('show'));

            // Show corresponding trigger section
            const targetId = this.options[this.selectedIndex].getAttribute('data-bs-target');
            if (targetId) {
                document.querySelector(targetId).classList.add('show');
            }
        });

        // Scroll to Workflow Details when Add Workflow Rule is clicked
        addWorkflowBtn.addEventListener('click', (e) => {
            e.preventDefault();
            workflowDetails.classList.remove('hidden');
            workflowDetails.scrollIntoView({ behavior: 'smooth' });
        });

        // Save Workflow functionality
        function saveWorkflow() {
            alert('Workflow saved successfully!');
        }

    </script>
</body>

</html>