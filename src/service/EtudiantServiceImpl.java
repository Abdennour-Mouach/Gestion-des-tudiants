package service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.jws.WebService;
import model.Etudiant;

@WebService(endpointInterface = "service.EtudiantService")
public class EtudiantServiceImpl implements EtudiantService {

    private static final List<Etudiant> etudiants = Collections.synchronizedList(new ArrayList<Etudiant>());

    static {
        etudiants.add(new Etudiant(1, "Arib", "Douaa", "douaa@example.com", "Genie Informatique"));
        etudiants.add(new Etudiant(2, "Alami", "Sara", "sara@example.com", "Genie Logiciel"));
    }

    @Override
    public String ajouterEtudiant(Etudiant etudiant) {
        if (etudiant == null) {
            return "Erreur : étudiant vide.";
        }

        synchronized (etudiants) {
            for (Etudiant e : etudiants) {
                if (e.getId() == etudiant.getId()) {
                    return "Erreur : un étudiant avec cet ID existe déjà.";
                }
            }
            etudiants.add(etudiant);
        }
        return "Étudiant ajouté avec succès.";
    }

    @Override
    public String supprimerEtudiant(int id) {
        synchronized (etudiants) {
            Iterator<Etudiant> iterator = etudiants.iterator();
            while (iterator.hasNext()) {
                Etudiant e = iterator.next();
                if (e.getId() == id) {
                    iterator.remove();
                    return "Étudiant supprimé avec succès.";
                }
            }
        }
        return "Étudiant introuvable.";
    }

    @Override
    public Etudiant rechercherEtudiant(int id) {
        synchronized (etudiants) {
            for (Etudiant e : etudiants) {
                if (e.getId() == id) {
                    return e;
                }
            }
        }
        return null;
    }

    @Override
    public List<Etudiant> afficherEtudiants() {
        synchronized (etudiants) {
            return new ArrayList<Etudiant>(etudiants);
        }
    }
}
