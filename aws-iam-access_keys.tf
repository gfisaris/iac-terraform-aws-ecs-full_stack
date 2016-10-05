resource "aws_iam_access_key" "prj-userkey" {
	user = "${aws_iam_user.prj-user.name}"
	#(Required) The IAM user to associate with this access key.
}
