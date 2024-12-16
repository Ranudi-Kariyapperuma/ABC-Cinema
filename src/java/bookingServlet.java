/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;

import static java.lang.System.out;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/bookingServlet"})
public class bookingServlet extends HttpServlet {

    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        out.println("Booking Servlet Called ");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookingServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet bookingServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       out.println("Booking Servlet Called");
        int showID ; // Retrieve 'showID' column
        String showDate = ""; // Retrieve 'showDate' column
        String showTime = "";
        String seatAvailabilityStr;

        String movie = request.getParameter("movie");
        out.println("this is the show id "+movie);

        try (Connection con = DBconnection.getConnection()) {

            if (con != null) {
                out.println("Connected to the database.");
                String sql = "SELECT * FROM `show` where showID = '" + movie + "'";
                String movename = "SELECT * FROM `movie` where movieID = '" + movie + "'";

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                PreparedStatement moveName = con.prepareStatement(movename);
                ResultSet moveNam = moveName.executeQuery();

                while (rs.next()) {
                    showID = rs.getInt("showID");
                    showDate = rs.getString("showDate");
                    showTime = rs.getString("showTime");
                    // Retrieve the 'seatAvailability' column as a JSON string
                    seatAvailabilityStr = rs.getString("seatAvailability");

                    // Convert the seatAvailability string (JSON) into a JSONArray
                    JSONArray seatAvailabilityJsonArray = new JSONArray(seatAvailabilityStr);

                    // Print the data for debugging
                    out.println("Show ID: " + showID);
                    out.println("Show Date: " + showDate);
                    out.println("showTime: " + showTime);
                    out.println("Seat Availability: " + seatAvailabilityJsonArray.toString());

                    // Sending data to the JSP as a request attribute
                    request.setAttribute("jsonData", seatAvailabilityJsonArray.toString());
                }
                while (moveNam.next()) {
                    String Title = moveNam.getString("Title");
                    String Genre = moveNam.getString("Genre");
                    String Description = moveNam.getString("Description");
                    out.println( "titile"+Title);

                    request.setAttribute("Title", Title);
                    request.setAttribute("Genre", Genre);
                    request.setAttribute("Description", Description);
                }
            } else {
                out.println("Database connection failed.");
            }


        } catch (SQLException e) {
            out.println("Error: " + e.getMessage());
        }
        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("showTime", showTime);
        request.setAttribute("showDate", showDate);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/booking.jsp");
        dispatcher.forward(request, response);
    }
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
      private List<Integer> parseMySQLArray(String arrayStr) {
        List<Integer> resultList = new ArrayList<>();

        // Remove curly braces and split the string into elements
        String[] elements = arrayStr.replace("{", "").replace("}", "").split(",");

        // Convert each element to an integer and add to the list
        for (String element : elements) {
            resultList.add(Integer.parseInt(element.trim())); // Convert each element to an integer
        }

        return resultList;
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
