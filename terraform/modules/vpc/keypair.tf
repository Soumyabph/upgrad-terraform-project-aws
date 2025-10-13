resource "aws_key_pair" "bastionconnect" {
  key_name   = "keypair1"
public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINfi8vUckVNAwGRCNgNcIvMWwCQge9am+GmFa8Rz2cRv ubuntu@ip-172-31-20-209"
}
