```shell
# build de uma imagem com tag (-t) "getting-started" a partir do Dockerfile no diretório atual (.)
docker build -t getting-started .

# executando conteiner a partir de imagem taggeada, em modo desatachado/background (-d), vinculando portas entre conteiner e host (-p 3000:3000)
docker run -dp 3000:3000 getting-started
docker run -dp 3000:3000 cecez86/getting-started

docker stop <container-id>
docker rm <container-id>

# parar e remover contêiner
docker rm -f <container-id>

# enviar imagem para docker hub
docker push cecez86/getting-started:tagname

docker image ls
docker login -u YOUR-USER-NAME
docker tag getting-started cecez86/getting-started

# criar um "named volume"
docker volume create <nome-do-volume>

# roda contêiner especificando named volume
docker run -dp 3000:3000 -v <nome-do-volume>:/etc/todos getting-started

docker volume inspect <nome-do-volume>
```

- Volumes
    - named volumes: docker gerencia onde armazena
    - bind mounts: local de armazenagem é escolhido explicitamente
    - existem outras opções: sftp, s3, entre outros.