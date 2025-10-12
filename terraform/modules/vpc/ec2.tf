resource "aws_instance" "public_ec2" {
  ami                         = "ami-0360c520857e3138f" 
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public[0].id
  associate_public_ip_address = true                     
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  key_name = aws_key_pair.bastionconnect.key_name
  tags = {
    Name = "Bastion"
    Environment = "Dev"
  }
}
resource "aws_instance" "private_ec2" {
  ami                        = "ami-0360c520857e3138f"  
  instance_type              = "t2.micro"
  subnet_id                  = aws_subnet.private[0].id  
  associate_public_ip_address = false                               
  key_name = aws_key_pair.bastionconnect.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id] 

  tags = {
    Name = "Jenkins"
    Environment = "Dev"
  }
}
resource "aws_instance" "private_ec2_1" {
  ami                        = "ami-0360c520857e3138f"    
  instance_type              = "t2.micro"
  subnet_id                  = aws_subnet.private[1].id  
  associate_public_ip_address = false
  key_name = aws_key_pair.bastionconnect.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  tags = {
    Name = "App"
    Environment = "Dev"
  }
}
