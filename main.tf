resource "aws_cloudformation_stack" "aerospike_new_vpc" {
	count = "${var.new_vpc}"
    name = "${var.name}"
    template_url = "${var.template_url}"
    capabilities = "${var.capabilities}"

    parameters {
        KeyPair = "${var.keypair}"
        PermitSSH = "${var.permitssh}"
        NamespaceFile = "${var.namespacefile}"
        NumberOfInstances = "${var.number_of_instances}"
        InstanceType = "${var.instance_type}"
        EBS = "${var.ebs}"
        Cloudwatch = "${var.cloudwatch}"
        Tenancy = "${var.tenancy}"
    }
}

resource "aws_cloudformation_stack" "aerospike_existing_vpc" {
	count = "${1 - var.new_vpc}"
    name = "${var.name}"
    template_url = "${var.template_url}"
    capabilities = "${var.capabilities}"

    parameters {
        KeyPair = "${var.keypair}"
        NamespaceFile = "${var.namespacefile}"
        VPC = "${var.vpc_id}"
        VPCSubnet = "${var.vpc_subnet_id}"
        NumberOfInstances = "${var.number_of_instances}"
        InstanceType = "${var.instance_type}"
        EBS = "${var.ebs}"
        Cloudwatch = "${var.cloudwatch}"
        Tenancy = "${var.tenancy}"
        Cli53AwsAccessKey = "${var.secret_cli53_aws_access_key}"
        Cli53AwsSecretAccessKey = "${var.secret_cli53_aws_secret_access_key}"
        Cli53PrivateZone = "${var.private_zone}"
        Cli53PublicZone = "${var.public_zone}"
        Cli53Hostname = "${var.aerospike_cli53_hostname}"
        ClusterRoleArn = "${var.aerospike_cluster_role_arn}"
        ClusterAMI = "${var.aerospike_ami}"
        ClusterInstanceProfileArn = "${var.aerospike_cluster_instance_profile_arn}"
        MigrationSQSArn = "${var.aerospike_migration_queue_arn}"
        SecurityGroupIDs = "${var.aerospike_security_group_ids}"
    }
}
