# Projet Automaquizz

## Description

Le projet "Automaquizz" est une application web de quiz conçue pour tester les connaissances des utilisateurs sur diverses matières. Les utilisateurs peuvent répondre à des questions, obtenir un score et voir leur classement parmi les autres participants.

## But du Projet

L'objectif principal de ce projet est de fournir une plateforme interactive où les utilisateurs peuvent évaluer leurs connaissances sur différentes matières, obtenir des retours immédiats sur leurs réponses et suivre leurs progrès au fil du temps.

## Fonctionnement

1. **Page de Quiz**: Les utilisateurs accèdent à la page de quiz où ils peuvent répondre à une série de questions.
2. **Traitement des Réponses**: Les réponses des utilisateurs sont traitées, et un score est calculé en fonction des réponses correctes.
3. **Affichage des Résultats**: Les utilisateurs peuvent voir leur score final, des commentaires sur leurs réponses, et leur classement parmi les autres utilisateurs.
4. **Page Personnelle**: Les utilisateurs peuvent accéder à leur page personnelle pour voir leur historique de scores et leurs réponses passées.

## Comment Utiliser

### Prérequis

- Un serveur web (ex: Apache)
- PHP 7.0 ou supérieur
- Une base de données MySQL

### Installation

1. Clonez le dépôt sur votre serveur local:
    ```bash
    git clone https://github.com/GameKnightt/Projet_QUIZ_BDD.git
    ```

2. Importez le fichier `base_miniprojet.sql` dans votre base de données MySQL pour créer les tables nécessaires.

3. Configurez les paramètres de connexion à la base de données dans les fichiers PHP (`traitement.php`, `quizz.php`, `perso.php`).

### Utilisation

1. Accédez à la page principale du quiz (`quizz.php`) via votre navigateur web.
2. Entrez votre nom et répondez aux questions du quiz.
3. Soumettez vos réponses pour voir votre score et obtenir des commentaires.
4. Accédez à votre page personnelle (`perso.php`) pour voir votre historique de scores et vos réponses passées.

### Structure des Fichiers

- `app/quizz.php`: Page principale du quiz où les utilisateurs répondent aux questions.
- `app/traitement.php`: Script de traitement des réponses et calcul du score.
- `app/perso.php`: Page personnelle de l'utilisateur affichant l'historique des scores et des réponses.
- `app/header.php`: En-tête commun aux différentes pages de l'application.

### Contribuer

Les contributions sont les bienvenues ! Veuillez soumettre une pull request ou ouvrir une issue pour discuter des changements que vous souhaitez apporter.

### Licence MIT

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
