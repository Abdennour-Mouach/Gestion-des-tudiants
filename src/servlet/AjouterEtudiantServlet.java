package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Etudiant;
import service.EtudiantServiceImpl;

@WebServlet("/ajouter")
public class AjouterEtudiantServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final EtudiantServiceImpl service = new EtudiantServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String email = request.getParameter("email");
            String filiere = request.getParameter("filiere");

            Etudiant etudiant = new Etudiant(id, nom, prenom, email, filiere);
            String message = service.ajouterEtudiant(etudiant);
            request.setAttribute("message", message);
        } catch (NumberFormatException e) {
            request.setAttribute("message", "Erreur : l'ID doit être un nombre.");
        }

        request.getRequestDispatcher("ajouter.jsp").forward(request, response);
    }
}
