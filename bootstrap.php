<?php

// Load our autoloader
require_once __DIR__.'/vendor/autoload.php';

// Specify our Twig templates location
$loader = new \Twig\Loader\FilesystemLoader(__DIR__.'/templates');

// Instantiate our Twig
$twig = new \Twig\Environment($loader);
