<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>les conditions</title>
</head>
<body bgcolor="white">
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeurA" name="valeurA"></p>
    <p>Saisir la valeur B : <input type="text" id="inputValeurB" name="valeurB"></p>
    <p>Saisir la valeur C : <input type="text" id="inputValeurC" name="valeurC"></p> 
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur1" name="valeur1"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<%
    String valeurA = request.getParameter("valeurA");
    String valeurB = request.getParameter("valeurB");
    String valeurC = request.getParameter("valeurC");
    String valeur1 = request.getParameter("valeur1");
    String resultatExo1 = "";

    if (valeurA != null && valeurB != null && valeurC != null) {
        try {
            int intValeurA = Integer.parseInt(valeurA);
            int intValeurB = Integer.parseInt(valeurB);
            int intValeurC = Integer.parseInt(valeurC);

            // Comparaison de C entre A et B
            if (intValeurC > intValeurA && intValeurC < intValeurB) {
                resultatExo1 = "Oui, C est compris entre A et B.";
            } else {
                resultatExo1 = "Non, C n'est pas compris entre A et B.";
            }
        } catch (NumberFormatException e) {
            resultatExo1 = "Erreur de saisie, veuillez entrer des nombres valides.";
        }
    }
%>

<h2>Exercice 1 : Comparaison entre A,B,C</h2>
<%= resultatExo1 %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<%
    if (valeur1 != null) {
        try {
            int number = Integer.parseInt(valeur1);
            // Vérification pair ou impair
            if (number % 2 == 0) { 
%>
                <p>Le nombre est pair.</p>
<%
            } else { 
%>
                <p>Le nombre est impair.</p>
<%
            }
        } catch (NumberFormatException e) {
%>
            <p>Erreur de saisie, veuillez entrer un nombre valide.</p>
<%
        }
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>V
