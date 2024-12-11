### 1. Description de la fonctionnalité
- Afficher toutes les questions avec les réponses sélectionnées
- Code couleur: vert pour bonnes réponses, rouge pour mauvaises
- Maintenir l'affichage du score final

### 2. Solution technique
Modifications dans traitement.php:
```php
// Après la connexion, ajouter:
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

// Après le calcul du score, ajouter:
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

### 2. Description de la fonctionnalité
Nous voulons sauvegarder les scores des personnes qui ont réalisé le quizz et afficher les 10 meilleurs scores sur la page de résultats. Chaque score est composé d’un nom, d’un score et d’une date. Le même participant peut apparaître plusieurs fois. 

### 1. SQL pour nouvelle table
```sql
CREATE TABLE scores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    score INT NOT NULL,
    date_score DATETIME DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_score (score DESC)
);
```

### 3. Solution technique
// Modifications traitement.php

<?php
// En haut du fichier, avant le calcul du score
if (!isset($_GET['nom']) || empty($_GET['nom'])) {
    die("<div class='alert alert-danger'>Veuillez entrer votre nom</div>");
}
$nom = htmlspecialchars($_GET['nom']);

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
// ... code existant d'affichage du score et des réponses ...
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


// Modification quizz.php

<?php
// Modifier le formulaire pour ajouter le champ nom
echo "<form action='traitement.php' method='GET'>";
echo "<div class='form-group mb-3'>";
echo "<label for='nom'>Votre nom:</label>";
echo "<input type='text' class='form-control' id='nom' name='nom' required>";
echo "</div>";
// ... reste du code existant ...