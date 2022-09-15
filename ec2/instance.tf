provider "aws" {
    access_key = ""
    secret_key = ""
    regon = "ap-southeast-1"
}

resource "aws_instance" "example" {
    ami = ""
    instance_type = "t3.nano"
}