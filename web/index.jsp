<%-- 
    Document   : index.jsp
    Created on : Dec 1, 2024, 8:11:28 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/favicon-icon" href="favicon.png">
        <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
         
        <link rel="stylesheet" href="HomePage/homePageStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema</title>
         
         
         </head>
    <body>
      <div class="content-wrapper">
        <header>
                
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-navbar">
                     <div class="container-fluid">
                         <h1>ABC CINEMA</h1><br>
                         <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="movie.jsp">Movies</a></li>
                <li><a href="booking.jsp">Book Tickets</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="adminLogin.jsp">Login</a></li>
                
            </ul>
                </nav>
    </header>
    <main>
        <br>
        
         <!-- Carousel -->
        <div id="carouselid" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="movieDetails.jsp">
                        <img src="Images/landscape-poster-1_orig.jpg" class="d-block w-100 custom-carousel-image" alt="Movie 1"></a>
                    <div class="carousel-caption d-none d-md-block">
                        
                    </div>
                </div>
                <div class="carousel-item">
                     <a href="movieDetails.jsp">
                         <img src="Images/landscape-poster-2_orig.jpg" class="d-block w-100 custom-carousel-image" alt="Movie 2"></a>
                    <div class="carousel-caption d-none d-md-block">
                                            </div>
                </div>
                <div class="carousel-item">
                     <a href="movieDetails.jsp">
                         <img src="Images/landscape-poster-3_orig.jpg" class="d-block w-100 custom-carousel-image" alt="Movie 3"></a>
                    <div class="carousel-caption d-none d-md-block">
                        
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselid" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselid" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
         <br>
         <h2>Now Showing</h2>
   
            <!-- Card Slider -->
        <div id="cardCarouselid2" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
               
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="d-flex justify-content-center">
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png1.jpg" class="card-img-top" alt="Movie 1">
                            <div class="card-body">
                                <h5 class="card-title">The Queen's Gambit</h5>
                                <p class="card-text">Set during the Cold War era, 
                                    orphaned chess prodigy Beth Harmon struggles with addiction in a quest to become the greatest chess player in the world.</p>
                                <a href="movieDetails.jsp" class="btn btn-primary">Buy Tickets</a>
                            </div>
                        </div>
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png2.jpg" class="card-img-top" alt="Movie 2">
                            <div class="card-body">
                                <h5 class="card-title">Shrew's Nest</h5>
                                <p class="card-text">Montse, an agoraphobic woman, prefers to stay inside her apartment all the time. 
                                    Her solitude is disturbed when she is forced to shelter their neighbour who injures himself and crawls up to her door.</p>
                                <a href="movieDetails.jsp" class="btn btn-primary">Buy Tickets</a>
                            </div>
                        </div>
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png3.jpg" class="card-img-top" alt="Movie 3">
                            <div class="card-body">
                                <h5 class="card-title">Manikarnika</h5>
                                <p class="card-text">Manikarnika, the wife of the king of Jhansi, refuses to bow down when the East India Company tries to annex the kingdom.
                                    Her rebellion soon turns into a fiery revolution against the British Raj.</p>
                                <a href="movieDetails.jsp" class="btn btn-primary">Buy Tickets</a>
                            </div>
                        </div>
                        
                         <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/landscape-poster-4_orig.jpg" class="card-img-top" alt="Movie 4">
                            <div class="card-body">
                                <h5 class="card-title">Ram-Leela</h5>
                                <p class="card-text">Ram and Leela love each other but cannot stay together as their families, Rajadi and Sanera, have been at war with each other for the past 500 years. 
                                    In the end, they both need to make a sacrifice.</p>
                                <a href="movieDetails.jsp" class="btn btn-primary">Buy Tickets</a>
                            </div>
                        </div>
                        
                    </div>
                </div
                
               
                <!-- Slide 2 -->
                <div class="carousel-item ">
                    <div class="d-flex justify-content-center">
                       
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png5.jpg" class="card-img-top" alt="Movie 5">
                            <div class="card-body">
                                <h5 class="card-title">Bhoot</h5>
                                <p class="card-text">Vishal and Swati, his wife, move into a highrise apartment where she gets possessed by a vengeful spirit. 
                                    However, Vishal must help rid his wife of the spirit possessing her before it is too late.</p>
                                <a href="movieDetails.jsp" class="btn btn-primary">Buy Tickets</a>
                            </div>
                        </div>
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png6.jpg" class="card-img-top" alt="Movie 6">
                            <div class="card-body">
                                <h5 class="card-title">Sardaar Gabbar Singh</h5>
                                <p class="card-text">The residents of Rathanpur are forced to face the wrath of Bhairav Singh who unceremoniously usurps their land.
                                    They find respite when Gabbar Singh, a brave policeman, takes on their oppressor.</p>
                                <a href="movieDetails.jsp" class="btn btn-primary">Buy Tickets</a>
                            </div>
                        </div>
                    </div>
                </div>
           
                    <button class="carousel-control-prev" type="button" data-bs-target="#cardCarouselid2" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#cardCarouselid2" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
            </div>
        </div>
            <br>
            <br>
           
            
     <!-- Vertical card set -->     
    <div class="container my-5">  
     
        <!-- Card 1 -->
    <div class="card mb-4 card-bg-orange">
        
        <div class="card-bodyv">
            <h1 class="card-title1">C1</h1>
            <p class="card-text">An epic journey awaits. Don't miss it!</p>
            <a href="booking.jsp" class="btn btn-primary">Showtime details</a>
        </div>
    </div>

        <!-- Card 2 -->
        <div class="card mb-4 card-bg-red">
            
            <div class="card-bodyv">
                <h1 class="card-title1">C2</h1>
                <p class="card-text">Experience the thrill and drama.</p>
                <a href="booking.jsp" class="btn btn-primary">Showtime details</a>
            </div>
        </div>

        <!-- Card 3 -->
            <div class="card mb-4 card-bg-yellow">
                
                <div class="card-bodyv">
                    <h1 class="card-title1">C3</h1>
                    <p class="card-text">Perfect for the entire family!</p>
                    <a href="booking.jsp" class="btn btn-primary">Showtime Details</a>
                </div>
            </div>
      
    </div>
    
     
        <%--<form action="homePageServlet" method="post">
            <label center for="username">Enter Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label center for="password"> Password:</label>
            <input type="password" name="password" value="" required /> <br><br>
            <button type="submit">Login</button>
        </form> --%>
        
    </main>
        
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
            <a href="" target="_blank">
                <img src="Images/pngwing.com(2).png" alt="paypal" class="icon2"></a>
            <a href="" target="_blank">
            <img src="Images/pngwing.com(3).png" alt="Safe payment gate way" class="icon2">
        </a>
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

