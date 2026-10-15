package service;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebService;
import model.Etudiant;

@WebService
public interface EtudiantService {

    @WebMethod
    String ajouterEtudiant(Etudiant etudiant);

    @WebMethod
    String supprimerEtudiant(int id);

    @WebMethod
    Etudiant rechercherEtudiant(int id);

    @WebMethod
    List<Etudiant> afficherEtudiants();
}
