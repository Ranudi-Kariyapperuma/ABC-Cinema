<%-- 
    Document   : payment
    Created on : Dec 2, 2024, 12:04:33 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Form</title>
  <style>
    /* Dark background with animated gradient */
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background: #000;
      color: #fff;
      overflow: hidden;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
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
      box-shadow: 0 15px 50px rgba(0, 0, 0, 0.5);
      width: 400px;
      animation: fadeInUp 0.8s ease-out;
      transform: translateY(20px);
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

      // Reset icon borders
      Object.values(icons).forEach(icon => {
        icon.style.border = '1px solid #ccc';
      });

      // Highlight selected icon
      icons[method].style.border = '2px solid #007BFF';

      if (method === 'paypal') {
        formContainer.innerHTML = `
          <form id="paypal-form">
            <div style="display: flex; flex-direction: column; gap: 0.5rem; margin-bottom: 1rem;">
              <label for="paypal-email">PayPal Email</label>
              <input type="email" id="paypal-email" placeholder="Your PayPal Email">
            </div>
            <div style="display: flex; justify-content: center; margin-top: 1rem;">
              <button type="submit">Pay with PayPal</button>
            </div>
          </form>
        `;
      } else {
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
</body>
</html>
