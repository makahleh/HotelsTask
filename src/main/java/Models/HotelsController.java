/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Contollers;

import Models.HotelInfo;
import Models.Offers;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author makahleh
 */
@WebServlet(name = "HotelsController", urlPatterns = {"/HotelsController"})
public class HotelsController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  

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
        String id=request.getParameter("show");
        String destinationName=request.getParameter("destinationName");
        String minTripDate=request.getParameter("minTripDate");
            String maxTripDate=request.getParameter("maxTripDate");
        String lengthOfStay=request.getParameter("lengthOfStay");
        String minGuestRating=request.getParameter("minGuestRating");
        String maxGuestRating=request.getParameter("maxGuestRating");
        Offers offer=new Offers();
        List<HotelInfo> hotels= offer.fillHotelsList(destinationName,minTripDate,maxTripDate,lengthOfStay,minGuestRating,maxGuestRating);
        request.setAttribute("Hotels", hotels);
        
        if(id!=null)
        {
            if(! id.isEmpty())
            {
                HotelInfo hotel=offer.showHotelDetails(hotels,id);
                request.setAttribute("hotel", hotel);
                RequestDispatcher veiw=request.getRequestDispatcher("ShowHotelDetails.jsp");
                veiw.forward(request,response);
            }
        }
        RequestDispatcher veiw=request.getRequestDispatcher("Hotels.jsp");
         veiw.forward(request,response);
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
