resource "aws_security_group" "public_sg" {
  name        = "${var.vpc_name}-public-sg"
  description = "Public security group"
  vpc_id      = aws_vpc.this.id

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH from admin IPs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.vpc_name}-public-sg"
  }
}

# Private Security Group — internal resources
resource "aws_security_group" "private_sg" {
  name        = "${var.vpc_name}-private-sg"
  description = "Private security group - allows traffic only from Public SG"
  vpc_id      = aws_vpc.this.id

  ingress {
    description     = "Allow HTTP from Public SG"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
   cidr_blocks      = [var.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.vpc_name}-private-sg"
  }
}
