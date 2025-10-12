resource "aws_key_pair" "bastionconnect" {
  key_name   = "keypair1"
public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFTZhia8j4/5vxCRlDnXzpCzRnQwgiwHRusKgFrFgulV ubuntu@ip-172-31-30-14"
}
