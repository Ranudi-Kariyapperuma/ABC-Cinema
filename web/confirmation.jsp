<%-- 
    Document   : confirmation
    Created on : Dec 2, 2024, 12:04:54 AM
    Author     : DELL
--%>

<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

         
        <link rel="stylesheet" href="HomePage/homePageStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Reservation Confirmation</title>
        <style>
       html,body {
            font-family: Arial, sans-serif;
            background-color:#000000; /*#f4f4f4*/
            margin: 0;
            padding: 0;
            color:white;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color:black;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px black;
            margin-top: 150px;
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
         
                   <h1 style="margin-left: 10px; color: white;">ABC CINEMA</h1><br>
                  <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                       <li><a href="index.jsp">Home</a></li>
                       <li><a href="movie.jsp">Movies</a></li>
                       <li><a href="booking.jsp">Book Tickets</a></li>
                       <li><a href="feedback.jsp">Feedback</a></li>
                       <li><a href="contact.jsp">Contact Us</a></li>
                       <li><a href="adminLogin.jsp">Login</a></li>
                       </ul>
                  </div>
                
                </nav>
         <div class="container">
        <h1>Reservation Confirmation</h1>
      
              <div class="container">
        <div class="reservation-details">
            <h1>Payment Successful!</h1>
            <div class="details-row">
                <p>Movie Name:
                    <span>Dummy Movie Name</span></p>
            </div>
            <div class="details-row">
                <p>Date:
                    <span><%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %></span></p>
            </div>
            <div class="details-row">
                <p>Time:
                <span><%= new java.text.SimpleDateFormat("HH:mm:ss").format(new java.util.Date()) %></span></p>
            </div>
            <div class="details-row">
                <p>Number of Seats:
                <span>
                    <% 
                        String selectedSeatsJson = (String) session.getAttribute("selectedSeats");
                        if (selectedSeatsJson != null) {
                            try {
                                Gson gson = new Gson();
                                List<Map<String, String>> selectedSeats = gson.fromJson(
                                    selectedSeatsJson, 
                                    new TypeToken <List<Map<String, String>>>(){}.getType()
                                );
                                for (Map<String, String> seat : selectedSeats) {
                                    out.println("<p>Seat: " + seat.get("seat") + " | Type: " + seat.get("type") + "</p>");
                                }
                            } catch (Exception e) {
                                out.println("<p>Error parsing seat data.</p>");
                            }
                        } else {
                            out.println("<p>No seats selected.</p>");
                        }
                    %>
                </span></p>
            </div>
            <div class="details-row">
                <p>Payment ID:
                <span>1001</span></p>
            </div>
            <h2>Thank you for booking with us!</h2>  
        </div>

        <div class="actions">
            <form action="sendPaymentConfirmation" method="post" class="email-form">
                <label for="paymentID">Enter Payment ID (Double confirmation):</label>
                 <input type="text" id="paymentID" name="paymentID" required>
                 <%-- <input type="hidden" name="email" value="${user.email}">
                <input type="hidden" name="message" value="Your reservation has been confirmed!">--%>
                <button type="submit">Send Email</button>
            </form>
            <button id="downloadTicketBtn">Download Ticket as PDF</button>
            <button id="printTicketBtn" onclick="window.print()">Print Ticket</button>
        </div>

        <div class="back-home">
            <a href="index.jsp">Back to Home Page</a>
        </div>
    </div>
        
            <footer>
        <div class="footer-icons">
        <a href="https://instagram.com" target="_blank">
            <img src="Images/icon1.png" alt="Instagram" class="icon">
        </a>
        <a href="https://facebook.com" target="_blank">
            <img src="Images/icon2.png" alt="Twitter" class="icon">
        </a>
        <a href="" target="_blank">
            <img src="Images/icon3.png" alt="Instagram" class="icon">
        </a>
        </div> 
            <div class="footer-icons2">
            <img src="Images/pngwing.com(2).png" alt="paypal" class="icon2">
            <img src="Images/pngwing.com(4).png" alt="payment gate ways" class="icon2">
        </div>
        <p>© 2024 ABC Cinema. All Rights Reserved.</p>
        <p>      <a href="pr.jsp">Privacy Policy</a>&ensp; &ensp; 
                <a href="contact.jsp">Contact Us</a>&ensp;&ensp; 
                <a href="tm.jsp">Terms and Conditions</a>&ensp; &ensp; 
            </p>
          
    </footer>       
        <!-- Bootstrap JS Bundle -->
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
   integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
   integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
 

    <script src="ticket.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script>
    // Check if the email status is present in the query string
    const urlParams = new URLSearchParams(window.location.search);
    const emailStatus = urlParams.get('emailStatus');

    if (emailStatus === 'success') {
        alert('Email sent successfully!');
    } else if (emailStatus === 'failure') {
        alert('Failed to send email. Please try again.');
    }
    </script>

         </body>
</html>

