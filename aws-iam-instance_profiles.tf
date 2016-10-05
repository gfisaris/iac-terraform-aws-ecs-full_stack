resource "aws_iam_instance_profile" "ecs-admin" {
    name = "iam-ec2instance_profile-ecs-admin-${var.prj_ecosystem}-${var.prj_application}"
    roles = ["${aws_iam_role.ecs-admin.name}"]
}
