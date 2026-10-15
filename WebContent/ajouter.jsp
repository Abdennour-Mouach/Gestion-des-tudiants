<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un étudiant</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="header">
    <div><h1>Ajouter un étudiant</h1><p>Créer une nouvelle fiche étudiant</p></div>
    <nav class="navbar">
        <a href="index.jsp">Accueil</a>
        <a href="ajouter.jsp" class="active">Ajouter</a>
        <a href="rechercher.jsp">Rechercher</a>
        <a href="liste">Liste</a>
    </nav>
</header>

<main class="container narrow">
    <section class="card form-box">
        <span class="badge">➕ Formulaire</span>
        <h2>Informations de l’étudiant</h2>

        <% String message = (String) request.getAttribute("message");
           if (message != null) { %>
            <div class="message"><%= message %></div>
        <% } %>

        <form action="ajouter" method="post">
            <label for="id">Identifiant</label>
            <input type="number" id="id" name="id" placeholder="Exemple : 1" required>

            <label for="nom">Nom</label>
            <input type="text" id="nom" name="nom" placeholder="Entrez le nom" required>

            <label for="prenom">Prénom</label>
            <input type="text" id="prenom" name="prenom" placeholder="Entrez le prénom" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="exemple@email.com" required>

            <label for="filiere">Filière</label>
            <input type="text" id="filiere" name="filiere" placeholder="Exemple : Génie Informatique" required>

            <button type="submit" class="btn">Enregistrer</button>
            <a href="liste" class="btn btn-soft">Voir la liste</a>
        </form>
    </section>
</main>
<footer class="footer">Gestion des Étudiants — Interface Dark Blue</footer>
</body>
</html>
