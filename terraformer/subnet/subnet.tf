resource "aws_subnet" "tfer--subnet-002D-02052a35506dbe9f9" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.80.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}

resource "aws_subnet" "tfer--subnet-002D-0407d1c4f9753e4ae" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.32.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}

resource "aws_subnet" "tfer--subnet-002D-065454217f74d5bbd" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.48.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}

resource "aws_subnet" "tfer--subnet-002D-06af9bcbcca15d569" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.64.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}

resource "aws_subnet" "tfer--subnet-002D-08d80e9320bdd7a0f" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.0.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}

resource "aws_subnet" "tfer--subnet-002D-0c9ee8b3713a9b5c0" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.16.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}
