resource "aws_iam_access_key" "prj-userkey" {
	user = "${aws_iam_user.prj-username.name}"
	#(Required) The IAM user to associate with this access key.
}
