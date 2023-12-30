<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <title>SIK ONLINE</title>
  <link rel="stylesheet" href="css/bootstrap.css" media="screen">
  <link rel="stylesheet" href="controller/style.css" media="screen">
  <link rel="stylesheet" href="css/bootswatch.min.css">
  <link rel="stylesheet" href="css/jasny-bootstrap.min.css">
  <link rel="icon" type="image/png" href="images/logo.png">
  <script type="text/javascript" async="" src="js/ga.js"></script>
  <script src="js/jquery-1.10.2.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/bootswatch.js"></script>
</head>

<body style="background: url('images/bg.jpeg') repeat;">
  <?php
  include "model/c-header.php";
  ?>
  <div class="container-fluid" style="height: 100%; display: flex; justify-content: center; align-items: center;">
    <table>
      <tr>
        <td style="padding: 10px;">
          <?php
          require "controller/config.php";
          error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
          $page = $_GET['page'];
          $filename = "model/$page.php";
          if (!file_exists($filename)) {
            include "model/beranda.php";
          } else {
            @include "model/$page.php";
          }
          ?>
        </td>
      </tr>
    </table>
  </div>
  <?php
  include "controller/footer.php";
  ?>
</body>

</html>