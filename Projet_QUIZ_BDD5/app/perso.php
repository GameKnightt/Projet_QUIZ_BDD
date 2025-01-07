<?php
// perso.php
session_start();

// Get user name from URL parameter FIRST
if (!isset($_GET['nom']) || empty($_GET['nom'])) {
    die("<div class='alert alert-danger'>Nom d'utilisateur manquant</div>");
}
$nom = htmlspecialchars($_GET['nom']);

try {
    $connexion = new PDO("mysql:host=localhost;dbname=base_miniprojet;charset=utf8", "root", "");
    $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}

// Traitement de la suppression d'un score
if (isset($_POST['delete_score']) && isset($_POST['score_id'])) {
    $req_delete = $connexion->prepare("DELETE FROM scores WHERE id = ? AND nom = ?");
    $req_delete->execute([$_POST['score_id'], $nom]);
}

// Traitement de la suppression de toutes les réponses
if (isset($_POST['delete_all_responses'])) {
    $req_delete = $connexion->prepare("DELETE FROM user_responses WHERE nom = ?");
    $req_delete->execute([$nom]);
}

// Handle photo upload
$photo_path = "photos/" . $nom . ".jpg";
if (isset($_FILES['photo']) && $_FILES['photo']['error'] === 0) {
    move_uploaded_file($_FILES['photo']['tmp_name'], $photo_path);
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page Personnelle - <?php echo $nom; ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container my-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body text-center">
                        <?php if (file_exists($photo_path)): ?>
                            <img src="<?php echo $photo_path; ?>" class="img-fluid rounded-circle mb-3" style="max-width: 200px;">
                        <?php else: ?>
                            <form method="POST" enctype="multipart/form-data">
                                <input type="file" name="photo" class="form-control mb-2">
                                <button type="submit" class="btn btn-primary">Télécharger la photo</button>
                            </form>
                        <?php endif; ?>
                        <h3><?php echo $nom; ?></h3>
                    </div>
                </div>
            </div>
            
            <div class="col-md-8">
                <h2>Historique des scores</h2>
                <?php
                $req_scores = $connexion->prepare("SELECT id, score, date_score FROM scores WHERE nom = ? ORDER BY date_score DESC");
                $req_scores->execute([$nom]);
                ?>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Score</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php while ($score = $req_scores->fetch()): ?>
                        <tr>
                            <td><?php echo date('d/m/Y H:i', strtotime($score['date_score'])); ?></td>
                            <td><?php echo $score['score']; ?></td>
                            <td>
                                <form method="POST" style="display: inline" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer ce score ?');">
                                    <input type="hidden" name="score_id" value="<?php echo $score['id']; ?>">
                                    <button type="submit" name="delete_score" class="btn btn-danger btn-sm">Supprimer</button>
                                </form>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>

                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2>Dernières réponses</h2>
                    <form method="POST" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer toutes vos réponses ?');">
                        <button type="submit" name="delete_all_responses" class="btn btn-danger">
                            Supprimer toutes les réponses
                        </button>
                    </form>
                </div>
                <?php
                // Modify the SQL query
                $req_responses = $connexion->prepare("
                    SELECT ur.reponse_id, 
                           ur.date_reponse, 
                           ur.is_correct,
                           q.enonce,
                           q.matiere,
                           r.reponse
                    FROM user_responses ur
                    JOIN questions q ON ur.question_id = q.id
                    JOIN reponses r ON ur.reponse_id = r.id
                    WHERE ur.nom = ?
                    ORDER BY ur.date_reponse DESC
                ");
                $req_responses->execute([$nom]);
                ?>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Matière</th>
                            <th>Question</th>
                            <th>Réponse</th>
                            <th>Résultat</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php while ($reponse = $req_responses->fetch()): ?>
                        <tr>
                            <td><?php echo $reponse['matiere']; ?></td>
                            <td><?php echo $reponse['enonce']; ?></td>
                            <td><?php echo $reponse['reponse']; ?></td>
                            <td>
                                <?php if ($reponse['is_correct']): ?>
                                    <span class="text-success">✓</span>
                                <?php else: ?>
                                    <span class="text-danger">✗</span>
                                <?php endif; ?>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>