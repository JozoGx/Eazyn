<?php
include "config/connect.php";


if(isset($_POST["login"])) {
  $username = $_POST['username'];
  $password = $_POST['password'];

  $sql = "SELECT * FROM siswa WHERE username='$username' and password='$password'";
  $result = mysqli_query($is_connect, $sql);

  if (mysqli_num_rows($result) > 0) {
      header('Location: index.php');
  } else {
      echo 'Login gagal! username atau password salah.';
  }

}
?>