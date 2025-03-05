<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload Interface</title>
    <%@include file="All_CSS_js.jsp" %>

    <style> .preview-image {
                width: 120px;
                height: 120px;
                object-fit: cover;
                margin: 5px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            }


        #imagePreview {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .sidebar2 {
            width: 280px;
            min-height: 100vh;
        }
        .nav-link2 {
            color: #333;
        }
        .nav-link2:hover {
            background-color: blue;
        }
        .active1 {
            background-color: #4154f1 !important;
            color: white !important;
        }
       .content-area {
           flex-grow: 1;
           overflow-y: auto; /* Enables vertical scrolling */
           padding: 30px;
           max-height: calc(100vh - 60px); /* Adjust height dynamically */
       }
  .upload-zone {
            border: 2px dashed #dee2e6;
            border-radius: 8px;
            padding: 60px 20px;
            text-align: center;
            background-color: #f8f9fe;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .upload-zone:hover {
            border-color: #6c63ff;
            background-color: #f5f4ff;
        }
        .upload-icon {
            width: 64px;
            height: 64px;
            margin-bottom: 20px;
            color: #6c63ff;
            cursor: pointer;
        }
        .upload-btn {
            color: #6c63ff;
            border-color: #6c63ff;
        }
        .upload-btn:hover {
            background-color: #6c63ff;
            border-color: #6c63ff;
            color: white;
        }
        .file-info {
            color: #6b7280;
            font-size: 0.875rem;
        }
    </style>
</head>
<body>
    <%@include file="SidebarAndNavbarCreatEventManage.jsp" %>
    <aside class="sidebar2 border-end p-3">
        <nav class="nav flex-column gap-1">
            <a class="nav-link nav-link2" href="Manage-Event-info"><i class="bi bi-info-circle me-2"></i> Event Info</a>
            <a class="nav-link nav-link2" href="Manage-team"><i class="bi bi-people me-2"></i> Team</a>
            <a class="nav-link nav-link2" href="Manage-Speaker"><i class="bi bi-mic me-2"></i> Speakers</a>
            <a class="nav-link nav-link2 active active1" href="Manage-Eventlibrary"><i class="bi bi-book"></i> &nbsp;Event Library</a>
        </nav>
    </aside>
    <div class="content-area container-fluid py-3">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="#">Images</a>
                <div class="d-flex align-items-center">
                    <a href="#" class="nav-link me-3">Library Usage</a>
                    <button class="btn upload-btn" id="uploadButton">
                        <i class="bi bi-upload me-2"></i> Upload
                    </button>
              <input type="file" id="fileInput" style="display: none;" accept="image/*" multiple onchange="handleFileSelect(event)">
  </div>
            </div>
        </nav>
        <div class="container my-5">
            <div class="upload-zone" id="uploadZone">
                <svg class="upload-icon" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="arrowIcon">
                    <path d="M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="currentColor" stroke-width="2"/>
                    <path d="M12 8V16M8 12L12 8L16 12" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <h5 class="mb-3">Click here or drag and drop to upload an image</h5>
                <p class="file-info mb-1">File size: Up to 10MB</p>
                <p class="file-info">Supported file types: JPG, JPEG, PNG, GIF, WEBP</p>
            </div>
        </div>
     <div class="container my-5" id="previewSection" style="display: none;">
         <h4 class="mb-3">Image Previews</h4>
         <div class="card">
             <div class="card-body" id="previewContainer">
                 <!-- Multiple images will be appended here dynamically -->
             </div>
             <div class="card-footer bg-white">
                 <div class="d-flex justify-content-between align-items-center">
                     <span id="fileName" class="text-muted"></span>
                     <button class="btn btn-primary" onclick="uploadImages()">Confirm Upload</button>
                 </div>
             </div>
         </div>
     </div>
  <script>
        document.getElementById("uploadButton").addEventListener("click", function() {
            document.getElementById("fileInput").click();
        });
        document.getElementById("arrowIcon").addEventListener("click", function() {
            document.getElementById("fileInput").click();
        });
      function handleFileSelect(event) {
          const files = event.target.files; // Get all selected files
          const previewSection = document.getElementById("previewSection");
          const previewContainer = document.getElementById("previewContainer");

          previewContainer.innerHTML = ""; // Clear previous previews

          if (files.length > 0) {
              previewSection.style.display = "block"; // Show preview section

              Array.from(files).forEach((file) => {
                  const reader = new FileReader();
                  reader.onload = function(e) {
                      const imgElement = document.createElement("img");
                      imgElement.src = e.target.result;
                      imgElement.classList.add("preview-image"); // Add styling
                      previewContainer.appendChild(imgElement);
                  };
                  reader.readAsDataURL(file);
              });
          }
      }
  function uploadImage() {
            alert("Image upload functionality will be implemented here.");
        }




        document.addEventListener("DOMContentLoaded", function () {
            // Retrieve active link ID from localStorage
            const activeLinkId = localStorage.getItem("activeNavItem");

            if (activeLinkId) {
                setActiveNavItem(activeLinkId);
            } else {
                setActiveNavItem("dashboard-link"); // Default active link
            }

            // Attach click event listener to all nav links
            document.querySelectorAll(".nav-link1").forEach((link) => {
                link.addEventListener("click", function (event) {
                    const linkId = this.id;
                    localStorage.setItem("activeNavItem", linkId); // Store active link ID

                    // Allow normal navigation (no preventDefault)
                });
            });
        });

        function setActiveNavItem(clickedId) {
            // Remove active class from all nav items
            document.querySelectorAll(".nav-link1").forEach((item) => {
                item.classList.remove("active-nav-item");
            });

            // Add active class to the clicked item
            const clickedItem = document.getElementById(clickedId);
            if (clickedItem) {
                clickedItem.classList.add("active-nav-item");
            }
        }

    </script>
</body>
</html>
