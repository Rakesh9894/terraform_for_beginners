terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region ="eu-west-2"
  access_key = ""
  secret_key = ""

}
resource "aws_instance" "web" {
  ami           = "ami-07d1e0a32156d0d21"
  instance_type = "t2.micro"

  tags = {
    Name = "Rakesh_ec2"
  }
}
