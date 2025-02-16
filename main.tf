terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}
provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "AngadSingh" {
    ami = "ami-053a45fff0a704a47"
    instance_type = "t2.micro"
    subnet_id = "subnet-0942424db7b2369f3"

    provisioner "local-exec" {
        command = "echo 'EC2 instacne created'"
    }
}

output "ec2_public_ip" {
    value = aws_instance.AngadSingh.public_ip
}