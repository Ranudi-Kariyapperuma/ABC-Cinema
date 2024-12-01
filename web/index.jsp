<%-- 
    Document   : index.jsp
    Created on : Dec 1, 2024, 8:11:28 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--CDN link bootstrap!-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
         
        <link rel="stylesheet" href="HomePage/homePageStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema</title>
    </head>
    <body>
       <header>
                <h1>ABC CINEMA</h1>
                <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="movies.jsp">Movies</a></li>
                <li><a href="ticket.jsp">Book Tickets</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
                </nav>
    </header>
    <main>
        <h2>Now Showing</h2>
        <p>Explore the latest blockbuster movies and book your tickets online!</p>
        
         <!-- Carousel -->
        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="web/png1.jpg" class="d-block w-100" alt="Movie 1">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Blockbuster Movie 1</h5>
                        <p>Don't miss out on the action!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="web/png2.jpg" class="d-block w-100" alt="Movie 2">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Epic Drama Movie 2</h5>
                        <p>Experience the thrill!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="wen/png3.jpg" class="d-block w-100" alt="Movie 3">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Family Fun Movie 3</h5>
                        <p>Perfect for everyone!</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
     
        <%--<form action="homePageServlet" method="post">
            <label center for="username">Enter Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label center for="password"> Password:</label>
            <input type="password" name="password" value="" required /> <br><br>
            <button type="submit">Login</button>
        </form> --%>
        
    </main>
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

