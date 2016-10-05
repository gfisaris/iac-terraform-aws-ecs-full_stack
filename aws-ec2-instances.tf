resource "aws_instance" "node" {
	ami = "ami-7abd0209"
	instance_type = "t2.micro"
	user_data = "${template_file.ec2_instance-userdata.rendered}"

	root_block_device {
		volume_type		= "gp2"
		volume_size		= "10"
		delete_on_termination	= true
	}

	tags {
		Name = "StaticNode"
	}
}
