resource "aws_instance" "PrivateEC2" { 
  ami = "" 
  availability_zone = "ap-southeast-1" 
  instance_type = "t3.nano" 
  key_name = "keyname"
tags = { 
    Name = "PrivateEC2" 
  }
subnet_id = aws_subnet.private_subnet.id 
  vpc_security_group_ids = [aws_security_group.allow_local.id] 
  depends_on = [aws_vpc.demovpc, aws_subnet.private_subnet] 
}