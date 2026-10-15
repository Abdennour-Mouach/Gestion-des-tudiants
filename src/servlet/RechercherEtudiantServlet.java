package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Etudiant;
import service.EtudiantServiceImpl;

@WebServlet("/rechercher")
public class RechercherEtudiantServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final EtudiantServiceImpl service = new EtudiantServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Etudiant etudiant = service.rechercherEtudiant(id);
            request.setAttribute("etudiant", etudiant);
            if (etudiant == null) {
                request.setAttribute("message", "Aucun étudiant trouvé avec cet ID.");
            }
        } catch (NumberFormatException e) {
            request.setAttribute("message", "Erreur : l'ID doit être un nombre.");
        }

        request.getRequestDispatcher("rechercher.jsp").forward(request, response);
    }
}
