<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Gestion des Étudiants - Dark Blue</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="header">
    <div class="brand">
        <h1>Student Control</h1>
        <p>Application Java EE avec JSP, Servlet et Web Service SOAP</p>
    </div>
    <nav class="navbar">
        <a href="index.jsp" class="active">Accueil</a>
        <a href="ajouter.jsp">Ajouter</a>
        <a href="rechercher.jsp">Rechercher</a>
        <a href="liste">Liste</a>
    </nav>
</header>

<main class="container">
    <section class="hero">
        <div class="hero-main">
            <span class="badge">🎓 SOAP • JAX-WS • Eclipse JEE</span>
            <h2>Une interface sombre pour <span>gérer les étudiants</span></h2>
            <p>
                Cette version propose un design noir et bleu foncé, plus moderne et différent.
                Elle permet d’ajouter, rechercher, afficher et supprimer les étudiants à travers
                des pages JSP connectées aux servlets et au service SOAP.
            </p>
            <div class="actions">
                <a class="btn btn-primary" href="ajouter.jsp">➕ Ajouter un étudiant</a>
                <a class="btn btn-soft" href="liste">📋 Voir la liste</a>
            </div>
        </div>

        <aside class="side-panel">
            <h3>Résumé</h3>
            <div class="stat"><span>Projet</span><strong>Java EE</strong></div>
            <div class="stat"><span>Service</span><strong>SOAP</strong></div>
            <div class="stat"><span>Interface</span><strong>JSP</strong></div>
        </aside>
    </section>

    <section class="features">
        <div class="feature">
            <div class="icon">➕</div>
            <h3>Ajouter</h3>
            <p>Créer une fiche étudiant avec l’identifiant, le nom, le prénom, l’email et la filière.</p>
        </div>
        <div class="feature">
            <div class="icon">🔎</div>
            <h3>Rechercher</h3>
            <p>Retrouver rapidement un étudiant à partir de son identifiant.</p>
        </div>
        <div class="feature">
            <div class="icon">📊</div>
            <h3>Afficher</h3>
            <p>Visualiser les étudiants dans un tableau propre et lisible.</p>
        </div>
    </section>
</main>

<footer class="footer">GestionEtudiantsSOAP_DARKBLUE — Eclipse JEE / Tomcat</footer>

</body>
</html>
