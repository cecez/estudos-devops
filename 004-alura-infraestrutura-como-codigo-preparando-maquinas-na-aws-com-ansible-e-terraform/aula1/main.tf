#https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-0b0ea68c435eb488d" //Ubuntu Server 16.04 LTS (HVM),EBS General Purpose (SSD) Volume Type.
  key_name = "estudos-devops-iac"
  instance_type = "t2.nano"
  subnet_id = "subnet-0961f1106dbb4c0e9"
  tags = {
    Name = "terraform"
  }
  vpc_security_group_ids = ["sg-05087847e45b08127"]
}