<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/favicon-icon" href="favicon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <title>ABC CINEMA Admin Login</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #2e2e2e; 
            color: #ffffff;
            display: flex;
        }

        .sidebar {
            width: 250px;
            background-color: #3c3c3c; 
            padding: 20px;
            height: 100vh;
            transition: width 0.3s, background-color 0.3s; 
            position: relative;
        }

        .sidebar.retracted {
            width: 60px;
            background-color: #2e2e2e;
        }

        .toggle-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #424242;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            color: #fff;
            font-size: 16px;
            display: block;
            z-index: 2;
        }

        .sidebar.retracted .content,
        .sidebar.retracted nav {
            display: none;
        }

        .sidebar img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .sidebar nav a {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: #ffffff;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            background-color: #525252;
            margin-bottom: 30px;
        }

        .sidebar.retracted nav a {
            display: none;
        }

        .sidebar.retracted nav a span {
            justify-content: center;
        }
        
        .sidebar nav a[href="dashboard.jsp"] {
            background-color: #007bff;
            color: #ffffff;
        }

        .main-content {
            flex: 1;
            padding: 20px;
        }

        .main-content header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .main-content .stats {
            display: flex;
            gap: 30px;
            justify-content: center;
            align-items: stretch;
            flex-wrap: wrap;
            padding-top: 200px;
        }

        .main-content .stats div {
            background-color: #424242;
            padding: 23px;
            border-radius: 10px;
            width: 300px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .main-content h1 {
            font-size: 36px;
        }

        .main-content h2 {
            font-size: 28px; 
            font-weight: normal;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <button class="toggle-btn" onclick="toggleSidebar()">
            <i class="fas fa-bars"></i>
        </button>
        <div class="content">
            <div style="text-align: center; margin-bottom: 20px;">
                <img src="Images/profile1.jpeg" alt="Admin Avatar">
                <p style="font-size: 18px; margin: 0;">Welcome to Admin</p>
            </div>
            <nav>
                <a href="#">
                    <i class="fas fa-home" style="margin-right: 10px;"></i> Home
                </a>
                <a href="dashboard.jsp">
                    <i class="fas fa-chart-bar" style="margin-right: 10px;"></i> Dashboard
                </a>
                <a href="admin-booking.jsp">
                    <i class="fas fa-calendar-alt" style="margin-right: 10px;"></i> Manage Booking
                </a>
                <a href="admin-movies.jsp">
                    <i class="fas fa-edit" style="margin-right: 10px;"></i> Add/Edit Movies
                </a>
                <a href="#">
                    <i class="fas fa-bell" style="margin-right: 10px;"></i> Notification
                </a>
                <a href="confirmation.jsp">
                    <i class="fas fa-bell" style="margin-right: 10px;"></i> Reservation
                </a>
            </nav>
        </div>
    </div>

    <div class="main-content">
        <header>
            <h1 style="margin: 0; font-size: 36px;">Dashboard</h1>
            <h2 style="margin: 0; font-size: 28px; font-weight: normal;">ABC CINEMA</h2>
        </header>
        <div class="stats">
            <div>
                <h2>Total Reservations</h2>
                <p>15</p>
            </div>
            <div>
                <h2>Total Revenue</h2>
                <p>3500</p>
            </div>
            <div>
                <h2>Average Feedback Ratings</h2>
                <p>⭐️⭐️⭐️⭐️☆</p>
            </div>
        </div>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.querySelector('.sidebar');
            sidebar.classList.toggle('retracted');
        }
    </script>
</body>
</html>