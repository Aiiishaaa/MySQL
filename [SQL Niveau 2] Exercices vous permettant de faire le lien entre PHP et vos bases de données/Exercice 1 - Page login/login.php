<?php

if (isset($_POST["submit"])) {

    $login = htmlspecialchars($_POST["login"]);
    $isValidLogin = !empty($login);

    $password = htmlspecialchars($_POST["password"]);
    $isValidPassword = !empty($password);

    $isValidAll = $isValidLogin && $isValidPassword;

    if ($isValidAll) {
        try {
            $database = new PDO("mysql:host=localhost;dbname=nv2_mysql-php;charset=utf8", "root", "");
        } catch (Exception $err) {
            die("Erreur:" . $err->getMessage());
        }
        $insertReq = $database->prepare("INSERT INTO connexions (login, password) VALUES (:login, :password)");
        $insertReq->bindValue(':login', $login);
        $insertReq->bindValue(':password', $password);
        $insertReq->execute();
    }
}

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Page Login</title>
</head>

<body>
    <form class="form__group" action="login.php" method="post">
        <p class="form__group">
            <label for="login" class="form__label">Login :</label>
            <input type="text" name="login" id="login" class="form__input">
        </p>
        <p class="form__group">
            <label for="password" class="form__label">Mot de passe :</label>
            <input type="text" name="password" id="password" class="form__input">
        </p>
        <p class="form__group">
            <input type="submit" value="Envoyer" name="submit" class="form__input">
        </p>
    </form>
</body>

</html>