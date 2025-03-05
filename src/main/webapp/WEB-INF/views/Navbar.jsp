<style>
 .btn.custom-hover:hover {
    background-color: white !important;
    color: black !important;
  }
 .navbar {
    position: sticky; /* Sticks to the top when scrolling */
    /* Sticks at the top of the viewport */
    background-color: white;
    color: white;
    height : 70px ;
    padding: 15px 20px;
    z-index: 1000;
  }      .modal-backdrop {
    opacity: 0.5 !important; /* Makes it more transparent */
  }
  /* Custom CSS to shift the modal down */
  .modal-dialog {
    margin-top: 70px; /* Adjust the value to your preference */
  }
</style>

<nav class="navbar navbar-expand-lg navbar-light ">
  <div class="container-fluid ">
    <img src="images/EVENTIFY .png" alt="logo" style = "height : 10% ; width : 10% "/>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AddNote.jsp">Plan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-disabled="true" href="All_notes.jsp">Pricing</a>
        </li>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary btn-no-border bg-white text-black" style="border: none;" data-bs-toggle="modal" data-bs-target="#exampleModal">
          All Product
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="false" data-bs-keyboard= "true">
          <div class="modal-dialog modal-fullscreen" style="max-width: 100%; height: 70vh;">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                This is the body
              </div>
            </div>
          </div>
        </div>
      </ul>
    </div>

    <!-- Search form aligned to the left -->
    <form class="d-flex ms-0" role="search">
      <input class="form-control me-2" style = "border : 1px solid black  ; "type="search" placeholder="Search" aria-label="Search">
    </form>
       <a href="Signin" style="font-weight: bold;" class="btn btn-danger">Sign In</a>
          <a href="Signup" style="font-weight: bold;" class="btn ml-2 custom-hover" style = "background-color : white !important ; ">Get Started</a>
  </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

