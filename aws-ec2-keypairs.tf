resource "aws_key_pair" "prj-user_keypair" {
  key_name    = "ec2-kp-${var.prj_ecosystem}-${var.prj_application}"
  public_key  = "${var.ec2_keypair_public}"
}
