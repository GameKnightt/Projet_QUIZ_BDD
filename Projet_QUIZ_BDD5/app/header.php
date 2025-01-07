<div class="container my-5 p-5 bg-info">
    <div class="d-flex justify-content-between align-items-center">
        <div>
            <h1>Automaquizz !!!</h1>
            <p><?php echo isset($header_subtitle) ? $header_subtitle : "Testez vos connaissances !"; ?></p>
        </div>
        <div class="d-flex align-items-center">
            <form action="perso.php" method="GET" class="me-3">
                <div class="input-group">
                    <input type="text" class="form-control" name="nom" placeholder="Votre nom" required>
                    <button class="btn btn-dark" type="submit">Voir mon profil</button>
                </div>
            </form>
            <img src="https://questionnaires.univ-nantes.fr/upload/surveys/737867/images/LOGO_PRINCIPAL_IUT_NANTES_CMJN.png" style="width:150px;"/>
        </div>
    </div>
</div>