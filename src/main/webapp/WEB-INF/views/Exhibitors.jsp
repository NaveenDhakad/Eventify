<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exhibitor Categories</title>
       <%@include file="All_CSS_js.jsp" %>

    <style>
        .empty-state {
            min-height: 80vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 2rem;
        }
        .empty-state img {
            width: 200px;
            height: 200px;
            margin-bottom: 2rem;
        }
        .btn-primary {
            background-color: #6366f1;
            border-color: #6366f1;
        }
        .btn-primary:hover {
            background-color: #4f46e5;
            border-color: #4f46e5;
        }
        .form-container {
            max-width: 800px;
            padding: 2rem;
        }
        .benefit-item {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 1rem;
            margin-bottom: 1rem;
        }
        .default-badge {
            background-color: #6b7280;
            color: white;
            font-size: 0.75rem;
            padding: 0.25rem 0.5rem;
            border-radius: 4px;
            margin-left: 0.5rem;
        }
        .change-unit {
            color: #6366f1;
            text-decoration: none;
            font-size: 0.875rem;
        }
        .change-unit:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@include file="SidebarAndNavbarCreatEventManage.jsp" %>

    <div class="container">
        <h1 class="mt-4 mb-5">Exhibitor Category</h1>

        <div class="empty-state">
            <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-30%20181608-XtsuMq6bjgMNE8qwHVPpyZ9xmghUN0.png" alt="Exhibitor illustration" class="img-fluid">
            <h2 class="mb-3">Set up Exhibitor Categories</h2>
            <p class="text-muted mb-4">Create categories for exhibitors with different benefits</p>
            <button class="btn btn-primary btn-lg" type="button"  data-bs-toggle="offcanvas" data-bs-target="#addExhibitorCategory" aria-controls="addExhibitorCategory">Add Exhibitor Category</button>
        </div>
    </div>

    <!-- Offcanvas Sidebar for Adding Exhibitor Category -->
    <div class="offcanvas offcanvas-end" tabindex="-1" data-bs-backdrop="false" id="addExhibitorCategory" aria-labelledby="addExhibitorCategoryLabel">
        <div class="offcanvas-header">
            <h5 id="addExhibitorCategoryLabel">Add Exhibitor Category</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <form action="index.html">
                <!-- Category Name -->
                <div class="mb-4">
                    <label class="form-label">Category Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" required>
                </div>

                <!-- Price -->
                <div class="mb-4">
                    <label class="form-label">Price</label>
                    <div class="d-flex gap-4">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="price" id="free" checked>
                            <label class="form-check-label" for="free">Free</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="price" id="paid">
                            <label class="form-check-label" for="paid">Paid</label>
                        </div>
                    </div>
                </div>

                <!-- Booth Dimensions -->
                <div class="mb-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <label class="form-label mb-0">Booth Dimensions (ft)</label>
                        <a href="#" class="change-unit">Change Unit</a>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">Length <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" value="10" required>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Breadth <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" value="10" required>
                        </div>
                    </div>
                </div>

                <!-- Exhibitor Benefits -->
                <div class="mb-4">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <label class="form-label mb-0">Exhibitor Benefits</label>
                        <a href="#" class="change-unit">Add New</a>
                    </div>

                    <!-- Exhibitor Passes -->
                    <div class="benefit-item">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" checked>
                                <label class="form-check-label">
                                    Exhibitor Passes
                                    <span class="default-badge">Default</span>
                                </label>
                            </div>
                            <div class="input-group" style="width: 120px;">
                                <button class="btn btn-outline-secondary" type="button">-</button>
                                <input type="text" class="form-control text-center" value="2">
                                <button class="btn btn-outline-secondary" type="button">+</button>
                            </div>
                        </div>
                    </div>

                    <!-- Videos -->
                    <div class="benefit-item">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox">
                                <label class="form-check-label">Videos</label>
                            </div>
                            <div class="input-group" style="width: 120px;">
                                <button class="btn btn-outline-secondary" type="button">-</button>
                                <input type="text" class="form-control text-center" value="2">
                                <button class="btn btn-outline-secondary" type="button">+</button>
                            </div>
                        </div>
                    </div>

                    <!-- Collaterals -->
                    <div class="benefit-item">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox">
                                <label class="form-check-label">Collaterals</label>
                            </div>
                            <div class="input-group" style="width: 120px;">
                                <button class="btn btn-outline-secondary" type="button">-</button>
                                <input type="text" class="form-control text-center" value="2">
                                <button class="btn btn-outline-secondary" type="button">+</button>
                            </div>
                        </div>
                    </div>

                    <!-- Lead Capture -->
                    <div class="benefit-item">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox">
                            <label class="form-check-label">Lead Capture</label>
                        </div>
                    </div>
                </div>

                <!-- Footer Buttons -->
                <div class="d-flex justify-content-between">
                    <button type="button" class="btn btn-light" data-bs-dismiss="offcanvas">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>


</body>
</html>