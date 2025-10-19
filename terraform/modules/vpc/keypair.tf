resource "aws_key_pair" "bastionconnect" {
  key_name   = "keypair1"
public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHg7OlE7imPOvLR3kicEBWJALy/IjDsGY5HGopr/8s9z ubuntu@ip-172-31-30-89"
}
