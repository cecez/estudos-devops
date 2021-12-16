```shell
# build de uma imagem com tag (-t) "getting-started" a partir do Dockerfile no diretório atual (.)
docker build -t getting-started .

# executando conteiner a partir de imagem taggeada, em modo desatachado/background (-d), vinculando portas entre conteiner e host (-p 3000:3000)
docker run -dp 3000:3000 getting-started
` 