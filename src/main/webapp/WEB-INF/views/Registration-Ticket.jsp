<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Speakers Section</title>
    <%@include file="All_CSS_js.jsp" %>
    <style>
     .active1 {
                background-color: #4154f1 !important;
                color: white !important;
            }

                /* Empty State Styles */
                .empty-state {
                   text-align: center;
                   padding: 100px 20px;
                   background: #fff;
                   min-height: 100vh;
                   display: flex;
                   flex-direction: column;
                   align-items: center;
                   justify-content: center;
               }
               .empty-state img {
                   max-width: 200px;
                   margin-bottom: 2rem;
               }

               /* Offcanvas Styles */
               .offcanvas {
                   width: 600px !important;
               }

               /* Form Styles */
               .tab-content {
                   display: none;
               }
               .tab-content.active {
                   display: block;
               }

               /* Color Picker Styles */
               .color-box {
                   width: 40px;
                   height: 40px;
                   border-radius: 4px;
                   background-color: #6366f1;
                   cursor: pointer;
               }

               /* Visibility Section Styles */
               .visibility-option {
                   border: 1px solid transparent;
                   border-radius: 8px;
                   padding: 16px;
                   margin-bottom: 12px;
                   cursor: pointer;
                   transition: all 0.2s;
               }
               .visibility-option.selected {
                   background-color: #EEF2FF;
                   border-color: #818CF8;
               }
               .visibility-option:hover:not(.selected) {
                   background-color: #F9FAFB;
               }

               /* Form Controls Styles */
               .form-check-input {
                   width: 20px;
                   height: 20px;
                   margin-right: 12px;
                   border: 2px solid #D1D5DB;
               }
               .form-check-input:checked {
                   background-color: #6366F1;
                   border-color: #6366F1;
               }
               .form-check {
                   display: flex;
                   align-items: flex-start;
                   margin-bottom: 0;
                   padding-left: 0;
               }

               /* Typography Styles */
               .visibility-title {
                   font-size: 15px;
                   color: #111827;
                   margin-bottom: 4px;
               }
               .visibility-description {
                   font-size: 14px;
                   color: #6B7280;
                   margin-top: 4px;
               }
               .section-title {
                   display: flex;
                   align-items: center;
                   margin-bottom: 16px;
                   font-size: 15px;
                   color: #111827;
               }

               /* Responsive Styles */
               @media (max-width: 768px) {
                   .offcanvas {
                       width: 100% !important;
                   }
               }

               /* Hide When Options Styles */
               .hide-when-options {
                   margin-left: 32px;
                   margin-top: 12px;
                   display: none;
               }
               .hide-when-options.show {
                   display: block;
               }
               .hide-when-option {
                   margin-bottom: 8px;
               }

               /* Navigation Styles */
               .nav-tabs .nav-link {
                   color: #6B7280;
                   border: none;
                   padding: 0.5rem 1rem;
                   margin-right: 1rem;
                   font-weight: 500;
               }
               .nav-tabs .nav-link.active {
                   color: #6366F1;
                   border-bottom: 2px solid #6366F1;
                   background: none;
               }
               .nav-tabs {
                   border-bottom: 1px solid #E5E7EB;
               }

        .speakers-section {
            padding: 2rem 0;
        }

        .content-wrapper {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            padding: 2rem 1rem;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 600;
            text-align: left;
            margin-bottom: 3rem;
        }

        .illustration {
            width: 200px;
            height: 200px;
            margin: 2rem auto;
        }

        .add-speaker-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin: 1.5rem 0;
        }

        .description {
            color: #666;
            margin-bottom: 2rem;
        }

        .btn-add-speaker {
            background-color: #4F46E5;
            color: white;
            padding: 0.75rem 2rem;
            border-radius: 0.5rem;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .btn-add-speaker:hover {
            background-color: #4338CA;
            color: white;
        }

        .sidebar {
            background-color: #fff;
            border-right: 1px solid #e9ecef;
            height: 100vh;
            position: fixed;
            width: 250px;
        }

        .sidebar-item {
            padding: 12px 24px;
            color: black;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        /* Remove the underline from sidebar links */
        .sidebar-item a {
            text-decoration: none; /* Removes underline from links */
            color: black; /* Ensures link text is black */
        }

        .sidebar-item a:hover {
            text-decoration: none; /* Ensures no underline on hover */
        }

        .sidebar-item:hover {
            background-color: #f8f9fa;
        }

        .sidebar-item.active {
            background-color: #e8f0fe;
            color: #4285f4;
        }
    </style>
</head>
<body>
   <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>
    <div class="d-flex">
        <div class="sidebar">
           <div class="sidebar-item active active1">
              <a href="Registration-Ticket"><i class="bi bi-ticket active "></i> Ticket Class</a>
           </div>

           <div class="sidebar-item ">
              <a href="registration-form"><i class="bi bi-person"></i> Registration Form</a>
           </div>

          <div class="sidebar-item">
            <a href="registration-cancel"><i class="bi bi-x-circle"></i> Cancellation Policy</a>
          </div>
          <div class="sidebar-item">
            <a href="registration-setting"><i class="bi bi-gear"></i> Registration Setting</a>
          </div>
          <div class="sidebar-item ">
            <a href="regis-approval"><i class="bi bi-check-circle"></i>  Registration Approval</a>
          </div>
          <div class="sidebar-item ">
            <a href="regis-attendie"><i class="bi bi-person"></i> Attendees</a>
          </div>
           <div class="sidebar-item ">
            <a href="prospect"><i class="bi bi-search"></i> Prospect</a>
          </div>
       </div>




       <!-- Empty State -->
       <div class="empty-state" id="emptyState" style = "margin-left : 35rem ; ">
           <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-30%20172345-pu4bCCPuefm9H8QpnQJc4mT8cDISJb.png" alt="Create Tickets Illustration">
           <h2 class="mb-3">Create Tickets to Get Started</h2>
           <p class="text-muted mb-4">Quickly add a ticket class with a name, price and quantity.</p>
           <button class="btn btn-primary btn-lg" data-bs-toggle="offcanvas" data-bs-target="#ticketFormCanvas">
               Create Ticket Class
           </button>
       </div>

       <!-- Ticket Form Offcanvas -->
       <div class="offcanvas offcanvas-end" tabindex="-1" data-bs-backdrop= "false"  id="ticketFormCanvas">
           <div class="offcanvas-header border-bottom">
               <h5 class="offcanvas-title">Add Ticket Class</h5>
               <button type="button" class="btn-close"  data-bs-dismiss="offcanvas"></button>
           </div>

           <div class="offcanvas-body">
               <!-- Tab Navigation -->
               <ul class="nav nav-tabs mb-4">
                   <li class="nav-item">
                       <a class="nav-link active" href="#" onclick="switchTab('general', this)">General</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#" onclick="switchTab('visibility', this)">Visibility</a>
                   </li>
               </ul>

               <!-- General Tab -->
               <div id="generalTab" class="tab-content active">
                   <form id="ticketGeneralForm">
                       <!-- Ticket Name & Color -->
                       <div class="mb-4">
                           <div class="d-flex justify-content-between align-items-start">
                               <div class="flex-grow-1 me-4">
                                   <label class="form-label">Ticket Name <span class="text-danger">*</span></label>
                                   <input type="text" class="form-control" id="ticketName" maxlength="50" onkeyup="updateCharCount()">
                                   <small class="text-muted"><span id="charCount">0</span>/50</small>
                               </div>
                               <div>
                                   <label class="form-label">Color</label>
                                   <div class="color-box" id="colorPicker"></div>
                               </div>
                           </div>
                       </div>

                       <!-- Status -->
                       <div class="mb-4">
                           <label class="form-label">Status</label>
                           <select class="form-select" id="ticketStatus">
                               <option>Open</option>
                               <option>Closed</option>
                           </select>
                       </div>

                       <!-- Quantity -->
                       <div class="mb-4">
                           <label class="form-label">Quantity <span class="text-danger">*</span></label>
                           <input type="number" class="form-control" id="ticketQuantity" value="25">
                       </div>

                       <!-- Registration Approval -->
                       <div class="mb-4">
                           <div class="d-flex justify-content-between align-items-center">
                               <div>
                                   <label class="form-label mb-0">Registration approval</label>
                                   <small class="text-muted d-block">You can pre-screen the order request placed by the visitors and manually approve or deny them before issuing their tickets.</small>
                               </div>
                               <div class="form-check form-switch">
                                   <input class="form-check-input" type="checkbox" id="registrationApproval">
                               </div>
                           </div>
                       </div>

                       <!-- Price -->
                       <div class="mb-4">
                           <label class="form-label">Price</label>
                           <div class="d-flex align-items-center gap-3 mb-2">
                               <div class="form-check">
                                   <input class="form-check-input" type="radio" name="priceType" id="pricePaid" onchange="togglePriceInput(true)">
                                   <label class="form-check-label" for="pricePaid">Paid</label>
                               </div>
                               <div class="form-check">
                                   <input class="form-check-input" type="radio" name="priceType" id="priceFree" checked onchange="togglePriceInput(false)">
                                   <label class="form-check-label" for="priceFree">Free</label>
                               </div>
                           </div>
                           <div id="priceInputGroup" style="display: none;">
                               <div class="input-group w-25">
                                   <span class="input-group-text">₹</span>
                                   <input type="number" class="form-control" id="ticketPrice" value="0">
                               </div>
                           </div>
                       </div>

                       <!-- Buying Limits -->
                       <div class="row mb-4">
                           <div class="col-md-6">
                               <label class="form-label">Minimum Buying Limit <span class="text-danger">*</span></label>
                               <input type="number" class="form-control" id="minLimit" value="1" min="1">
                           </div>
                           <div class="col-md-6">
                               <label class="form-label">Maximum Buying Limit <span class="text-danger">*</span></label>
                               <input type="number" class="form-control" id="maxLimit" value="10" min="1">
                           </div>
                       </div>

                       <!-- Sales Date & Time -->
                       <div class="row">
                           <div class="col-md-6">
                               <label class="form-label">Sales Start Date</label>
                               <input type="date" class="form-control" id="startDate">
                           </div>
                           <div class="col-md-6">
                               <label class="form-label">Time</label>
                               <input type="time" class="form-control" id="startTime">
                           </div>
                       </div>
                   </form>
               </div>

               <!-- Visibility Tab -->
               <div id="visibilityTab" class="tab-content">
                   <div class="section-title">
                       <svg class="me-2" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                           <circle cx="12" cy="12" r="10"></circle>
                           <line x1="12" y1="16" x2="12" y2="12"></line>
                           <line x1="12" y1="8" x2="12" y2="8"></line>
                       </svg>
                       Ticket Visibility in Event Website
                   </div>

                   <!-- Always Visible Option -->
                   <div class="visibility-option selected" onclick="selectVisibilityOption(this, 'always')">
                       <div class="form-check">
                           <input class="form-check-input" type="radio" name="visibility" id="alwaysVisible" checked>
                           <label class="form-check-label" for="alwaysVisible">
                               <div class="visibility-title">Always Visible</div>
                           </label>
                       </div>
                   </div>

                   <!-- Always Hidden Option -->
                   <div class="visibility-option" onclick="selectVisibilityOption(this, 'hidden')">
                       <div class="form-check">
                           <input class="form-check-input" type="radio" name="visibility" id="alwaysHidden">
                           <label class="form-check-label" for="alwaysHidden">
                               <div class="visibility-title">Always Hidden</div>
                               <div class="visibility-description">
                                   Hidden ticket classes will be displayed in the event website when access codes are used
                               </div>
                           </label>
                       </div>
                   </div>

                   <!-- Hide When Option -->
                   <div class="visibility-option" onclick="selectVisibilityOption(this, 'conditional')">
                       <div class="form-check">
                           <input class="form-check-input" type="radio" name="visibility" id="hideWhen">
                           <label class="form-check-label" for="hideWhen">
                               <div class="visibility-title">
                                   Hide When <span class="visibility-description">(You must choose at least one option)</span>
                               </div>
                           </label>
                       </div>

                       <div class="hide-when-options" id="hideWhenOptions">
                           <div class="hide-when-option">
                               <div class="form-check">
                                   <input class="form-check-input" type="checkbox" id="notBegun">
                                   <label class="form-check-label" for="notBegun">
                                       Ticket sales haven't begun
                                   </label>
                               </div>
                           </div>
                           <div class="hide-when-option">
                               <div class="form-check">
                                   <input class="form-check-input" type="checkbox" id="soldOut">
                                   <label class="form-check-label" for="soldOut">
                                       Ticket sales are sold out or marked as sold out
                                   </label>
                               </div>
                           </div>
                           <div class="hide-when-option">
                               <div class="form-check">
                                   <input class="form-check-input" type="checkbox" id="ended">
                                   <label class="form-check-label" for="ended">
                                       Ticket sales have ended
                                   </label>
                               </div>
                           </div>
                           <div class="hide-when-option">
                               <div class="form-check">
                                   <input class="form-check-input" type="checkbox" id="closed">
                                   <label class="form-check-label" for="closed">
                                       Ticket class status is closed
                                   </label>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>

           <!-- Footer -->
           <div class="offcanvas-footer border-top p-3">
               <div class="d-flex justify-content-between">
                   <button type="button" class="btn btn-light" data-bs-dismiss="offcanvas">Close</button>
                   <button type="button" class="btn btn-primary" onclick="saveTicket()">Done</button>
               </div>
           </div>
       </div>

       <!-- Bootstrap JS -->
       <script>
             // Tab switching
             function switchTab(tabName, element) {
                 document.querySelectorAll('.nav-link').forEach(link => {
                     link.classList.remove('active');
                 });
                 element.classList.add('active');

                 document.querySelectorAll('.tab-content').forEach(content => {
                     content.classList.remove('active');
                 });
                 document.getElementById(tabName + 'Tab').classList.add('active');
             }

             // Character count
             function updateCharCount() {
                 const input = document.getElementById('ticketName');
                 const count = document.getElementById('charCount');
                 count.textContent = input.value.length;
             }

             // Price input toggle
             function togglePriceInput(show) {
                 document.getElementById('priceInputGroup').style.display = show ? 'block' : 'none';
             }

             // Visibility option selection
             function selectVisibilityOption(element, type) {
                 // Update selected state
                 document.querySelectorAll('.visibility-option').forEach(opt => {
                     opt.classList.remove('selected');
                 });
                 element.classList.add('selected');

                 // Check radio button
                 element.querySelector('input[type="radio"]').checked = true;

                 // Handle hide when options
                 const hideWhenOptions = document.getElementById('hideWhenOptions');
                 hideWhenOptions.style.display = type === 'conditional' ? 'block' : 'none';

                 if (type === 'conditional') {
                     // Add validation for checkboxes
                     const checkboxes = hideWhenOptions.querySelectorAll('input[type="checkbox"]');
                     checkboxes.forEach(checkbox => {
                         checkbox.addEventListener('change', validateHideWhenOptions);
                     });
                 }
             }

             // Validate hide when options
             function validateHideWhenOptions() {
                 const checkboxes = document.querySelectorAll('#hideWhenOptions input[type="checkbox"]');
                 let checked = false;
                 checkboxes.forEach(checkbox => {
                     if (checkbox.checked) checked = true;
                 });

                 if (!checked) {
                     alert('Please select at least one option for Hide When');
                 }
             }

             // Save ticket
             function saveTicket() {
                 // Validate required fields
                 const ticketName = document.getElementById('ticketName').value;
                 const quantity = document.getElementById('ticketQuantity').value;

                 if (!ticketName || !quantity) {
                     alert('Please fill in all required fields');
                     return;
                 }

                 // Validate hide when options if selected
                 if (document.getElementById('hideWhen').checked) {
                     const checkboxes = document.querySelectorAll('#hideWhenOptions input[type="checkbox"]');
                     let hasChecked = false;
                     checkboxes.forEach(checkbox => {
                         if (checkbox.checked) hasChecked = true;
                     });

                     if (!hasChecked) {
                         alert('Please select at least one option for Hide When');
                         return;
                     }
                 }

                 // Collect form data
                 const ticketData = {
                     name: ticketName,
                     status: document.getElementById('ticketStatus').value,
                     quantity: quantity,
                     requiresApproval: document.getElementById('registrationApproval').checked,
                     price: document.querySelector('input[name="priceType"]:checked').id === 'pricePaid'
                            ? document.getElementById('ticketPrice').value : 0,
                     minLimit: document.getElementById('minLimit').value,
                     maxLimit: document.getElementById('maxLimit').value,
                     startDate: document.getElementById('startDate').value,
                     startTime: document.getElementById('startTime').value,
                     visibility: {
                         type: document.querySelector('input[name="visibility"]:checked').id,
                         hideWhenOptions: Array.from(document.querySelectorAll('#hideWhenOptions input[type="checkbox"]:checked'))
                             .map(checkbox => checkbox.id)
                     }
                 };

                 console.log('Ticket saved:', ticketData);

                 // Close the offcanvas
                 const offcanvasElement = document.getElementById('ticketFormCanvas');
                 const offcanvas = bootstrap.Offcanvas.getInstance(offcanvasElement);
                 offcanvas.hide();
             }

             // Set default date and time on load
             window.onload = function() {
                 const today = new Date();
                 document.getElementById('startDate').value = today.toISOString().split('T')[0];
                 document.getElementById('startTime').value = '12:00';
             }
             </script>

</body>
</html>