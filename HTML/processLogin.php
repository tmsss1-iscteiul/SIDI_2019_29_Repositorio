<?php
    session_start();

    $username = $_POST['username'];
    $password = $_POST['password'];

    $username = stripcslashes($username);
    $password = stripcslashes($password);



    $conn = new mysqli("localhost:3360","$username", "$password", "db_mysql_destino");

    if ($conn->connect_error) {
        die("Erro de autenticação: " . $conn->connect_error);
    }


    $_SESSION["user"]= $_POST['username'];
    $_SESSION["pass"]= $_POST['password'];

    header("Location: ../SID/home.php");


