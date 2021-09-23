resource "aws_route_table" "tfer--rtb-002D-0c8fadd1001c92c83" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0b6470fca875d8542"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}
