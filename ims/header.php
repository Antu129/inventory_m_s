<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard-admin</title>
    <link rel="stylesheet" type="text/css" href="css/dashboard.css">
    <link rel="stylesheet" type="text/css" href="css/product.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0c7a3095b5.js"></script>
</head>
<body>
    <div id="dashboardMainContainer">
        <div class="dashboard_sidebar">
            <a href="dashboard.php" style="text-decoration: none;"><h3  class="dashboard_logo">IMS</h3></a>
            <div class="dashboard_sidebar_menus">
                <ul class="dashboard_menu_lists">
                    <a href="product.php">
                        <li><i class="fa fa-cube"></i>Product</li>
                    </a>
                    <a href="">
                        <li><i class="fa fa-plus"></i>Purchase</li>
                    </a>
                    <a href="">
                        <li><i class="fa fa-bar-chart"></i>Stock</li>
                    </a>
                    <a href="">
                        <li><i class="fa fa-plus-circle"></i>Sale</li>
                    </a>
                </ul>
            </div>
        </div>
        <div class="dashboard_content_container">
            <div class="dashboard_topNavv">
                <a href="dashboard.php"><i class="fa fa-home" aria-hidden="true" style="color:white;"></i></a>
                <a href="index.php" id="logoutBtn" style="float: right; font-size: 23px; color: rgb(188, 207, 243);; text-decoration: none;"><i class="fa fa-power-off"></i>Log-out</a>
            </div>
            <div class="dashboard_content">
                <div class="dashboard_content_main">