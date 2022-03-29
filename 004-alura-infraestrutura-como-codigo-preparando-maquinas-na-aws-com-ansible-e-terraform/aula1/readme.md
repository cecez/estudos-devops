```shell
# baixar requisitos para executar script Terraform
terraform init

# exibe alteracões que script acarretará
terraform plan

terraform fmt
terraform validate

# aplica alterações
terraform apply
```

## Aula 2
- criar key pair na AWS e vincular usando o parâmetro `key_name`.
- é necessário ter subnet pública, securiity group e vpc configurados para permitir acesso ssh.
```
# servidor http enxuto
nohup busybox httpd -f -p 8080 &
```