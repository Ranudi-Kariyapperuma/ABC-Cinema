<%-- 
    Document   : payment
    Created on : Dec 2, 2024, 12:04:33 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/favicon-icon" href="favicon.png">
  <script src="https://www.paypal.com/sdk/js?client-id=AQes_iUtXuLtdYV7fYwWwa8TTIHKOdVUs-CFGErWJ-27e2hq30CO9nYiHFbr0-kuKLzyQmG4XJL5w10m&currency=USD"></script>
   <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

         
        <link rel="stylesheet" href="HomePage/homePageStyle.css">
  <title>Payment Form</title>
  <style>
      
    /* Dark background with animated gradient */
    
    html{
        
        animation: darkBackground 12s ease-in-out infinite;
    }
   body {
     font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      color: #fff;
      overflow: auto;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
      flex-direction: column;
      animation: darkBackground 12s ease-in-out infinite;
    }

    /* Animated black gradient background */
    @keyframes darkBackground {
      0% {
        background: #1e1e2f;
      }
      50% {
        background: #121212;
      }
      100% {
        background: #1e1e2f;
      }
      
    }

    /* Fade-in and smooth transition for container */
    .container {
    background: rgba(30, 30, 47, 0.9);
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 15px 60px rgba(0, 0, 0, 0.5);
    width: 500px;
    animation: fadeInUp 0.8s ease-out;
    transform: translateY(20px);
    margin: 100px auto;
    margin-top: 280px;
}


    /* Fade-in up animation */
    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    /* Header animations */
    h1 {
      text-align: center;
      margin-bottom: 1rem;
      font-size: 2rem;
      color: #ff4081; /* A pop of color for the title */
      opacity: 0;
      animation: slideIn 1s ease-out forwards;
      animation-delay: 0.5s;
    }

    /* Slide-in animation for header */
    @keyframes slideIn {
      from {
        opacity: 0;
        transform: translateX(-50px);
      }
      to {
        opacity: 1;
        transform: translateX(0);
      }
    }

    /* Payment icons container animation */
    #payment-icons {
      display: flex;
      justify-content: space-around;
      margin-bottom: 1rem;
      opacity: 0;
      animation: fadeInUp 1.2s ease-out forwards;
      animation-delay: 1s;
    }

    #payment-icons img {
      width: 50px;
      padding: 10px;
      border-radius: 8px;
      background-color: rgba(255, 255, 255, 0.2);
      cursor: pointer;
      transition: transform 0.4s ease, box-shadow 0.3s ease, background-color 0.3s ease;
    }

    #payment-icons img:hover {
      transform: translateY(-5px);
      box-shadow: 0 4px 15px rgba(0, 174, 255, 0.7);
      background-color: rgba(0, 174, 255, 0.2);
    }

    /* Payment form container animations */
    #form-container form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
      animation: fadeInUp 1s ease-out forwards;
      animation-delay: 2s;
    }

    /* Input field focus animation */
    input, select, button {
      padding: 0.75rem;
      border-radius: 10px;
      border: 1px solid #555;
      background: #2b2b3f;
      color: #fff;
      font-size: 1rem;
      box-shadow: inset 0 0 10px rgba(255, 255, 255, 0.1);
      transition: transform 0.3s ease;
    }

    input:focus, select:focus {
      transform: scale(1.05);
      outline: none;
      box-shadow: 0 0 10px rgba(0, 174, 255, 0.7);
    }

    button {
      background: #00c4cc;
      border: none;
      cursor: pointer;
      transition: transform 0.3s ease;
    }

    button:hover {
      transform: scale(1.05);
      box-shadow: 0 4px 15px rgba(0, 174, 255, 0.7);
    }
      
    
  </style>
