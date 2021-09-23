resource "aws_main_route_table_association" "tfer--vpc-002D-0637212a6bc1fc315" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0c8fadd1001c92c83_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}
