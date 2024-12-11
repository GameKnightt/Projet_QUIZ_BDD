<html>
	<head>
		 <meta charset="UTF-8">
		 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>L'Automaquizz !</title>
	</head>

<body>

<!-- Zone d'entête -->

<div class="container my-5 p-5 bg-info">
<img src="https://questionnaires.univ-nantes.fr/upload/surveys/737867/images/LOGO_PRINCIPAL_IUT_NANTES_CMJN.png" style="width:25%;float:right;"/>
<h1>Automaquizz !!!</h1>
<p>Découvrez vos résultats !</p>
</div>

<div class="container my-3 p-5">
<?php
try {
	$connexion = new PDO("mysql:host=localhost;dbname=base_miniprojet;charset=utf8", "root", "");
    $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $connexion->exec("SET NAMES 'utf8'");
    $connexion->exec("SET CHARACTER SET utf8");
    $connexion->exec("SET SESSION collation_connection = 'utf8_general_ci'");
} catch (PDOException $e) {
	print "Erreur !: " . $e->getMessage() . "<br/>";
	die();
}

// En haut du fichier, avant le calcul du score
if (!isset($_GET['nom']) || empty($_GET['nom'])) {
    die("<div class='alert alert-danger'>Veuillez entrer votre nom</div>");
}
$nom = htmlspecialchars($_GET['nom']);

//On récupère le nombre de réponses dans la BDD

$req_nb_rep = "SELECT COUNT(*) AS nb_rep FROM reponses";
$rep_nb_rep = $connexion->query($req_nb_rep);

$donnees = $rep_nb_rep->fetch();
$nb_rep = $donnees['nb_rep'];
$rep_nb_rep->closeCursor();

//On récupère aussi le nombre de questions dans la BDD

$req_nb_que = "SELECT COUNT(*) AS nb_que FROM questions";
$rep_nb_que = $connexion->query($req_nb_que);

$donnees = $rep_nb_que->fetch();
$nb_que = $donnees['nb_que'];
$rep_nb_que->closeCursor();

//Enfin, on récupère le score associé à chaque réponse (1 si bonne, 0 si mauvaise)

$req_scores = "SELECT points FROM reponses";
$rep_scores = $connexion->query($req_scores);
$compteur_reponses=0;

while ($donnees = $rep_scores->fetch())
{
	$scores[$compteur_reponses] = $donnees['points'];
	$compteur_reponses++;
}
$rep_scores->closeCursor();

//On récupère les questions et les réponses
$req_questions = "SELECT matiere, enonce FROM questions";
$rep_questions = $connexion->query($req_questions);

$req_reponses = "SELECT id_question, reponse FROM reponses";
$rep_reponses = $connexion->query($req_reponses);

// Stockage des questions
$compteur_questions = 0;
while ($donnees = $rep_questions->fetch()) {
    $matieres[$compteur_questions] = $donnees['matiere'];
    $enonces[$compteur_questions] = $donnees['enonce'];
    $compteur_questions++;
}

// Stockage des réponses
$compteur_reponses = 0;
while ($donnees = $rep_reponses->fetch()) {
    $id_questions[$compteur_reponses] = $donnees['id_question'];
    $reponses[$compteur_reponses] = $donnees['reponse'];
    $compteur_reponses++;
}

//On calcule ici le score de la personne ; pour chaque réponse sélectionnée, on ajoute les points associés

$score_final = 0;

for($i=0;$i<$nb_rep;$i++)
{
	$champ = 'reponse_'.($i+1);
	if(isset($_GET[$champ]))
	{
		$score_final += $scores[$i];
	}
}

echo "<p><strong>Votre score final est : ".$score_final." / ".$nb_que."</strong></p>";

// Après le calcul du score
$req_insert_score = $connexion->prepare("INSERT INTO scores (nom, score) VALUES (:nom, :score)");
$req_insert_score->execute([
    ':nom' => $nom,
    ':score' => $score_final
]);

// Récupération du top 10
$req_top10 = "SELECT nom, score, date_score 
              FROM scores 
              ORDER BY score DESC, date_score DESC 
              LIMIT 10";
$rep_top10 = $connexion->query($req_top10);

// Affichage des résultats dans un tableau à droite
echo "<div class='row'>";
echo "<div class='col-md-8'>"; 

//Pour finir, on affiche un message personnalisé en fonction du score
if($score_final == $nb_que)
{
    echo "<p class='text-left'>Impressionnant, un sans-faute !</p>";
}
elseif($score_final > ($nb_que/2))
{
    echo "<p class='text-left'>Pas mal du tout !</p>";
}
elseif($score_final == 0)
{
    echo "<p class='text-leftcenter'>Avez-vous cliqué au hasard ? Il aurait peut-être fallu...</p>";
}
else
{
    echo "<p class='text-left'>Il y a encore du travail à faire.</p>";
}

// Affichage des questions et réponses
$compteur_questions = 0;
foreach($matieres as $matiere) {
    echo "<div class='container my-4 p-2 bg-warning'><h2>".$matiere."</h2></div>";
    echo "<div class='container my-4 p-2' style='border:1px black solid;'>";
    echo "<p>".$enonces[$compteur_questions]."</p>";
    
    for($i=0; $i<count($reponses); $i++) {
        if($id_questions[$i] == $compteur_questions + 1) {
            $champ = 'reponse_'.($i+1);
            $estSelectionnee = isset($_GET[$champ]);
            $estBonne = ($scores[$i] == 1);
            
            if($estSelectionnee) {
                $couleur = $estBonne ? 'success' : 'danger';
                echo "<div class='alert alert-$couleur'>";
                echo $reponses[$i];
                echo $estBonne ? " ✓" : " ✗";
                echo "</div>";
            }
        }
    }
    echo "</div>";
    $compteur_questions++;
}

echo "</div>";

echo "<div class='col-md-4'>";
echo "<div class='card'>";
echo "<div class='card-header bg-primary text-white'><h3>Top 10 des scores</h3></div>";
echo "<div class='card-body'>";
echo "<table class='table table-striped'>";
echo "<thead><tr><th>Nom</th><th>Score</th><th>Date</th></tr></thead><tbody>";
while ($score = $rep_top10->fetch()) {
    echo "<tr>";
    echo "<td>".htmlspecialchars($score['nom'])."</td>";
    echo "<td>".$score['score']."</td>";
    echo "<td>".date('d/m/Y H:i', strtotime($score['date_score']))."</td>";
    echo "</tr>";
}
echo "</tbody></table>";
echo "</div></div></div>";
echo "</div>";

echo "</div>"; // Fermeture du container après le message

$connexion = null; // deconnexion
?>
</body>
</html>