<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Bar</title>
    <%@include file = "All_CSS_js.jsp"%>

    <!-- Bootstrap CSS -->
    <style>
    .nav {
    position : sticky ;
    }
        .nav-link {
            color: #666;
            font-size: 0.9rem;
            padding: 0.5rem 1rem;
        }
        .navbar-brand img {
            height: 24px;
            margin-right: 8px;
        }
        .system-icons .nav-link {
            padding: 0.5rem;
        }
    </style>
</head>
<body >

<nav class="navbar navbar-expand-lg navbar-dark  bg-wheat border-bottom" >
    <div class="container-fluid">
        <!-- Left side navigation controls -->

        <!-- Brand -->
        <a class="navbar-brand ms-3" href="#">

            Accounts
        </a>

        <!-- Main navigation items -->

        <!-- Right side system icons -->
        <div class="system-icons d-flex align-items-center">
                <button class="btn  " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="offcanvasLeft">
               <i class="fa-solid fa-circle-user" style="color: white ; height : 30px ; width : 30px ; font-size : 2rem ; margin-right : 1rem ;  background-color : blue ;   "></i>
                           </button>

        </div>
    </div>
</nav>

<!-- Bootstrap JS and Popper.js -->
      <%@include file = "leftpopupmyaccount.jsp"%>


</body>
</html>