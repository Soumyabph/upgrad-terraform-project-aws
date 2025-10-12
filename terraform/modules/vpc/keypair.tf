resource "aws_key_pair" "bastionconnect" {
  key_name   = "keypair1"
public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKBN8YvnUcES5HF83w35E297gKl1UFYmIemGwuCIRrNs ubuntu@ip-172-31-29-67"
}
