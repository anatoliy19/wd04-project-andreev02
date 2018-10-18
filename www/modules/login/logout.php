<?php 

 unset($_SESSION['logged_user']);
 unset($_SESSION['login']);
 unset($_SESSION['role']);
 session_destroy();
 //удаляется связь с сессией 
 setcookie(session_name(), '', time() - 60*60*24*32, '/');
 header("Location: " . HOST);

?>