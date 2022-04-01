```shell
# baixar requisitos para executar script Terraform
terraform init

# exibe alteracões que script acarretará
terraform plan

terraform fmt
terraform validate

# aplica alterações
terraform apply
terraform destroy
```

## Aula 2
- criar key pair na AWS e vincular usando o parâmetro `key_name`.
- é necessário ter subnet pública, securiity group e vpc configurados para permitir acesso ssh.
```
# servidor http enxuto
nohup busybox httpd -f -p 8080 &
```

## Aula 3
- executando playbook com ansible
```
ansible-playbook playbook.yml -i hosts.yml -u ubuntu --private-key estudos-devops-iac.pem

. venv/bin/activate # ativa ambiente virtual
pip freeze # lista pacotes instalados
```