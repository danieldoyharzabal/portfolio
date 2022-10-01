provider "aws" {

  region     = "us-east-1"
  access_key = "AKIAY7YRCSBMVN7NUIMG"
  secret_key = "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"
} ## Bloque de provider y de auth

## Declaracion de recursos

resource "aws_instance" "probando" {
  ami           = "ami-09d56f8956ab235b3"
  instance_type = "t2.micro"
  tags = {
    Name = "Instance Cloud COps"

  }


}

##Bloque Security Group

resource "aws_security_group" "name" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }
}
