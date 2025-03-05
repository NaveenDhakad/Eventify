<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eventify : afterlogin</title>
    <%@include file = "All_CSS_js.jsp"%>
    <style>
    .right-image {
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        width: 40%;
        object-fit: cover;
    }

        body {
            background-color: #0a0b2e;
            min-height: 100vh;
            color: #000;
        }
        .setup-container {
            background: white;
            border-radius: 12px;
            padding: 2rem;
            max-width: 600px;

            margin: 2rem 2rem 5rem 2rem  ;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 1;
        }
        .logo {
            max-width: 120px;
            margin-bottom: 2rem;
        }
        .form-text {
            color: #666;
            margin-bottom: 1rem;
        }
        .create-btn {
            background-color: #4F46E5;
            border: none;
            padding: 0.5rem 2rem;
        }
        .create-btn:hover {
            background-color: #4338CA;
        }
        .decorative-circle {
            position: absolute;
            border-radius: 50%;
        }
        .circle-1 {
            width: 200px;
            height: 200px;
            background: #ff6b6b;
            top: 10%;
            right: 5%;
            opacity: 0.6;
        }
        .circle-2 {
            width: 150px;
            height: 150px;
            background: #4ecdc4;
            bottom: 20%;
            left: 5%;
            opacity: 0.6;
        }
        .circle-3 {
            width: 100px;
            height: 100px;
            background: #ffe66d;
            top: 40%;
            right: 15%;
            opacity: 0.6;
        }
        .icon-container {
            position: absolute;
        }
        .icon-calendar {
            top: 15%;
            right: 20%;
            color: white;
            font-size: 2rem;
        }
        .icon-star {
            bottom: 25%;
            left: 25%;
            color: white;
            font-size: 1.5rem;
        }
    </style>
</head>
<body>
<img src="images/EVENTIFY-.png" alt="logo" style = "height : 8% ; width : 8% ; margin-top : 20px ; margin-left : 15px ;   "/>
  <h6 style = "color:white ; margin-left : 30px !important  ;" >E v e n t i f y</h6>
    <!-- Decorative Background Elements -->
    <div class="decorative-circle circle-1"></div>
    <div class="decorative-circle circle-2"></div>
    <div class="decorative-circle circle-3"></div>

    <!-- Icons -->
    <div class="icon-container icon-calendar">
        <i class="bi bi-calendar"></i>
    </div>
    <div class="icon-container icon-star">
        <i class="bi bi-star"></i>
    </div>
    <img src="images/afterlogin1.jpg" alt="Image Description" class="right-image">

    <div class="container" >
        <div class="setup-container">

            <!-- Logo -->
            <div class="text-center mb-4">
                <h4 class="text-primary">Eventify Backstage</h4>
            </div>

            <!-- Setup Form -->
            <div class="text-center mb-4">
                <h1 class="h3 mb-3">Let's set up your portal!</h1>
                <p class="text-muted">
                    All the events you create will be added and listed under this organization.<br>
                    Lets start by adding some details
                </p>
            </div>

            <form>
                <div class="mb-4">
                    <label for="portalName" class="form-label">Portal Name:</label>
                    <input type="text" class="form-control" id="portalName" placeholder="Portal Name">
                    <div class="form-text">A name for a group of your events</div>
                </div>

                <div class="mb-4">
                    <label for="subdomain" class="form-label">Subdomain:</label>
                    <input type="text" class="form-control" id="subdomain" placeholder="Subdomain">
                    <div class="form-text">
                        Your events will be hosted on the following free and secure subdomain:<br>
                        https://<span class="subdomain-text">subdomain</span>.eventifybackstage.in
                    </div>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary create-btn">Create Portal</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>