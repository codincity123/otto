# Security Group
resource "aws_security_group" "opensearch_network_sg" {
  provider    = aws.pilot_provider
  name        = var.sg_group_name["sg_opensearch"]
  description = "Security Group for Open Search"
  # vpc_id      = aws_vpc.idl-live-network.id
   vpc_id      =  var.sgmgmt_vpc_id_input

  tags = {
    Name = var.sg_tag_name["sg_opensearch_name"]
  }

  ingress {
    from_port   = var.from_port_opensearch
    to_port     = var.to_port_opensearch
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks_opensearch["https"]
  }
}

output "smgmt_sg_id_output"{
  value = aws_security_group.opensearch_network_sg.id
}
