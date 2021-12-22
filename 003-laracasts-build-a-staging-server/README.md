# Build a staging server
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