</head>
<body>
    
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
         
                   
               <h1 style="margin-left: 10px; color: white;">ABC CINEMA</h1> <br>
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
    <h1>Payment Details</h1>
    
    <!-- Total Business Section -->
    <div id="total-business" style="margin-bottom: 1.5rem;">
      <h2 style="font-size: 1.25rem; color: #00c4cc; text-align: center;">Total Price: $500.00</h2>
      <p style="font-size: 1rem; color: #ccc; text-align: center;">The Total Cost For Your Payment</p>
    </div>

    <div id="payment-icons" style="display: flex; justify-content: space-around; margin-bottom: 1rem;">
      <img id="visa-icon" src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fencrypted-tbn3.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcR_FrTaaaGEk9eULQpb355SxtAFizG5jleBqp_1q8j2dgMxqfHT&psig=AOvVaw3xYC-idBJBJ9hSH9aS3mNh&ust=1733414493285000&source=images&cd=vfe&opi=89978449&ved=0CBMQjhxqFwoTCLi24aq-jooDFQAAAAAdAAAAABAE.svg" alt="Visa" style="width: 50px;" onclick="toggleForm('visa')">
      <img id="mastercard-icon" src="https://upload.wikimedia.org/wikipedia/commons/2/2a/Mastercard-logo.svg" alt="MasterCard" style="width: 50px;" onclick="toggleForm('mastercard')">
      <img id="paypal-icon" src="https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg" alt="PayPal" style="width: 50px;" onclick="toggleForm('paypal')">
    </div>
    
 
    <div id="form-container">
      <!-- Default Credit Card Form -->
      <form id="credit-card-form">
        <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
          <label for="card-number">Card Number</label>
          <input type="text" id="card-number" placeholder="1234 5678 9012 3456">
        </div>
        <div style="display: flex; justify-content: space-between; gap: 1rem; margin-bottom: 1rem;">
          <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
            <label for="expiry-month">Expiry Date</label>
            <div style="display: flex; gap: 0.5rem;">
              <select id="expiry-month">
                <option>MM</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
              </select>
              <select id="expiry-year">
                <option>YY</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
              </select>
            </div>
          </div>
          <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
            <label for="security-code">Security Code</label>
            <input type="text" id="security-code" placeholder="CVV">
          </div>
        </div>
        <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
          <label for="cardholder-name">Cardholder Name</label>
          <input type="text" id="cardholder-name" placeholder="Name on the Card">
        </div>
        <div style="display: flex; justify-content: center; margin-top: 1rem;">
          <button type="submit">Pay Now</button>
        </div>
      </form>
    </div>
  </div>
 
  <script>
    function toggleForm(method) {
      const formContainer = document.getElementById('form-container');
      const icons = {
        visa: document.getElementById('visa-icon'),
        mastercard: document.getElementById('mastercard-icon'),
        paypal: document.getElementById('paypal-icon')
      };

     
      Object.values(icons).forEach(icon => {
        icon.style.border = '1px solid #ccc';
      });

     
      icons[method].style.border = '2px solid #007BFF';

 
     if (method === 'paypal') {
  formContainer.innerHTML = `
    <div style="max-height: 200px; overflow-y: auto; padding: 1rem; background-color: rgba(255, 255, 255, 0.05); border-radius: 8px;">
    <div id="paypal-button-container" style="display: flex; justify-content: center; margin-top: 1rem;"></div>
  `;
  
  // Render PayPal button
  paypal.Buttons({
    createOrder: function (data, actions) {
      // Call your servlet to create an order
      return fetch('paymentServlet', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'action=createOrder',
      })
        .then(function (response) {
          return response.json();
        })
        .then(function (orderData) {
          if (orderData.status === 'success') {
            return orderData.orderId; // Pass order ID to PayPal
          } else {
            throw new Error(orderData.message);
          }
        });
    },
    onApprove: function (data, actions) {
      // Capture the order on the server side
      return fetch('paymentServlet', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'action=captureOrder&orderId=' + data.orderID,
      })
        .then(function (response) {
          if (response.ok) {
            // Redirect to success page
            window.location.href = 'paymentsuccess.jsp';
          } else {
            // Redirect to cancel page
            window.location.href = 'paymentcancel.jsp';
          }
        });
    },
    onError: function (err) {
      console.error('PayPal Buttons Error:', err);
    }
  }).render('#paypal-button-container'); // Render the PayPal button

     }
   
  
      else {
        formContainer.innerHTML = `
          <form id="credit-card-form">
            <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
              <label for="card-number">Card Number</label>
              <input type="text" id="card-number" placeholder="1234 5678 9012 3456">
            </div>
            <div style="display: flex; justify-content: space-between; gap: 1rem; margin-bottom: 1rem;">
              <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
                <label for="expiry-month">Expiry Date</label>
                <div style="display: flex; gap: 0.5rem;">
                  <select id="expiry-month">
                    <option>MM</option>
                    <option>01</option>
                    <option>02</option>
                    <option>03</option>
                    <option>04</option>
                    <option>05</option>
                    <option>06</option>
                    <option>07</option>
                    <option>08</option>
                    <option>09</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                  </select>
                  <select id="expiry-year">
                    <option>YY</option>
                    <option>23</option>
                    <option>24</option>
                    <option>25</option>
                    <option>26</option>
                    <option>27</option>
                  </select>
                </div>
              </div>
              <div style="display: flex; flex-direction: column; gap: 0.5rem; flex: 1;">
                <label for="security-code">Security Code</label>
                <input type="text" id="security-code" placeholder="CVV">
              </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
              <label for="cardholder-name">Cardholder Name</label>
              <input type="text" id="cardholder-name" placeholder="Name on the Card">
            </div>
            <div style="display: flex; justify-content: center; margin-top: 1rem;">
              <button type="submit">Pay Now</button>
            </div>
          </form>
        `;
      }
    }
    
  </script>
    
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


        
</body>
</html>
