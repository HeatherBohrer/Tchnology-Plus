<?php
    $dsn = 'mysql:host=localhost;dbname=Enter your DB name here';
    $username = 'Your Username';
    $password = 'Your PW';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('../errors/database_error.php');
        exit();
    }
?>