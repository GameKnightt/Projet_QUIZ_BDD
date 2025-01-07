<html>
	<head>
		<meta content="text/html;charset=UTF-8" http-equiv="Content-Type">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>L'Automaquizz !</title>
	</head>
<body>

<!-- Zone d'entête -->
<div class="container my-5 p-5 bg-info">
<div style="text-align: right;">
	<img src="https://questionnaires.univ-nantes.fr/upload/surveys/737867/images/LOGO_PRINCIPAL_IUT_NANTES_CMJN.png" style="width:25%;float:right;"/>
</div>
<h1>Automaquizz !!!</h1>
<p>Testez vos connaissances sur les matières de GEII !</p>
</div>

<!-- Container pour ranger le formulaire (le quizz) -->
<div class="container my-3 p-5">
<?php
try {
	$connexion= new PDO("mysql:host=localhost;dbname=base_miniprojet","root", "");
	// pour bien gérer les accents qui viennent de la base :
	$connexion->query('SET NAMES utf8');
} catch (PDOException $e) {
	print "Erreur !: " . $e->getMessage() . "<br/>";
	die();
}

//On prépare ici la requête pour récupérer les questions
$requetes_questions = "SELECT matiere, enonce FROM questions";
$reponse_questions = $connexion->query($requetes_questions);

//On récupère également toutes les réponses disponibles
$requetes_answers = "SELECT id_question, reponse FROM reponses";
$reponse_answers = $connexion->query($requetes_answers);

$compteur_questions = 0;

//Pour chaque question, on stocke la matière et l'énoncé
while ($donnees = $reponse_questions->fetch())
{
	$matieres[$compteur_questions] = $donnees['matiere'];
	$enonces[$compteur_questions] = $donnees['enonce'];
	$compteur_questions++;
}
$reponse_questions->closeCursor();

//Pour chaque réponse, l'id de la questions associée et le texte
$compteur_reponses = 0;

while ($donnees = $reponse_answers->fetch())
{
	$id_questions[$compteur_reponses] = $donnees['id_question'];
	$answers[$compteur_reponses] = $donnees['reponse'];
	$compteur_reponses++;
}

$compteur_questions = 0;

//Puis pour finir on affiche le formulaire
echo "<form action='traitement.php' method='GET'>";
echo "<div class='form-group mb-3'>";
echo "<label for='nom'>Votre nom:</label>";
echo "<input type='text' class='form-control' id='nom' name='nom' required>";
echo "</div>";
foreach($matieres as $matiere)
{
	echo "<div class='container my-4 p-2 bg-warning'><h2>".$matiere."</h2></div>";
	echo "<div class='container my-4 p-2' style='border:1px black solid;'><p>".$enonces[$compteur_questions]."</p></div>";
	for($i=0;$i<count($answers);$i++)
	{
		if($id_questions[$i] == $compteur_questions + 1)
		{
			echo "<div class='form-check'>";
			echo "<input type='radio' class='form-check-input' name='reponse_".$compteur_questions."' value='".($i+1)."'>".$answers[$i];
			echo "</div>";
		}
	}

	$compteur_questions++;
}
echo "<br/>";
echo "<button type='submit' class='btn btn-danger'>Valider vos réponses</button>";
echo "</form>";

$connexion = null; // deconnexion
?>
</div>
</body>
</html>
<?php 
// Set page specific subtitle
$header_subtitle = "Le Super Quizz !";
include 'header.php';
?>