<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Event Modal</title>
    <!-- Bootstrap CSS -->
  <%@include file = "All_CSS_js.jsp"%>
    <style>
 .modal-backdrop {
   background-color: rgba(0, 0, 0, 0.3);
      backdrop-filter: blur(2px) ;
         }
        .event-type-card {
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 15px;
            cursor: pointer;
            transition: all 0.3s ease;
            min-width : 12rem
            min-height: 10rem;
               }
        .event-type-card.selected {
            background-color: #f8f9ff;
            border-color: #4461F2;
        }
        .event-type-card:hover {
            border-color: #4461F2;
        }
        .event-icon {
          margin-left: 3rem ;
            width: 40px;
            height: 40px;
            background-color: #4461F2;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            margin-bottom: 10px;
        }
        .modal-dialog {
            min-width: 1200px;
        }
        .char-counter {
            font-size: 12px;
            color: #666;
        }
    </style>
</head>
<body>

<!-- Modal -->
<div class="modal fade view" id="createEventModal"  tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Create Event</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-8">
                        <form id="createEventForm">
                            <!-- Event Types -->
                            <div class="row mb-4">
                                <div class="col-md-4">
                                    <div class="event-type-card selected " >
                                      <div style="display: flex; align-items: center;">
                                        <input type="checkbox" name = "eventtype" id="inPersonCheckbox" class="me-2" checked>
                                        <h6 style="margin-right: 30px ;">In-person</h6>
                                        <div class="event-icon">
                                          <i class="bi bi-people"></i>
                                        </div>
                                      </div>
                                        <small class="text-muted">Conduct an event in a physical venue for face-to-face networking</small>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="event-type-card">
                                      <div style="display: flex; align-items: center;">
                                        <input type="checkbox" name = "eventtype" id="virtualCheckbox" class="me-2">
                                        <h6 style="margin-right: 3rem ;">Virtual</h6>
                                      <div class="event-icon">
                                            <i class="bi bi-camera-video"></i>
                                        </div>
                                        </div>
                                        <small class="text-muted">Host a digital event that engages participants who join remotely</small>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="event-type-card">
                                      <div style="display: flex; align-items: center;">
                                        <input type="checkbox" name = "eventtype" id="HybridCheckbox" class="me-2">
                                      <h6 style="margin-right: 3rem; ">Hybrid</h6>
                                        <div class="event-icon">
                                            <i class="bi bi-broadcast"></i>
                                        </div>
                                        </div>
                                        <small class="text-muted">Expand your in-person event to reach a wider audience</small>
                                    </div>
                                </div>
                            </div>

                            <!-- Event Name -->
                            <div class="mb-3 ">
                                <label class="form-label">Event Name <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" maxlength="255" required>
                                <div class="char-counter text-end">10 / 255</div>
                            </div>

                            <!-- Date and Time -->
                             <div d-flex align-items-center>
                            <div class="row mb-3 ">
                              <div class="col-md-3">
                                  <label class="form-label">Start Date</label>
                                  <div class="input-group">
                                      <input type="date" class="form-control">

                                  </div>
                              </div>
                              <div class="col-md-3">
                                <label class="form-label">Start time</label>
                                <div class="input-group">
                                    <input type="time" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                              <label class="form-label">Start Date</label>
                              <div class="input-group">
                                  <input type="date" class="form-control">
                                     </div>
                          </div>
                              <div class="col-md-3">
                                    <label class="form-label">End time</label>
                                    <div class="input-group">
                                        <input type="time" class="form-control">
                                    </div>
                                </div>
                            </div>
</div>
                            <!-- Source Language -->
                            <div class="mb-3">
                                <label class="form-label">Source Language <i class="bi bi-info-circle"></i></label>
                                <select class="form-select">
                                    <option value="english">English</option>
                                    <option value="spanish">Spanish</option>
                                    <option value="french">French</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <img src="images/calender.png" alt="Calendar illustration" class="img-fluid mb-3" style="max-width: 200px; margin-top: 5rem ;">
                            <h4>Create your event</h4>
                            <p class="text-muted">Start creating your event by providing the basic details now and fill in what your event is all about later</p>
                            <p class="small">
                                See our complete
                                <a href="#" class="text-primary">Plan Comparison <i class="bi bi-box-arrow-up-right"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary">Create</button>
            </div>
        </div>
    </div>
</div>

<!-- Button to trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createEventModal">
    Create Event
</button>

<!-- Bootstrap JS -->

    <script>
    // JavaScript to ensure only one checkbox is selected at a time
    document.querySelectorAll('input[name="eventtype"]').forEach(checkbox => {
        checkbox.addEventListener('change', (e) => {
            if (e.target.checked) {
                // Uncheck all other checkboxes
                document.querySelectorAll('input[name="eventtype"]').forEach(cb => {
                    if (cb !== e.target) cb.checked = false;
                });
            }
        });
    });

    // JavaScript to handle event-type card selection
    document.querySelectorAll('.event-type-card').forEach(card => {
        card.addEventListener('click', () => {
            // Clear selection from all cards
            document.querySelectorAll('.event-type-card').forEach(c => c.classList.remove('selected'));
            // Mark the clicked card as selected
            card.classList.add('selected');
            // Check the associated checkbox
            card.querySelector('input[name="eventtype"]').checked = true;
            // Uncheck other checkboxes
            document.querySelectorAll('input[name="eventtype"]').forEach(cb => {
                if (cb !== card.querySelector('input[name="eventtype"]')) cb.checked = false;
            });
        });
    });


</script>
</body>
</html>