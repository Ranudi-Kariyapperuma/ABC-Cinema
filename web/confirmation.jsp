<%-- 
    Document   : confirmation
    Created on : Dec 2, 2024, 12:04:54 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Reservation Confirmation</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#000000; /*#f4f4f4*/
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color:black;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px black;
        }

        h1 {
            text-align: center;
            color:gray;
        }

        .reservation-details {
            background-color:gray;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .reservation-details h2 {
            margin-top: 0;
        }

        .reservation-details ul {
            list-style: none;
            padding: 0;
        }

        .reservation-details li {
            margin: 10px 0;
            font-size: 16px;
            
        }

        .actions {
            text-align: center;
            margin-top: 20px;
        }

        button {
            background-color: #FFFF00;
            color: black;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            margin: 0 10px;
            border-radius: 5px;
        }

        button:hover {
            background-color: yellow;
        }

        .back-home {
            text-align: center;
            margin-top: 20px;
        }

        .back-home a {
            color:black;
            text-decoration:black;
            font-size: 18px;
        }

        .back-home a:hover {
            text-decoration: underline;
        }
    </style>
  </head>
  
    <body>
         <div class="container">
        <h1>Reservation Confirmation</h1>
        <div class="reservation-details">
            <h2>Your Reservation Details</h2>
            <ul>
                <li><strong>Movie:</strong> </li>
                <li><strong>Date:</strong> </li>
                <li><strong>Time:</strong> </li>
                <li><strong>Seats:</strong> </li>
                <li><strong>Payment ID:</strong> </li>
            </ul>
        </div>

        <div class="actions">
            <button id="downloadTicketBtn">Download Ticket as PDF</button>
            <button id="printTicketBtn" onclick="window.print()">Print Ticket</button>
        </div>

        <div class="back-home">
            <a href="index.jsp">Back to Home Page</a>
        </div>
    </div>

    <script src="ticket.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    </body>
</html>

