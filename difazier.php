<?php

require_once __DIR__.'/bootstrap.php';
use Symfony\Component\Yaml\Yaml;


$value = Yaml::parseFile('./data.yml');

echo $twig->render('difazier.html.twig', ['data' => $value] );
