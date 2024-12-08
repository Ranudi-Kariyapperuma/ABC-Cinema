<%-- 
    Document   : ticket
    Created on : Dec 1, 2024, 11:54:13 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="WEB-INF/book.css" rel="stylesheet" type="text/css">
        
        <title>Seat Booking</title>
       
        <style>
            html,body 
            {
                font-family:Arial, sans-serif;
                color:white;
                margin: 0;
                padding: 0;
                background-color:  #000000; /*#f4f4f4*/
                height:100%;
                display: flex;
                flex-direction: column;  
            }

           content-wrapper 
            {
                flex: 1; 
            }

            header 
            {
                background: #333;
                color: white;
                padding: 10px ;
                text-align: center;
            }

            .custom-navbar 
            {
                position: absolute; /* Makes the navbar float */
                top: 0; /* Ensures it stays at the top */
                width: 100%; /* Stretches across the width of the viewport */
                z-index: 1030; /* Keeps it above other elements */
                opacity: 0.9; /* Reduces opacity for a slightly transparent look */
                transition: opacity 0.3s ease-in-out; /* Adds a smooth opacity change effect */
            }

            nav ul 
            {
                list-style: none;
                padding: 0;
            }

            nav ul li 
            {
                display: inline;
                margin: 0 15px;
            }

            nav ul li a 
            {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }
            
            nav ul li a:hover 
            {
                color:yellow;
            }


            footer 
            {
                background: #333;
                color: white;
                text-align: center;
                padding: 5px ;
                position:relative;
                bottom: 0;
                width: 100%;
            }

            footer  a
            {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }

            footer  a:hover
            {
                color: yellow; 
            }

            /*Left bottom footer icon*/

            .footer-icons 
            {
                position: absolute; 
                bottom: 20px; /* Distance from the bottom of the footer */
                left: 40px; /* Distance from the left side */
                display: flex; 
                gap: 10px; 
            }

            .footer-icons .icon 
            {
                width: 24px; 
                height: 24px; 
                cursor: pointer; 
                transition: transform 0.3s ease-in-out; 
            }

            .footer-icons .icon:hover 
            {
                transform: scale(1.2); 
            }

            /*Right Bottom footer Icon*/

            .footer-icons2 
            {
                position: absolute; 
                bottom: 20px; /* Distance from the bottom of the footer */
                right: 40px; /* Distance from the left side */
                display: flex; 
                gap: 10px; 
            }

            .footer-icons2 .icon2 
            {
                width: 60px; 
                height: 90px; 
                cursor: pointer; 
                transition: transform 0.3s ease-in-out; 
                bottom: 20px; /* Distance from the bottom of the footer */
                left: 20px; 
            }

            .footer-icons2 .icon2:hover 
            {
                transform: scale(1.2);
            }

            /*.footer-icons .icon2
            {
                width: 50px; 
                height: 24px; 
                cursor: pointer; 
                transition: transform 0.3s ease-in-out;
            }*/

            .container 
            {
                width: 70%;
                max-width: 1200px;
                margin: 0 auto;
                text-align: center;
                padding-top: 50px;
            }
        
            .header 
            {
                font-size: 20px;
                margin: 0 auto;
                padding: 10px;
            }
        
            .p1 
            {
                font-size: 18px;
                font-weight: bold;
                margin: 20px 0;
            }
         
            .legend 
            {
                display: flex;
                justify-content: center;
                gap: 20px;
                margin-top: 20px;
                margin-left: -700px;
            }

            .legend span 
            {
                display: inline-flex;
                align-items: center;
            }

            .square 
            {
                height: 20px;
                width: 20px;
                margin-right: 8px;
            }
             
            table 
            {
                width: 100%;
                margin: 20px auto;
                text-align: center;
                border-spacing: 5px;
            }    
       
            .t1, .t2, .t3 
            {
                padding: 10px;
            }
            
            input.i
            {
                width: 40px;
                height: 40px;
                background-color: #d4d4d4;
                border: 1px solid #ccc;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
        
            hr 
            {
                width: 80%;
                margin: 10px auto;
            }
        
            p input 
            {
                background-color: deeppink;
                color: white;
                padding: 8px;
                margin: 0 10px;
                border: 0;
            }
                 
         
            button 
            {
                padding: 10px 20px;
                margin: 5px;
                border: none;
                border-radius: 5px;
                background-color: yellow;
                color: black;
                font-size: 16px;
                cursor: pointer;
            }

            button:hover 
            {
                background-color: lightgoldenrodyellow;
            }

            
            @media (max-width: 991px) 
            {
                .container 
                {
                    width: 90%;
                }
                
                html 
                {
                    font-size: 80%;
                }
                
                button
                {
                    font-size: 14px;
                }
            }

            @media (max-width: 768px) 
            {
                html 
                {
                    font-size: 70%;
                }
            
                .container 
                {
                    width: 100%;
                }
                
                button 
                {
                    font-size: 13px;
                    padding: 8px;
                }
            }

            @media (max-width: 450px) 
            {
                html 
                {
                    font-size: 55%;
                }
            
                .container 
                {
                    width: 100%;
                }
            
                table 
                {
                    width: 100%;
                }
            
                p input 
                {
                    padding: 5px;
                    margin: 5px;
                }
                
                button 
                {
                    font-size: 12px;
                }
            }
        </style>
    </head>
    
    <body>
        <div class="content-wrapper">
            <header>
                
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
                    <div class="container-fluid">
                        <h1>ABC CINEMA</h1>
                        
                        <br>
                        
                        <ul>
                            <li>
                                <a href="index.jsp">Home</a>
                            </li>
                            <li>
                                <a href="movie.jsp">Movies</a>
                            </li>
                            <li>
                                <a href="booking.jsp">Book Tickets</a>
                            </li>
                            <li>
                                <a href="feedback.jsp">Feedback</a>
                            </li>
                            <li>
                                <a href="contact.jsp">Contact Us</a>
                            </li>
                            <li>
                                <a href="adminLogin.jsp">Login</a>
                            </li>
                        </ul>
                    </nav>
                </header> 
             
             <br><br>

        <div class="container">
            <div class="header">
                <h3>Buy a ticket</h3>
                <h2>
                    Movie Name
                    <iframe frameborder="0" height="18" src="https://free.timeanddate.com/clock/i9msmh6n/n1925/ts1" style="margin-left:30px;" width="94"></iframe>
                </h2>
                <h3>
                    <i class="fa fa-map-marker" style="font-size:24px"></i>
                    Location
                </h3>
                <h3>
                    <i class="fa fa-calendar" style="font-size:24px"></i>
                    Date
                </h3>
                <h2>Digital 3D</h2>
            </div>
            
            <hr>
            
            <p class="p1">Showtime
                <input type="button" value="03:00 PM">
                <!--input type="button" value="07:45 PM"-->
            </p>
            
            <hr>
            
            <table id="seatTable">
                <tr>
                    <td class="t1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G6">
                    </td>
                    
                    <td class="t2">      
                        <input class="i" onclick="selectSeat(this)" type="button" value="G7">     
                        <input class="i" onclick="selectSeat(this)" type="button" value="G8">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G9">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G10">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G11">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G12">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G13">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G14">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G15">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G16">
                    </td>
     
                    <td class="t3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G17">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G18">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G19">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G20">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G21">
                        <input class="i" onclick="selectSeat(this)" type="button" value="G22">
                    </td>
                </tr>
    
                <tr>
                    <td class="t1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F6">
                    </td>
     
                    <td class="t2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F7">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F8">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F9">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F10">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F11">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F12">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F13">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F14">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F15">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F16">
                    </td>
     
                    <td class="t3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F17">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F18">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F19">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F20">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F21">
                        <input class="i" onclick="selectSeat(this)" type="button" value="F22">
                    </td>
    
                </tr>
    
                <tr>
                    <td class="t1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E6">
                    </td>
     
                    <td class="t2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E7">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E8">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E9">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E10">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E11">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E12">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E13">                  
                        <input class="i" onclick="selectSeat(this)" type="button" value="E14">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E15">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E16">
                    </td>
     
                    <td class="t3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E17">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E18">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E19">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E20">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E21">
                        <input class="i" onclick="selectSeat(this)" type="button" value="E22">
                    </td>
                </tr>
    
                <tr>
                    <td class="t1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D6">
                    </td>
                    
                    <td class="t2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D7">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D8">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D9">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D10">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D11">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D12">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D13">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D14">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D15">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D16">
                    </td>
     
                    <td class="t3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D17">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D18">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D19">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D20">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D21">
                        <input class="i" onclick="selectSeat(this)" type="button" value="D22">
                    </td>
                </tr>
    
                <tr>
                    <td class="t1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C6">
                    </td>
                    
                    <td class="t2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C7">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C8">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C9">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C10">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C12">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C13">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C14">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C15">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C16">
                    </td>
     
                    <td class="t3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C17">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C18">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C19">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C20">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C21">
                        <input class="i" onclick="selectSeat(this)" type="button" value="C22">
                    </td>
                </tr>
    
                <tr>
                    <td class="t1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B6">
                    </td>
      
                    <td class="t2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B7">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B8">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B9">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B10">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B11">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B12">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B13">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B14">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B15">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B16">
                    </td>
     
                    <td class="t3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B17">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B18">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B19">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B20">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B21">
                        <input class="i" onclick="selectSeat(this)" type="button" value="B22">
                    </td>
                </tr>
    
                <tr>
                    <td class="t1" style="margin-left:400px;"></td>
      
                    <td class="t2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A1">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A2">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A3">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A4">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A5">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A6">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A7">
                        <input class="i" onclick="selectSeat(this)" type="button" value="A8">
                    </td>
                </tr>
            </table>
   
            
            <br>
            <br>
            
            <p style="text-align: center; font-size: 20px;">Screen</p>
   
            <hr style="width: 50%; margin: 0 auto;">
   
            <br>
            <br>
   
            <div class="legend">
                <span>
                    <div class="square" style="background-color:gainsboro; margin-left: 750px;"></div>
                    Available
                </span>
    
                <span>
                    <div class="square" style="background-color: blue;"></div>
                    Selected
                </span>
    
                <span>
                    <div class="square" style="background-color: red;  cursor: not-allowed;"></div>
                    Reserved
                </span>
            </div>
   
            <br>
            <br>
   
            <hr>
   
            <p style="text-align: center; font-size: 18px; margin-top: 20px;">Adult
                <span>Rs.1800.00</span>
            </p>
            <p style="text-align: center; font-size: 18px; margin-top: 20px;">Child
                <span>Rs.1500.00</span>
            </p>
   
            <hr>
   
            <button>Back</button>

            <!-- Form to Redirect to Payment Page -->
            <form action="payment.jsp" method="post">
            
                <!-- Hidden fields to send data to payment.jsp -->
                <input type="hidden" id="selectedSeats" name="selectedSeats" value="">
                <input type="hidden" id="totalPrice" name="totalPrice" value="">

            <button>Continue</button>
        </div>
    </div>

    <footer>
            <!--
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
                <a href="" target="_blank">
                    <img src="Images/pngwing.com(2).png" alt="paypal" class="icon2"></a>
                <a href="" target="_blank">
                    <img src="Images/pngwing.com(3).png" alt="Safe payment gate way" class="icon2">
                </a>
            </div>
            -->
            <p>© 2024 ABC Cinema. All Rights Reserved.</p>
            <p>      
                <a href="pr.jsp">Privacy Policy</a>&ensp; &ensp; 
                <a href="contact.jsp">Contact Us</a>&ensp;&ensp; 
                <a href="tm.jsp">Terms and Conditions</a>&ensp; &ensp; 
            </p>
        </footer>
                    
        <!-- Bootstrap JS Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        
        <script>
            const seatPrices = 
            {
                adult: 1800,
                child: 1500
            };

            let selectedSeats = [];

            function selectSeat(button) 
            {
                const seatID = button.innerHTML;
    
                // Check if seat selected
                if (selectedSeats.some(seat => seat.seat === seatID)) 
                {
                    //remove it
                    selectedSeats = selectedSeats.filter(seat => seat.seat !== seatID);
                    button.classList.remove("selected");
            
                    // Change available color
                    button.style.backgroundColor = 'gainsboro';
                }
                else 
                {
                    const ageGroup = prompt("Enter 'adult' or 'child' for " + seatID);
        
                    if (ageGroup === "adult" || ageGroup === "child") 
                    {
                        selectedSeats.push({ seat: seatID, type: ageGroup });
            
                        button.classList.add("selected");
                        button.style.backgroundColor = 'blue';
                    } 
                    else 
                    {
                        alert("Invalid selection. Please enter 'adult' or 'child'.");
                    }
                }


                // Update hidden fields with selected seats and total price
                updateFormFields();
            }

            function updateFormFields() 
            {
                const seatField = document.getElementById("selectedSeats");
                const priceField = document.getElementById("totalPrice");

                // Calculate total price
                const totalPrice = selectedSeats.reduce((sum, seat) => 
                {
                    return sum + seatPrices[seat.type];
                }, 0);

                // Update form hidden fields
                seatField.value = JSON.stringify(selectedSeats);
                priceField.value = totalPrice;
            }

        </script>
    </body>
</html>
