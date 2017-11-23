variable "name" { default = "aerospike_cluster"}
variable "template_url" {default = "https://s3.amazonaws.com/nonexistentbucket/aerospike.json"}
variable "capabilities" { default = [ "CAPABILITY_IAM" ] }
variable "keypair" {}
variable "permitssh" { default = "0.0.0.0/0" }
variable "namespacefile" { default = "https://s3.amazonaws.com/nonexistentbucket/namespace.conf"}
variable "new_vpc" {
    description = "When set to true (default) deploys Aerospike in a new VPC"
    default = true
}
variable "vpc_id" { default = "vpc-0000000"}
variable "vpc_subnet_id" { default = "subnet-0000000"}
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

variable "secret_cli53_aws_access_key" {}
variable "secret_cli53_aws_secret_access_key" {}
variable "private_zone" {}
variable "public_zone" {}
variable "aerospike_cli53_hostname" {}

variable "aerospike_cluster_role_arn" {}
variable "aerospike_cluster_instance_profile_arn" {}
variable "aerospike_migration_queue_arn" {}
variable "aerospike_security_group_ids" {}
variable "aerospike_ami" {}
