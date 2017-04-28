variable "name" { default = "aerospike_stack"}
variable "template_url" {default = "https://s3.amazonaws.com/nonexistentbucket/aerospike.json"}
variable "capabilities" { default = [ "CAPABILITY_IAM" ] }
variable "keypair" {}
variable "permitssh" { default = "0.0.0.0/0" }
variable "namespacefile" { default = "https://s3.amazonaws.com/nonexistentbucket/namespace.conf"}
variable "new_vpc" {
	description = "When set to true (default) deploys Aerospike in a new VPC"
	default = false
}
variable "vpc_id" { default = "vpc0x1234"}
variable "vpc_subnet_id" { default = "sub1245325"}
variable "number_of_instances" { default = "2" }
variable "instance_type" { default = "t2.micro" }
variable "cloudwatch" {
	description = "Add basic Aerospike metrics to Cloudwatch. Will incur Cloudwatch expenses ~ $24/mo/instance"
	default = "no"
}
variable "tenancy" {
	description = "The tenancy of your instance"
	default = "default"
}
variable "ebs" {
	description = "Size of EBS SSD volume in GB. Defaults to disabled."
	default = "0"
}
