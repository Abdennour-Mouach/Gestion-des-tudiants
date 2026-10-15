PROJET : GestionEtudiantsSOAP_DARKBLUE

Interface : noir + bleu foncé
Technologies : Java EE, JSP, Servlet, SOAP JAX-WS, Tomcat

IMPORTATION DANS ECLIPSE JEE :
1. File > Import > General > Existing Projects into Workspace
2. Choisir le dossier GestionEtudiantsSOAP_DARKBLUE
3. Properties > Targeted Runtimes > cocher Apache Tomcat v9.0
4. Project > Clean
5. Onglet Servers > Add and Remove > ajouter GestionEtudiantsSOAP_DARKBLUE
6. Start / Restart Tomcat

URL INTERFACE :
http://localhost:8080/GestionEtudiantsSOAP_DARKBLUE/index.jsp

SOAP :
Lancer src/service/ServeurSOAP.java avec Run As > Java Application
Puis ouvrir :
http://localhost:8081/EtudiantService?wsdl
