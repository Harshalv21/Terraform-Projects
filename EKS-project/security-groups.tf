resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "harshal-eks-worker-mgmt-"
  vpc_id = module.vpc.vpc_id
}

resource "aws_security_group_rule" "all_worker_mgmt_ingress" {
  description = "Allow all worker management traffic"
  type  = "ingress"
  from_port  = 0
  to_port = 0
  protocol = "-1"
  security_group_id = aws_security_group.all_worker_mgmt.id
  cidr_blocks = [
    "10.0.0.0/8",
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]
}

resource "aws_security_group_rule" "all_worker_mgmt_egress" {
  description = "Allow all outbound traffic from worker management security group"
  type  = "egress"
  from_port  = 0
  to_port = 0
  protocol = "-1"
  security_group_id = aws_security_group.all_worker_mgmt.id
  cidr_blocks = ["0.0.0.0/0"]
  
}