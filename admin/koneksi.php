<?php

$host    = 'localhost';
$user    = 'root';
$pass    = '';
$db      = 'multi_user';

$conn   = mysqli_connect($host, $user, $pass, $db) or die("Koneksi ke database GAGAL!!!");
