- instalar Vagrant e Virtualbox

Comandos vagrant
```shell
# gerar Vagrantfile para o box escolhido
vagrant init hashicorp/precise64

# subir ambiente
vagrant up

# configurações da conexão ssh com vagrant
vagrant ssh-config

# outros comandos
vagrant destroy
vagrant reload
vagrant validate

# comandos para apenas uma das máquinas, para ambientes multi-machine
vagrant status nome-maquina
vagrant ssh maquina-web
```

Comandos ansible
```shell
ansible-playbook --version
ansible-playbook -i /arquivo/inventario_hosts /arquivo/playbook.yml
```