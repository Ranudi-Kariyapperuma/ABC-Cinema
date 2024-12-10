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
        
        .sidebar nav a[href="admin-booking.jsp"] {
            background-color: #007bff;
            color: #ffffff;
        }

        .sidebar.retracted nav a span {
            justify-content: center;
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
        </nav>
        </div>
    </div>

    <div class="main-content" style="padding: 20px; margin-left: 60px;">
        <header>
            <h1 style="margin: 0; font-size: 36px;">Manage Reservations</h1>
            <h2 style="margin: 0; font-size: 28px; font-weight: normal;">ABC CINEMA</h2>
        </header>

        <table style="width: 100%; border-collapse: collapse; margin: 10px 0; margin-top:160px; background-color: #212529; color: #f8f9fa;">
            <thead>
                <tr>
                    <th style="border: 1px solid #495057; padding: 15px; text-align: left; background-color: #7993ad; color: #ffffff;">ReservationID</th>
                    <th style="border: 1px solid #495057; padding: 15px; text-align: left; background-color: #7993ad; color: #ffffff;">Seat No</th>
                    <th style="border: 1px solid #495057; padding: 15px; text-align: left; background-color: #7993ad; color: #ffffff;">ShowTime</th>
                    <th style="border: 1px solid #495057; padding: 15px; text-align: left; background-color: #7993ad; color: #ffffff;">Payment Status</th>
                </tr>
            </thead>
            <tbody>
                <tr style="border: 1px solid #495057;">
                    <td style="border: 1px solid #495057; padding: 15px;">RES12345</td>
                    <td style="border: 1px solid #495057; padding: 15px;">A12</td>
                    <td style="border: 1px solid #495057; padding: 15px;">7:30 PM</td>
                    <td style="border: 1px solid #495057; padding: 15px;">Paid</td>
                    <td style="border: 1px solid #495057; padding: 15px; text-align: center;">
                        <button onclick="confirmCancel('RES12345')" style="background-color: #ff4d4d; color: white; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer;">Cancel</button>
                    </td>
                </tr>
                <tr style="border: 1px solid #495057;">
                    <td style="border: 1px solid #495057; padding: 15px;">RES12346</td>
                    <td style="border: 1px solid #495057; padding: 15px;">B15</td>
                    <td style="border: 1px solid #495057; padding: 15px;">9:00 PM</td>
                    <td style="border: 1px solid #495057; padding: 15px;">Pending</td>
                    <td style="border: 1px solid #495057; padding: 15px; text-align: center;">
                        <button onclick="confirmCancel('RES12346')" style="background-color: #ff4d4d; color: white; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer;">Cancel</button>
                    </td>
                </tr>
                <tr style="border: 1px solid #495057;">
                    <td style="border: 1px solid #495057; padding: 15px;">RES12347</td>
                    <td style="border: 1px solid #495057; padding: 15px;">C10</td>
                    <td style="border: 1px solid #495057; padding: 15px;">5:00 PM</td>
                    <td style="border: 1px solid #495057; padding: 15px;">Paid</td>
                    <td style="border: 1px solid #495057; padding: 15px; text-align: center;">
                        <button onclick="confirmCancel('RES12347')" style="background-color: #ff4d4d; color: white; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer;">Cancel</button>
                    </td>
                </tr>
            </tbody>

        </table>
    </div>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.querySelector('.sidebar');
            sidebar.classList.toggle('retracted');
        }
        
        function confirmCancel(reservationId) {
            const confirmation = confirm(`Are you sure you want to cancel reservation ID: ${reservationId}?`);
            if (confirmation) {
                alert(`Reservation ID: ${reservationId} has been canceled.`);
            }
        }
    </script>
</body>
</html>