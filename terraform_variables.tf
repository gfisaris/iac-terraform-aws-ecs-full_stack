## AWS Account Variables

variable "aws_access_key" {
    decscription = "AWS Access Key"
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
}

variable "aws_region" {
    description = "Which AWS Region will be used ?"
    default = "eu-west-1"
}


## EC2 Instances Variables

variable "ec2_instance_type" {
    default = "t2.micro"
}

## EC2 Keypairs Variables

variable "ec2_keypair_public" {
    description = "SSH Public Key that will be used to access the EC2 Instances (Example: ssh-rsa AAABBBCCC999... email@example.com)"
}


## EC2 Autoscale Group Variables

variable "ec2_autoscalegroup_min" {
    default = "0"
    description = "Minimum autoscale (number of EC2)"
}

variable "ec2_autoscalegroup_max" {
    default = "9"
    description = "Maximum autoscale (number of EC2)"
}

variable "ec2_autoscalegroup_desired" {
    default = "3"
    description = "Desired autoscale (number of EC2)"
}

## ECS Cluster Variables

variable "ecs_cluster_name" {
    description = "The name of the Amazon ECS cluster."
    default = "main"
}
