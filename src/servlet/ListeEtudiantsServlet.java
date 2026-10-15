package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Etudiant;
import service.EtudiantServiceImpl;

@WebServlet("/liste")
public class ListeEtudiantsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final EtudiantServiceImpl service = new EtudiantServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Etudiant> liste = service.afficherEtudiants();
        request.setAttribute("liste", liste);
        request.getRequestDispatcher("liste.jsp").forward(request, response);
    }
}
