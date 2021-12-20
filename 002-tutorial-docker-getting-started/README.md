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

# criar network
docker network create <nome-da-network>

# anexando contêiner em uma network
docker run -d \
    --network <nome-da-network> --network-alias mysql \
    -v todo-mysql-data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=secret \
    -e MYSQL_DATABASE=todos \
    mysql:5.7

# contêiner com várias ferramentas para analisar redes
docker run -it --network <network-para-analisar> nicolaka/netshoot

# rodando contêiner passando variáveis de ambiente (env vars)
docker run -dp 3000:3000 \
  -w /app -v "$(pwd):/app" \
  --network todo-app \
  -e MYSQL_HOST=mysql \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=secret \
  -e MYSQL_DB=todos \
  node:12-alpine \
  sh -c "yarn install && yarn run dev"

# executar (em background) e parar serviços de contêineres
docker-compose up -d 
docker-compose down


```

- In general, *each container should do one thing and do it well*
- If two containers are on the same network, they can talk to each other. If they aren't, they can't.
- Ao usar o Docker Compose, uma rede é automaticamente criada, bem como alias para os serviços

- Volumes
    - named volumes: docker gerencia onde armazena
    - bind mounts: local de armazenagem é escolhido explicitamente
    - existem outras opções: sftp, s3, entre outros.