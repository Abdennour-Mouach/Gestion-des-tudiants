<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Etudiant" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des étudiants</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="header">
    <div><h1>Liste des étudiants</h1><p>Visualisation et suppression des fiches</p></div>
    <nav class="navbar">
        <a href="index.jsp">Accueil</a>
        <a href="ajouter.jsp">Ajouter</a>
        <a href="rechercher.jsp">Rechercher</a>
        <a href="liste" class="active">Liste</a>
    </nav>
</header>

<main class="container">
    <section class="card table-box">
        <span class="badge">📊 Tableau</span>
        <h2>Étudiants enregistrés</h2>
        <div class="top-actions">
            <a href="ajouter.jsp" class="btn">➕ Ajouter</a>
            <a href="rechercher.jsp" class="btn btn-soft">🔎 Rechercher</a>
        </div>

        <% List<Etudiant> liste = (List<Etudiant>) request.getAttribute("liste");
           if (liste != null && !liste.isEmpty()) { %>
            <table>
                <tr>
                    <th>ID</th><th>Nom</th><th>Prénom</th><th>Email</th><th>Filière</th><th>Action</th>
                </tr>
                <% for (Etudiant e : liste) { %>
                    <tr>
                        <td><%= e.getId() %></td>
                        <td><%= e.getNom() %></td>
                        <td><%= e.getPrenom() %></td>
                        <td><%= e.getEmail() %></td>
                        <td><%= e.getFiliere() %></td>
                        <td>
                            <a class="delete-btn" href="supprimer?id=<%= e.getId() %>" onclick="return confirm('Voulez-vous vraiment supprimer cet étudiant ?');">Supprimer</a>
                        </td>
                    </tr>
                <% } %>
            </table>
        <% } else { %>
            <div class="empty">Aucun étudiant n’est enregistré pour le moment.</div>
        <% } %>
    </section>
</main>
<footer class="footer">Gestion des Étudiants — Interface Dark Blue</footer>
</body>
</html>
