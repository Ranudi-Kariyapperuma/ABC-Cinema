/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import com.paypal.core.PayPalEnvironment;
import com.paypal.core.PayPalHttpClient;
import com.paypal.orders.AmountWithBreakdown;
import com.paypal.orders.Order;
import com.paypal.orders.OrderRequest;
import com.paypal.orders.OrdersCaptureRequest;
import com.paypal.orders.OrdersCreateRequest;
import com.paypal.orders.PurchaseUnitRequest;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/paymentServlet"})
public class paymentServlet extends HttpServlet {
    // Replace with your PayPal Client ID and Secret
    private static final String CLIENT_ID = "AQes_iUtXuLtdYV7fYwWwa8TTIHKOdVUs-CFGErWJ-27e2hq30CO9nYiHFbr0-kuKLzyQmG4XJL5w10m";
    private static final String CLIENT_SECRET = "ECJLEa8uVgBAxlscUI6VW6kx96fMK8aIzfyvIsFZUuRuFM3h2vp3F1avN6hEagadPl7G3G2y3eldTJZb";

    // PayPal HTTP client instance
    private static PayPalHttpClient client;

   @Override
    public void init() throws ServletException {
    super.init();
    try {
        PayPalEnvironment environment = new PayPalEnvironment.Sandbox(CLIENT_ID, CLIENT_SECRET);
        client = new PayPalHttpClient(environment);
        System.out.println("PayPal client initialized successfully.");
    } catch (Exception e) {
        System.err.println("PayPal client initialization failed: " + e.getMessage());
    }
}


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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet paymentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet paymentServlet at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
        String action = request.getParameter("action");

        if ("createOrder".equals(action)) {
          try {
               String orderId = createOrder();
               response.setContentType("application/json");
                response.getWriter().write("{\"status\": \"success\", \"orderId\": \"" + orderId + "\"}");
    } catch (Exception e) {
          e.printStackTrace();
           response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
           response.getWriter().write("{\"status\": \"error\", \"message\": \"" + e.getMessage() + "\"}");
    }

        } else if ("captureOrder".equals(action)) {
            String orderId = request.getParameter("orderId");
            try {
                captureOrder(orderId);

                // Redirect to payment success page
                response.sendRedirect("paymentsuccess.jsp");
            } catch (Exception e) {
                // Redirect to payment cancel page if something goes wrong
                response.sendRedirect("paymentancel.jsp");
            }
        } else {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("{\"status\": \"error\", \"message\": \"Invalid action.\"}");
        }
    }

    private String createOrder() throws IOException {
        OrderRequest orderRequest = new OrderRequest();
        orderRequest.checkoutPaymentIntent("CAPTURE");

        List<PurchaseUnitRequest> purchaseUnits = new ArrayList<>();
        PurchaseUnitRequest purchaseUnit = new PurchaseUnitRequest()
                .amountWithBreakdown(new AmountWithBreakdown().currencyCode("USD").value("6.21"));
        purchaseUnits.add(purchaseUnit);
        orderRequest.purchaseUnits(purchaseUnits);

        OrdersCreateRequest request = new OrdersCreateRequest().requestBody(orderRequest);
        Order order = client.execute(request).result();
        return order.id();
    }

   private void captureOrder(String orderId) throws IOException {
    OrdersCaptureRequest request = new OrdersCaptureRequest(orderId);
    try {
        client.execute(request);
        System.out.println("Order captured successfully: " + orderId);
    } catch (Exception e) {
        System.err.println("Error capturing order: " + e.getMessage());
        throw e;
    }
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
