<?php

echo "Testando conexão com maquina-db..." . PHP_EOL;

$serverIP = '192.168.1.226';
$usuario = 'phpuser';
$senha = 'pass';

$conexao = new mysqli($serverIP, $usuario, $senha);

if ($conexao->connect_error) {
    die('Erro na conexão ao banco: ' . $conexao->connect_error);
}

echo "... finalizando teste de conexão com sucesso.";