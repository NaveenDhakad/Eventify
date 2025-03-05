<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zoho Backstage Signup</title>
 <%@include file = "All_CSS_js.jsp"%>
    <style>
        .bg-custom-dark {
            background-color: #0a1433;
        }
        .feature-list {
            list-style: none;
            padding-left: 0;
        }
        .feature-list li {
            padding: 8px 0;
            color: white;
        }
        .feature-list li::before {
            content: "✓";
            margin-right: 10px;
            color: #00ff00;
        }
    </style>
</head>
<body>
    <div class="container-fluid min-vh-100">
        <div class="row min-vh-100">
            <!-- Left Section -->
            <div class="col-md-5 bg-custom-dark p-5">
                <div class="mb-5">
                    <img src="images/EVENTIFY-.png" alt="Zoho Logo" class="img-fluid" style="max-width: 150px;">
                    <h6 style = "color:white ; margin-left : 30px !important  ;" >E v e n t i f y</h6>
                </div>

                <div class="text-white mb-5">

                    <h1 class="display-5 fw-bold mb-4">Everything you need<br>(and then some)</h1>

                    <ul class="feature-list mb-5">
                        <li>End-to-end event management</li>
                        <li>In-depth event analytics</li>
                        <li>0% commission event ticketing</li>
                        <li>Multichannel marketing tools</li>
                        <li>Touchless onsite solutions</li>
                    </ul>

                    <div class="mt-5">
                        <p class="text-white-50 mb-4">Trusted by</p>
                        <div class="d-flex gap-4">
                            <img src="images/amazon.png" alt="Amazon" class="img-fluid" style="max-height: 40px;">
                            <img src="images/nudge.png" alt="Discovery" class="img-fluid" style="max-height: 40px;">
                            <img src="images/levis-white.svg" alt="Levis" class="img-fluid" style="max-height: 40px;">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Section -->
            <div class="col-md-7 p-5">
                <div class="text-end mb-4">
                    <span>Have a Eventify Account?</span>
                    <a href="Signin" class="text-danger text-decoration-none ms-2">SIGN IN</a>
                </div>

                <div class="mb-5" style = "max-width : 70% ;  ">
                    <img src="images/backstage.svg" alt="Eventify Backstage" class="img-fluid mb-4" style="max-width: 200px;">
                    <h1 class="display-6 fw-bold mb-3" style = "font-size: 30px ; ">Get started with Eventify Backstage</h1>
                    <p class="text-muted">
                        All-in-one event management software to plan and run in-person,
                        virtual, and hybrid events with greater efficiency and impact.
                    </p>
                </div>

                <form   method = "post" action = "/Signup">
                    <div class="mb-3">
                        <label for="companyName" class="form-label">Company Name *</label>
                        <input type="text" class="form-control" name ="campanyName"  id="companyName" required style = "max-width : 70% ; border-radius : 2px solid black ">
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email *</label>
                        <input type="email" class="form-control" name = "email" id="email" required style = "max-width : 70% ; border-radius : 2px solid black ">
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password *</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name ="password"  id="password" required style = "max-width : 70% ; border-radius : 2px solid black ">
                            <span class="input-group-text">
                                <i class="bi bi-eye"></i>
                            </span>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone Number *</label>
                        <div class="input-group">
                            <span class="input-group-text">+91</span>
                            <input type="tel" class="form-control" name = "pnumber" id="phone" required style = "max-width : 70% ; border-radius : 2px solid black ">
                        </div>
                    </div>

                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="terms" required>
                        <label name = "agreement" class="form-check-label" for="terms">
                            I agree to the Terms of Service and Privacy Policy.
                        </label>
                    </div>

                    <button type="submit" class="btn btn-danger w-100 py-2" style = "max-width : 70% ; border-radius : 2px solid black ">SIGN UP NOW</button>
                </form>
            </div>
        </div>
    </div>


</body>
</html>