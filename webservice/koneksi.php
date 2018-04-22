<?php 
	//koneksi database mysql
	$dbhost = "localhost";
	$dbuser	= "root";
	$dbpass	= "";
	$dbname	= "wisata";
	mysql_connect($dbhost,$dbuser,$dbpass);
	mysql_select_db($dbname);
?>