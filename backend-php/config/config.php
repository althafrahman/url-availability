<?php 
session_start(); 
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;

$base_url = "http://localhost/url/";
$mysqli = new mysqli('localhost', 'root', '', 'url_available');
$db = new MysqliDb($mysqli);
$uuid5 = Uuid::uuid4();
$site_name = "Test";

function session_check() {
    $base_url = "http://localhost/url/";
    if (!isset($_SESSION['user'])) {
        header('location: ' . $base_url . '');
        exit();
    }
}

?>