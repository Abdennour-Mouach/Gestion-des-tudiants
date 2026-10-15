package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.EtudiantServiceImpl;

@WebServlet("/supprimer")
public class SupprimerEtudiantServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final EtudiantServiceImpl service = new EtudiantServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            service.supprimerEtudiant(id);
        } catch (NumberFormatException e) {
            // Si l'ID est incorrect, on retourne simplement à la liste.
        }
        response.sendRedirect("liste");
    }
}
