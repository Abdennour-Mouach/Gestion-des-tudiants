<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Etudiant" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Rechercher un étudiant</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="header">
    <div><h1>Rechercher un étudiant</h1><p>Trouver une fiche par identifiant</p></div>
    <nav class="navbar">
        <a href="index.jsp">Accueil</a>
        <a href="ajouter.jsp">Ajouter</a>
        <a href="rechercher.jsp" class="active">Rechercher</a>
        <a href="liste">Liste</a>
    </nav>
</header>

<main class="container narrow">
    <section class="card search-box">
        <span class="badge">🔎 Recherche</span>
        <h2>Recherche par ID</h2>
        <form action="rechercher" method="get">
            <label for="id">Identifiant de l’étudiant</label>
            <input type="number" id="id" name="id" placeholder="Exemple : 1" required>
            <button type="submit" class="btn">Rechercher</button>
        </form>
    </section>

    <% Etudiant etudiant = (Etudiant) request.getAttribute("etudiant");
       String idRecherche = request.getParameter("id");
       if (etudiant != null) { %>
        <section class="result">
            <h3>Résultat trouvé</h3>
            <p><strong>ID :</strong> <%= etudiant.getId() %></p>
            <p><strong>Nom :</strong> <%= etudiant.getNom() %></p>
            <p><strong>Prénom :</strong> <%= etudiant.getPrenom() %></p>
            <p><strong>Email :</strong> <%= etudiant.getEmail() %></p>
            <p><strong>Filière :</strong> <%= etudiant.getFiliere() %></p>
        </section>
    <% } else if (idRecherche != null) { %>
        <div class="empty">Aucun étudiant trouvé avec cet identifiant.</div>
    <% } %>
</main>
<footer class="footer">Gestion des Étudiants — Interface Dark Blue</footer>
</body>
</html>
