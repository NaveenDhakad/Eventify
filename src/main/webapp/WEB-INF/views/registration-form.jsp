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
            backgroulnd-color: #e8f0fe;
            color: #4285f4;
        }

    </style>
</head>
<body>
 <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>

    <div class="d-flex" >
        <div class="sidebar">
           <div class="sidebar-item  active">
              <a href="Registration-Ticket"><i class="bi bi-ticket"></i> Ticket Class</a>
           </div>

           <div class="sidebar-item active active1">
              <a href="registration-form"><i class="bi bi-person active " ></i> Registration Form</a>
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
    <div class="container" style="margin-bottom: 50px; width: 1000px; margin-left :15rem ;">
        <section class="speakers-section">
         <div style="display: flex;">
            <h1>Registration Form</h1>
            <a href="Edit-registration.html" class="btn btn-primary" style="margin-left: 600px;margin-right: -400px;">
                <i class="bi bi-pencil"></i> Edit Registration Form
            </a>

        </div>
            <h5> &nbsp;Edit the form to customize it</h5>

            <div class="content-wrapper" >
                <h3 style="margin-right: 28rem;margin-top: 10px;">Preview</h3>
                <img src="video/Screenshot 2025-01-30 155656.png" alt="Microphone illustration" class="illustration" style="width:800px;height: 800px;">


            </div>
        </section>
    </div>
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