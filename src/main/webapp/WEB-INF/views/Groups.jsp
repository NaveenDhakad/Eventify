<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Group</title>
    <%@include file = "All_CSS_js.jsp"%>
    <style>
        body {
            background-color: whitesmoke ;
        }
        .empty-state {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 2rem;
        }
        .cards-illustration {
            width: 300px;
            height: 200px;
            margin-bottom: 2rem;
            position: relative;
        }
        .card-item {
            width: 120px;
            height: 160px;
            background: white;
            border-radius: 8px;
            position: absolute;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 1rem;
        }
        .card-item:nth-child(1) {
            left: 20px;
            transform: rotate(-15deg);
        }
        .card-item:nth-child(2) {
            left: 90px;
            z-index: 2;
        }
        .card-item:nth-child(3) {
            right: 20px;
            transform: rotate(15deg);
        }
        .dot {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-bottom: 1rem;
        }
        .dot-green { background-color: #a8e6cf; }
        .dot-pink { background-color: #ffb3ba; }
        .dot-yellow { background-color: #ffffba; }
        .line {
            width: 60px;
            height: 8px;
            background: #e9ecef;
            border-radius: 4px;
            margin-bottom: 0.5rem;
        }
        .create-btn {
            background-color: #00d084;
            border: none;
            padding: 0.75rem 2rem;
            font-size: 1rem;
            border-radius: 6px;
            color: white;
            transition: background-color 0.2s;
        }
        .create-btn:hover {
            background-color: #00b873;
            color: white;
        }
        .group-icon-placeholder {
            width: 100px;
            height: 100px;
            background-color: #f8f9fa;
            border-radius: 50%;
            margin: 0 auto 2rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .modal-content {
            border-radius: 12px;
        }
        .form-control {
            border-radius: 6px;
            border-color: #e0e0e0;
            padding: 0.75rem;
        }
        .form-control:focus {
            border-color: #00d084;
            box-shadow: 0 0 0 0.2rem rgba(0, 208, 132, 0.25);
        }
        .btn-secondary {
            background-color: #f8f9fa;
            border: none;
            color: #666;
        }
        .btn-secondary:hover {
            background-color: #e9ecef;
            color: #333;
        }
    </style>
</head>
<body>
<%@include file = "sidebarAccount.jsp"%>
    <!-- Empty State -->
    <div class="empty-state">
        <div class="cards-illustration">
            <div class="card-item">
                <div class="dot dot-green"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <div class="card-item">
                <div class="dot dot-pink"></div>
                <div class="line"></div>
                <div class="line"></div>
                <div class="star position-absolute" style="top: -10px; right: -10px; color: #ffd700;">★</div>
            </div>
            <div class="card-item">
                <div class="dot dot-yellow"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
        </div>
        <p class="h5 mb-4 text-dark">Add a group of people and simplify email communication with them.</p>
        <button class="create-btn" data-bs-toggle="modal" data-bs-target="#createGroupModal">
            Create New Group
        </button>
    </div>

    <!-- Create Group Modal -->
    <div class="modal fade" id="createGroupModal" tabindex="-1" aria-labelledby="createGroupModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <h5 class="modal-title" id="createGroupModalLabel">Create Group</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="group-icon-placeholder">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="#666" viewBox="0 0 16 16">
                            <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                            <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
                            <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                        </svg>
                    </div>
                    <form>
                        <div class="mb-3">
                            <label for="groupName" class="form-label">Group Name</label>
                            <input type="text" class="form-control" id="groupName" required>
                        </div>
                        <div class="mb-3">
                            <label for="description" class="form-label">Description (Optional)</label>
                            <textarea class="form-control" id="description" rows="4"></textarea>
                        </div>
                        <div class="mb-4">
                            <label for="members" class="form-label">Initial Members</label>
                            <textarea class="form-control" id="members" rows="3" placeholder="Enter the email address of your members(Separate multiple emails with a comma)"></textarea>
                        </div>
                        <div class="d-flex gap-2">
                            <button type="submit" class="btn create-btn flex-grow-1">Create</button>
                            <button type="button" class="btn btn-secondary px-4" data-bs-dismiss="modal">Back</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>