resource "aws_internet_gateway" "tfer--igw-002D-0b6470fca875d8542" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0637212a6bc1fc315_id}"
}
