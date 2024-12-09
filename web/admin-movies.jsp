<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/favicon-icon" href="favicon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            transition: background-color 0.3s, color 0.3s;
        }

        .sidebar nav a:hover {
            background-color: #007bff;
            color: #ffffff;
        }

        .sidebar nav a[href="admin-movies.jsp"] {
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

        .main-content h1 {
            font-size: 36px;
        }

        .main-content h2 {
            font-size: 28px; 
            font-weight: normal;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #212529;
            color: #f8f9fa;
        }

        th, td {
            border: 1px solid #495057;
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #7993ad;
            color: #ffffff;
        }

        tr:hover {
            background-color: #495057;
        }

        .btn {
            background-color: #007bff;
            color: #ffffff;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 5px;
            border: none;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .btn-danger {
            background-color: #dc3545;
        }

        .btn-danger:hover {
            background-color: #c82333;
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

    <div class="main-content">
        <header>
            <h1>Add/Edit Movies</h1>
            <h2>ABC CINEMA</h2>
        </header>
        
            <div style="text-align: right; margin-bottom: 20px;">
                <a 
                    href="admin-addMovie.jsp"
                    class="add-movie-button"
                    style="
                        display: inline-block;
                        background-color: #007BFF; 
                        color: #FFFFFF; 
                        text-decoration: none; 
                        padding: 10px 20px; 
                        border-radius: 5px; 
                        font-size: 16px; 
                        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
                        transition: background-color 0.3s, transform 0.2s;">
                    + Add Movie
                </a>
            </div>

        <table>
            <thead>
                <tr>
                    <th>Movie Name</th>
                    <th>Description</th>
                    <th>Poster</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>The Queen's Gambit</td>
                    <td>Orphaned chess prodigy Beth Harmon fights addiction while aiming to become the world's greatest chess player during the Cold War.</td>
                    <td><img src="Images/png1.jpg" alt="The Queen's Gambit" style="width: 80px; height: auto; border-radius: 5px;"></td>
                    <td>
                        <button class="btn"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>Shrew's Nest</td>
                    <td>Montse, an agoraphobic woman, is forced to shelter her injured neighbor who crawls to her door, disrupting her solitary life.</td>
                    <td><img src="Images/png2.jpg" alt="Shrew's Nest" style="width: 80px; height: auto; border-radius: 5px;"></td>
                    <td>
                        <button class="btn"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>Manikarnika</td>
                    <td>Manikarnika, the queen of Jhansi, defies the East India Company’s attempt to annex her kingdom, sparking a fierce revolution against British rule.</td>
                    <td><img src="Images/png3.jpg" alt="Manikarnika" style="width: 80px; height: auto; border-radius: 5px;"></td>
                    <td>
                        <button class="btn"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <style>
        .add-movie-button:hover {
            background-color: #0056b3; 
            transform: scale(1.05); 
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        .add-movie-button:active {
            transform: scale(0.98); 
        }
    </style>

    <script>
        function toggleSidebar() {
            const sidebar = document.querySelector('.sidebar');
            sidebar.classList.toggle('retracted');
        }
    </script>
</body>
</html>
