resource "aws_iam_user" "prj-username" {
	name = "iam-usr-${var.prj_ecosystem}-${var.prj_application}"
	#(Required) The user's name.
	
	#path =
	#(Optional, default "/") Path in which to create the user.
	
	#force_destroy =
	#(Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys. Without force_destroy a user with non-Terraform-managed access keys will fail to be destroyed.
}
