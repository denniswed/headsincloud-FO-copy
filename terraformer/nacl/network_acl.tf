resource "aws_network_acl" "tfer--acl-002D-06b652067406baed5" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-02052a35506dbe9f9_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-08d80e9320bdd7a0f_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0407d1c4f9753e4ae_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-06af9bcbcca15d569_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-065454217f74d5bbd_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0c9ee8b3713a9b5c0_id}"]
  vpc_id     = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}
