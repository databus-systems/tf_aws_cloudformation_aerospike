resource "aerospike_stack_new_vpc" "aerospike" {
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

resource "aerospike_stack_existing_vpc" "aerospike" {
	count = "${var.new_vpc}"
    name = "${var.name}"
    template_url = "${var.template_url}"
    capabilities = "${var.capabilities}"

    parameters {
        KeyPair = "${var.keypair}"
        PermitSSH = "${var.permitssh}"
        NamespaceFile = "${var.namespacefile}"
        VPC = "${var.vpc_id}"
        VPCSubnet = "${var.vpc_subnet_id}"
        NumberOfInstances = "${var.number_of_instances}"
        InstanceType = "${var.instance_type}"
        EBS = "${var.ebs}"
        Cloudwatch = "${var.cloudwatch}"
        Tenancy = "${var.tenancy}"
    }
}
