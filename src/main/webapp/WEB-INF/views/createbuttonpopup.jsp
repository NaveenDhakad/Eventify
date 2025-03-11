<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Event Modal</title>
    <%@include file="All_CSS_js.jsp" %>
    <style>
        .modal-backdrop {
            background-color: rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(2px);
        }
        .event-type-card {
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 15px;
            cursor: pointer;
            transition: all 0.3s ease;
            min-width: 12rem;
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
            margin-left: 3rem;
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

<!-- Button to trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createEventModal">
    Create Event
</button>

<!-- Modal -->
<div class="modal fade view" id="createEventModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Create Event</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-8">
                        <form id="createEventForm" method="post" action="/createbuttonpopup">
                            <!-- Event Types -->
                            <div class="row mb-4">
                                <div class="col-md-4">
                                    <div class="event-type-card selected">
                                        <div style="display: flex; align-items: center;">
                                            <input type="checkbox" name="eventtype" id="inPersonCheckbox" class="me-2" checked>
                                            <h6 style="margin-right: 30px;">In-person</h6>
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
                                            <input type="checkbox" name="eventtype" id="virtualCheckbox" class="me-2">
                                            <h6 style="margin-right: 3rem;">Virtual</h6>
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
                                            <input type="checkbox" name="eventtype" id="HybridCheckbox" class="me-2">
                                            <h6 style="margin-right: 3rem;">Hybrid</h6>
                                            <div class="event-icon">
                                                <i class="bi bi-broadcast"></i>
                                            </div>
                                        </div>
                                        <small class="text-muted">Expand your in-person event to reach a wider audience</small>
                                    </div>
                                </div>
                            </div>

                            <!-- Event Name -->
                            <div class="mb-3">
                                <label class="form-label">Event Name <span class="text-danger">*</span></label>
                                <input type="text" name="eventName" class="form-control" maxlength="255" required>
                                <div class="char-counter text-end">10 / 255</div>
                            </div>

                            <!-- Date and Time -->
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <label class="form-label">Start Date</label>
                                    <input type="date" name="StartDate" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label class="form-label">Start Time</label>
                                    <input type="time" name="StartTime" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label class="form-label">End Date</label>
                                    <input type="date" name="EndDate" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label class="form-label">End Time</label>
                                    <input type="time" name="EndTime" class="form-control">
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

                            <div class="modal-footer">
                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-primary">Create</button>
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
