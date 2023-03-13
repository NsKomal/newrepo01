provider "aws" {
region = "eu-west-2"
access_key = "AKIA22QPREKEY2PJPI7S"
secret_key = "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"
}

resource "aws_instance" "vm" {
ami = "ami-0055e70f580e9ae80"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.sg_key.id] 
tags =  {
Name= "instance "
}
}

