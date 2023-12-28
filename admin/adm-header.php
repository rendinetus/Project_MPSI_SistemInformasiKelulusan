<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <title>SISTEM INFORMASI KELULUSAN ONLINE</title>
    <link rel="stylesheet" href="../css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="../css/bootswatch.min.css">
    <link rel="stylesheet" href="../css/jasny-bootstrap.min.css">
    <link rel="icon" type="image/png" href="../images/logo.png">
    <script type="text/javascript" async="" src="./js/ga.js"></script>
    <script src="../js/jquery-1.10.2.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootswatch.js"></script>
</head>
<?php
include "../controller/box-message.php";
?>

<body style="background: url('../images/bg.png') repeat;">
    <div class="navbar navbar-inverse navbar-fixed-top btn btn-success" >
        <div class="container">
            <div class="navbar-header">
                <?php
                require "../controller/config.php";
                $p = mysqli_query($koneksi, "SELECT * FROM tbl_profil WHERE  id_profil='1'");
                while ($data = mysqli_fetch_array($p)) {
                    echo '<span class="navbar-brand"><b>&nbsp&nbsp ' . $data['nm_aplikasi'] . '</b></span>';
                }
                ?>
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true" style="text-transform: uppercase;">
                            <span class='glyphicon glyphicon-check' aria-hidden='true'></span>&nbsp; <b><?php echo $_SESSION['username']; ?> </b><span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#" onClick="keluar_modal('keluar.php');"><span class='glyphicon glyphicon-lock' aria-hidden='true'></span>&nbsp;<b> KELUAR</b></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>