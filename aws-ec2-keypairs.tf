resource "aws_key_pair" "prj-user_keypair" {
  key_name    = "ec2-kp-${var.prj-ecosystem}-${var.prj-application}"
  public_key  = "${var.ec2_keypair_public}"
}
