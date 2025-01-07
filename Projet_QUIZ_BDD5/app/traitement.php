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

// Initialize score
$score_final = 0;
$feedback = array();

// Group answers by question
$answers_by_question = array();
for($i = 0; $i < count($id_questions); $i++) {
    $question_id = $id_questions[$i];
    $answers_by_question[$question_id][] = array(
        'reponse' => $reponses[$i],
        'points' => $scores[$i],
        'index' => $i
    );
}

// Check answers and calculate score
for($q = 0; $q < $nb_que; $q++) {
    $champ = 'reponse_' . $q;
    if(isset($_GET[$champ])) {
        $selected_index = $_GET[$champ] - 1;
        $question_id = $q + 1;
        
        // Find if selected answer is correct
        foreach($answers_by_question[$question_id] as $answer) {
            if($answer['index'] == $selected_index) {
                if($answer['points'] == 1) {
                    $score_final++;
                    $feedback[$q] = array(
                        'correct' => true,
                        'message' => 'Bonne réponse !'
                    );
                } else {
                    $feedback[$q] = array(
                        'correct' => false,
                        'message' => 'Mauvaise réponse.'
                    );
                }
                break;
            }
        }
    }
}

echo "<p><strong>Votre score final est : ".$score_final." / ".$nb_que."</strong></p>";

// Après le calcul du score
$req_insert_score = $connexion->prepare("INSERT INTO scores (nom, score) VALUES (:nom, :score)");
$req_insert_score->execute([
    ':nom' => $nom,
    ':score' => $score_final
]);

// After showing the score
echo "<a href='perso.php?nom=" . urlencode($nom) . "' class='btn btn-primary'>Voir mon profil</a>";

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

// Display questions and answers with feedback
foreach($matieres as $index => $matiere) {
    echo "<div class='container my-4 p-2 bg-warning'><h2>" . $matiere . "</h2></div>";
    echo "<div class='container my-4 p-2' style='border:1px black solid;'>";
    echo "<p>" . $enonces[$index] . "</p>";
    
    if(isset($feedback[$index])) {
        $alert_class = $feedback[$index]['correct'] ? 'success' : 'danger';
        echo "<div class='alert alert-$alert_class'>" . $feedback[$index]['message'] . "</div>";
    }
    
    foreach($answers_by_question[$index + 1] as $answer) {
        $selected = isset($_GET['reponse_' . $index]) && ($_GET['reponse_' . $index] - 1) == $answer['index'];
        $class = '';
        
        if($selected) {
            $class = $answer['points'] == 1 ? 'text-success fw-bold' : 'text-danger fw-bold';
        } elseif($answer['points'] == 1) {
            $class = 'text-success';
        }
        
        echo "<p class='$class'>";
        echo $answer['reponse'];
        if($selected) {
            echo $answer['points'] == 1 ? ' ✓' : ' ✗';
        }
        echo "</p>";
    }
    echo "</div>";
}

echo "<h3>Score final : $score_final / $nb_que</h3>";

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
