# Build a staging server

## Deploy do site
Requisitos:
- repositório Git
- conta na AWS (ou qualquer provedor de nuvem)
- conta no Forge (https://forge.laravel.com)
- domínio

Forge:
- cria servidor
- cria site

DNS:
- cria entrada para servidor

## Cria servidor de staging
- Idem processo anterior, cria uma branch "staging", cria outro site e outra entrada DNS

## Workflow 
- Branch a partir de staging > Pull-request staging > Testa > Pull-request master

## "Protegendo" acesso ao servidor de staging 
```shell
# instala pacote que provém htpasswd
# criando arquivo com usuário:senha permitidos 
htpasswd -c /caminho/do/arquivo/.htpasswd Cezar
```
```apacheconf
# alterando configuração nginx para restringir acesso (forge > site > edit nginx)
location / {
    try_files $uri $uri/ /index.php?$query_string;
    
    auth_basic "Pessoas autorizadas apenas";
    auth_basic_user_file "/caminho/do/arquivo/.htpasswd";
}
```
## Cloudflare
- configurar Cloudflare no domínio e suas opções adequadas (otimizações, cache, ssl, etc)