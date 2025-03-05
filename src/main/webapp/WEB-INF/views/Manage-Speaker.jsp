<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Speakers Management</title>
          <%@include file="All_CSS_js.jsp" %>

    <style>
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
                <a class="nav-link nav-link2 d-flex align-items-center " href="Manage-Event-info">
                    <i class="bi bi-info-circle me-2"></i> Event Info
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center" href="Manage-team">
                    <i class="bi bi-people me-2"></i> Team
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center active active1" href="Manage-Speaker">
                    <i class="bi bi-mic me-2"></i> Speakers
                </a>
                <a class="nav-link nav-link2 d-flex align-items-center" href="Manage-Eventlibrary">
                    <i class="bi bi-book"></i> &nbsp;Event Library
                </a>
            </nav>
        </aside>

    <!-- Main Content -->
    <div class="container py-5">
        <h1 class="mb-4">Speakers</h1>

        <div class="text-center">
            <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Screenshot%202025-01-30%20183803-uMPPi0tOkREmYlk4XQmvJNsLpBxyWl.png" alt="Speaker Icon" class="speaker-icon">
            <h2 class="mt-4">Add Speaker</h2>
            <p class="text-muted mb-4">Get exciting speakers on board. Fill out their bio so that<br>website visitors can learn about them.</p>

            <!-- Button trigger offcanvas -->
            <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#addSpeakerCanvas">
                Add Speaker
            </button>
        </div>
    </div>

    <!-- Add Speaker Offcanvas -->
    <div class="offcanvas offcanvas-end" data-bs-backdrop="false" tabindex="-1" id="addSpeakerCanvas">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title">Add Speaker</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body">
            <form>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">First Name *</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Last Name</label>
                        <input type="text" class="form-control">
                    </div>
                </div>

                <div class="mb-3">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="featureSpeaker">
                        <label class="form-check-label" for="featureSpeaker">
                            Feature this speaker
                        </label>
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">Country</label>
                    <select class="form-select">
                        <option  selected disabled>Select country</option>
                        <option>India</option>
                        <option>USA</option>
                        <option>UK</option>
                        <option>Sri Lanka</option>
                        <option>Australia</option>
                        <option>South Africa</option>

                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Profile Photo</label>
                    <div class="card p-3">
                        <input type="file" class="form-control mb-2" id="profilePhotoInput" accept="image/*">
                        <small class="text-muted">File size: Up to 5MB</small>
                        <small class="text-muted">Supported file types: JPG, JPEG, PNG, GIF, WEBP</small>
                        <div id="imagePreview" class="mt-3 text-center"></div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Designation</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Company Name</label>
                        <input type="text" class="form-control">
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">Skills</label>
                    <input type="text" class="form-control">
                    <small class="text-muted">Use a comma (,) to separate multiple skills</small>
                </div>

                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <div class="btn-toolbar mb-2" role="toolbar">
                        <div class="btn-group me-2">
                            <button type="button" class="btn btn-outline-secondary">B</button>
                            <button type="button" class="btn btn-outline-secondary">I</button>
                            <button type="button" class="btn btn-outline-secondary">U</button>
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-outline-secondary">
                                <svg width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                    <textarea class="form-control" rows="6"></textarea>
                </div>

                <div class="mb-3">
                    <label class="form-label">Social Pages/Handles</label>
                    <div class="input-group mb-2">
                        <select class="form-select" style="max-width: 150px;">
                            <option selected>Twitter</option>
                            <option>Facebook</option>
                            <option>LinkedIn</option>
                        </select>
                        <input type="text" class="form-control" placeholder="https://www.twitter.com/xyz">
                        <button class="btn btn-primary" type="button">Add</button>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" placeholder="Enter phone number">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Alternative Phone</label>
                        <input type="tel" class="form-control" placeholder="Enter alternate telephone number">
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">Address</label>
                    <textarea class="form-control" rows="4"></textarea>
                </div>

                <div class="d-flex justify-content-between">
                    <button type="button" class="btn btn-light" data-bs-dismiss="offcanvas">Close</button>
                    <button type="submit" class="btn btn-primary">Add Speaker</button>
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