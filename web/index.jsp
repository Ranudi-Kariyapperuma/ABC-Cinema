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
                    <img src="Images/landscape-poster-1_orig.jpg" class="d-block w-100 custom-carousel-image" alt="Movie 1">
                    <div class="carousel-caption d-none d-md-block">
                        
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/landscape-poster-2_orig.jpg" class="d-block w-100 custom-carousel-image" alt="Movie 2">
                    <div class="carousel-caption d-none d-md-block">
                                            </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/landscape-poster-3_orig.jpg" class="d-block w-100 custom-carousel-image" alt="Movie 3">
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
         <p><h2>Now Showing</h2></p>
    <br>
            <!-- Card Slider -->
        <div id="cardCarouselid2" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
               
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="d-flex justify-content-center">
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png1.jpg" class="card-img-top" alt="Movie 1">
                            <div class="card-body">
                                <h5 class="card-title">Blockbuster Movie 1</h5>
                                <p class="card-text">An epic journey awaits. Don't miss it!</p>
                                <a href="#" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png2.jpg" class="card-img-top" alt="Movie 2">
                            <div class="card-body">
                                <h5 class="card-title">Drama Movie 2</h5>
                                <p class="card-text">Experience the thrill and drama.</p>
                                <a href="#" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png3.jpg" class="card-img-top" alt="Movie 3">
                            <div class="card-body">
                                <h5 class="card-title">Family Fun Movie 3</h5>
                                <p class="card-text">Perfect for the entire family!</p>
                                <a href="#" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                        
                         <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/landscape-poster-4_orig.jpg" class="card-img-top" alt="Movie 4">
                            <div class="card-body">
                                <h5 class="card-title">Comedy Movie 4</h5>
                                <p class="card-text">Laugh out loud with this comedy hit.</p>
                                <a href="#" class="btn btn-primary">Book Now</a>
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
                                <h5 class="card-title">Action Movie 5</h5>
                                <p class="card-text">Heart-pumping action awaits.</p>
                                <a href="#" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                        
                        <div class="card mx-2" style="width: 18rem;">
                            <img src="Images/png6.jpg" class="card-img-top" alt="Movie 6">
                            <div class="card-body">
                                <h5 class="card-title">Thriller Movie 6</h5>
                                <p class="card-text">Edge-of-the-seat suspense guaranteed.</p>
                                <a href="#" class="btn btn-primary">Book Now</a>
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

