resource "aws_iam_user_policy" "allow-ec2-describe-all" {
	name = "iam-cup-ec2-${var.prj_ecosystem}-${var.prj_application}"
	#(Required) Name of the policy.
	
	user = "${aws_iam_user.prj-username.name}"
	#(Required) IAM user to which to attach this policy.
		
	#policy =
	#(Required) The policy document. This is a JSON formatted string. The heredoc syntax or file function is helpful here.
	policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

}

##  Amazon ECS Container Instance IAM Role  ##
# The Amazon ECS container agent makes calls to the Amazon ECS API actions on your behalf,
# so container instances that run the agent require an IAM policy and role for the service
# to know that the agent belongs to you.

resource "aws_iam_user_policy" "ecs" {
	name = "iam-cup-ecs-${var.prj_ecosystem}-${var.prj_application}"
	#(Required) Name of the policy.
	
	user = "${aws_iam_user.prj-username.name}"
	#(Required) IAM user to which to attach this policy.
		
	#policy =
	#(Required) The policy document. This is a JSON formatted string. The heredoc syntax or file function is helpful here.
	policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecs:CreateCluster",
        "ecs:DeregisterContainerInstance",
        "ecs:DiscoverPollEndpoint",
        "ecs:Poll",
        "ecs:RegisterContainerInstance",
        "ecs:StartTelemetrySession",
        "ecs:Submit*",
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "*"
    }
  ]
}
EOF

}
