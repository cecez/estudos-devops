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

# estado global das máquinas com vagrant e remoção de entradas inválidas
vagrant global-status
vagrant global-status --prune

# gerenciamento de boxes
vagrant box list
vagrant box prune
```

Comandos ansible
```shell
ansible-playbook --version
ansible-playbook -i /arquivo/inventario_hosts /arquivo/playbook.yml
```

- o Puppet é uma ferramenta de gerenciamento de configuração e o Ansible é uma ferramenta de provisionamento, ou seja, utilizamos o Puppet para validar a configuração de nosso ambiente e o Ansible para instalar e preparar o ambiente.