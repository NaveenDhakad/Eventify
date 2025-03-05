<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Speakers Management</title>
          <%@include file="All_CSS_js.jsp" %>

    <style>
    .main-content {
    width : 100% ;
        height: 100vh; /* Full viewport height */
        overflow-y: auto; /* Enable vertical scrolling */

    }

      .upload-icon {
                width: 48px;
                height: 48px;
                background-color: #f8f9fa;
                border: 1px solid #e9ecef;
                border-radius: 8px;
                padding: 10px;
            }
            .file-specs {
                font-size: 0.875rem;
                color: #6c757d;
                text-align: right;
            }
            .upload-section {
                border-bottom: 1px solid #dee2e6;
                padding: 1.5rem 0;
            }
            .upload-section:last-child {
                border-bottom: none;
            }
            .btn-link {
                text-decoration: none;
                color: #0d6efd;
                padding: 0;
            }
            .btn-link:hover {
                text-decoration: underline;
            }
            .info-icon {
                width: 16px;
                height: 16px;
                vertical-align: middle;
                margin-left: 4px;
            }
       .active1{
                      background-color: #4154f1 !important ;
                                 color: white !important;

                     }
        .speaker-icon {
            max-width: 200px;
            margin: 2rem auto;
        }
        .preview-image {
            max-width: 100%;
            max-height: 200px;
            object-fit: contain;
        }
    </style>
</head>
<body>
<%@include file="SidebarAndNavbarCreatEventManage.jsp" %>
 <aside class="sidebar2 border-end p-3" style="min-width : 15rem ; ">
            <nav class="nav flex-column gap-1">
                <a class="nav-link nav-link2 d-flex align-items-center active active1" href="Setting-branding">
                    <i class="bi bi-info-circle me-2"></i> Branding
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center" href="Setting-Signin">
                    <i class="bi bi-people me-2"></i> Sign In
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center " href="Setting-Workflow">
                    <i class="bi bi-mic me-2"></i> Workflow
                </a>
            </nav>
        </aside>

    <!-- Main Content -->
    <div class="main-content">
  <div class="container py-5">
        <h1 class="mb-4">Branding</h1>

        <form class="card needs-validation" novalidate>
            <div class="card-body">
                <!-- Logo Section -->
                <div class="upload-section">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <div class="upload-icon">
                                <svg width="24" height="24" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <rect x="3" y="3" width="18" height="18" rx="2" stroke-width="2"/>
                                    <path d="M3 14l4-4 8 8" stroke-width="2"/>
                                </svg>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h5 class="mb-2">Logo</h5>
                                    <p class="mb-0">This logo will be used in your rebranded event page</p>
                                </div>
                                <label class="btn btn-link text-primary">
                                    Upload
                                    <input type="file" class="d-none" accept=".jpg,.jpeg,.png,.gif,.webp">
                                </label>
                            </div>
                            <div class="file-specs mt-2 text-end">
                                File size: Up to 1MB<br>
                                Optimal dimensions: 120x40px<br>
                                Supported file types: JPG, JPEG, PNG, GIF, WEBP
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Event Thumbnail Section -->
                <div class="upload-section">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <div class="upload-icon">
                                <svg width="24" height="24" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <rect x="3" y="3" width="18" height="18" rx="2" stroke-width="2"/>
                                    <circle cx="8.5" cy="8.5" r="1.5"/>
                                </svg>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h5 class="mb-2">
                                        Event Thumbnail
                                        <svg class="info-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <circle cx="12" cy="12" r="10"/>
                                            <path d="M12 16v-4M12 8h.01"/>
                                        </svg>
                                    </h5>
                                    <p class="mb-0">This image will be used as the thumbnail for your event website in the portal event-listing page</p>
                                </div>
                                <label class="btn btn-link text-primary">
                                    Change
                                    <input type="file" class="d-none" accept=".jpg,.jpeg,.png,.gif,.webp">
                                </label>
                            </div>
                            <div class="file-specs mt-2 text-end">
                                File size: Up to 5MB<br>
                                Optimal dimensions: 600x280px<br>
                                Supported file types: JPG, JPEG, PNG, GIF, WEBP
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Favicon Section -->
                <div class="upload-section">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <div class="upload-icon">
                                <svg width="24" height="24" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path d="M4 8V6a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-2"/>
                                    <circle cx="12" cy="12" r="3"/>
                                </svg>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h5 class="mb-2">Favicon</h5>
                                    <p class="mb-0">Add a favicon to represent the event website.</p>
                                </div>
                                <label class="btn btn-link text-primary">
                                    Upload
                                    <input type="file" class="d-none" accept=".ico,.png,.jpg,.jpeg">
                                </label>
                            </div>
                            <div class="file-specs mt-2 text-end">
                                File size: Up to 256KB<br>
                                Optimal dimensions: 16x16px<br>
                                Supported file types: PNG, JPG, JPEG, ICO
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Terms and Policies Section -->
                <div class="upload-section">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <div class="upload-icon">
                                <svg width="24" height="24" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
                                    <path d="M14 2v6h6M16 13H8M16 17H8M10 9H8"/>
                                </svg>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h5 class="mb-2">Terms and Policies</h5>
                                    <p class="mb-0">Link the Terms and Policies for events created in this Space</p>
                                </div>
                                <button type="button" class="btn btn-link text-primary" data-bs-toggle="modal" data-bs-target="#termsModal">
                                    Add
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Hide Branding Section -->
                <div class="upload-section">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <div class="upload-icon">
                                <svg width="24" height="24" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"/>
                                    <line x1="1" y1="1" x2="23" y2="23"/>
                                </svg>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h5 class="mb-2">Hide default branding message</h5>
                                    <p class="mb-0">Remove Powered by Zoho Backstage from anywhere on the event website pages, emails, and tickets.</p>
                                </div>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="brandingToggle">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- Terms and Policies Modal -->
        <div class="modal fade" id="termsModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Terms and Policies URL</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="termsUrl" class="form-label">URL</label>
                            <input type="url" class="form-control" id="termsUrl" placeholder="https://example.com/terms">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
            </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script>
        document.getElementById('profilePhotoInput').addEventListener('change', function(event) {
            var file = event.target.files[0];
            var reader = new FileReader();

            reader.onload = function(e) {
                var img = document.createElement('img');
                img.src = e.target.result;
                img.className = 'preview-image';

                var previewDiv = document.getElementById('imagePreview');
                previewDiv.innerHTML = '';
                previewDiv.appendChild(img);
            }

            reader.readAsDataURL(file);
        });
    </script>
</body>
</html>