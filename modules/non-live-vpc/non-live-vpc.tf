# VPC - Non-Live
resource "aws_vpc" "idl-nonlive-network" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  # cidr_block           = "${lookup(var.vpc_cidr,terraform.workspace)}"
  cidr_block           = var.vpc_cidr["nw-non-live"]
  enable_dns_support   = true
  enable_dns_hostnames = true
  # count = var.isenv == "nw-non-live" ? 1 : 0

  tags = {
    Name = var.vpc_tag_name["nw-non-live"]
    #Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-public-ig" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_public_subnet_cidr_block["nw-nonlive-public-ig"]
  availability_zone = var.nw_subnet_az["az_a"]

  # count = var.isenv == "nw-non-live" ? 1 : 0

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-public-ig"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-private-fw1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_private_subnet_cidr_block["nw-nonlive-private-fw1"]
  availability_zone = var.nw_subnet_az["az_a"]

  # count = var.isenv == "nw-non-live" ? 1 : 0

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-private-fw1"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-public-fw2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_public_subnet_cidr_block["nw-nonlive-public-fw2"]
  availability_zone = var.nw_subnet_az["az_a"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-public-fw2"]
    Environment = terraform.workspace
  }
}


resource "aws_subnet" "idl-nonlive-dev1" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_dev["nw-nonlive-dev1"]
  availability_zone = var.nw_subnet_az["az_a"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-dev1"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-dev3" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_dev["nw-nonlive-dev3"]
  availability_zone = var.nw_subnet_az["az_a"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-dev3"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-dev2" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_dev["nw-nonlive-dev2"]
  availability_zone = var.nw_subnet_az["az_b"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-dev2"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-dev4" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_dev["nw-nonlive-dev4"]
  availability_zone = var.nw_subnet_az["az_b"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-dev4"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-1" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_dev["nw-nonlive-1"]
  availability_zone = var.nw_subnet_az["az_a"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-1"]
    Environment = terraform.workspace
  }
}


resource "aws_subnet" "idl-nonlive-qa1" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_qa["nw-nonlive-qa1"]
  availability_zone = var.nw_subnet_az["az_a"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-qa1"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-qa3" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_qa["nw-nonlive-qa3"]
  availability_zone = var.nw_subnet_az["az_a"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-qa3"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-qa2" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_qa["nw-nonlive-qa2"]
  availability_zone = var.nw_subnet_az["az_b"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-qa2"]
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "idl-nonlive-qa4" {
  provider          = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_nonlive_subnet_cidr_block_qa["nw-nonlive-qa4"]
  availability_zone = var.nw_subnet_az["az_b"]

  tags = {
    Name        = var.subnet_tag_names["nw-nonlive-qa4"]
    Environment = terraform.workspace
  }
}

# Non-Live Transit Gateway

resource "aws_subnet" "nw-non-live-tgw-attac1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_non_live_tgw_subnet_cidr_block["nw-non-live-tgw-attac1"]
  availability_zone = var.nw_subnet_az["az_a"]
  tags = {
    Name = var.subnet_tag_names["nw-non-live-tgw-attac1"]
  }
}

resource "aws_subnet" "nw-non-live-tgw-attac2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_non_live_tgw_subnet_cidr_block["nw-non-live-tgw-attac2"]
  availability_zone = var.nw_subnet_az["az_b"]
  tags = {
    Name = var.subnet_tag_names["nw-non-live-tgw-attac2"]
  }
}

resource "aws_subnet" "nw-non-live-tgw-attac3" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id            = aws_vpc.idl-nonlive-network.id
  cidr_block        = var.nw_non_live_tgw_subnet_cidr_block["nw-non-live-tgw-attac3"]
  availability_zone = var.nw_subnet_az["az_c"]
  tags = {
    Name = var.subnet_tag_names["nw-non-live-tgw-attac3"]
  }
}


# Non Live Route Table
resource "aws_route_table" "idl-nonlive-fw-private_rt" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id = aws_vpc.idl-nonlive-network.id
  tags = {
    Name        = var.rt_tag_name["idl-nonlive-fw-private_rt"]
    Environment = terraform.workspace
  }
}

# Associate subnets fw1 with fw_private_routtable
resource "aws_route_table_association" "idl-nonlive-fw-private_association-1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-private-fw1.id
  route_table_id = aws_route_table.idl-nonlive-fw-private_rt.id
}

resource "aws_route_table" "idl-nonlive-networklb-public_rt" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id = aws_vpc.idl-nonlive-network.id
  tags = {
    Name        = var.rt_tag_name["idl-nonlive-networklb-public_rt"]
    Environment = terraform.workspace
  }
}

# Associate subnets dev1,dev3 with fw_private_routtable
resource "aws_route_table_association" "idl-nonlive-networklb-public-association_1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-dev1.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-dev3.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_3" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-qa1.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_4" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-qa3.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_5" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-dev2.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_6" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-dev4.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_7" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  subnet_id      = aws_subnet.idl-nonlive-qa2.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-networklb-public-association_8" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.idl-nonlive-qa4.id
  route_table_id = aws_route_table.idl-nonlive-networklb-public_rt.id
}

resource "aws_route_table" "idl-nonlive-fw-public_rt" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id = aws_vpc.idl-nonlive-network.id
  tags = {
    Name        = var.rt_tag_name["idl-nonlive-fw-public_rt"]
    Environment = terraform.workspace
  }
}

resource "aws_route_table_association" "idl-nonlive-fw-public-association_1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.idl-nonlive-public-fw2.id
  route_table_id = aws_route_table.idl-nonlive-fw-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-fw-public-association_2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.idl-nonlive-1.id
  route_table_id = aws_route_table.idl-nonlive-fw-public_rt.id
}

resource "aws_route_table_association" "idl-nonlive-fw-public-association_3" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.idl-nonlive-public-ig.id
  route_table_id = aws_route_table.idl-nonlive-fw-public_rt.id
}

resource "aws_route_table" "idl-nonlive-fw-tgw-atta-rt" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestate
  vpc_id = aws_vpc.idl-nonlive-network.id
  tags = {
    Name        = var.rt_tag_name["idl-non-live-fw-tgw-atta_rt"]
    Environment = terraform.workspace
  }
}

resource "aws_route_table_association" "idl-nonlive-fw-tgw-atta-association_1" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.nw-non-live-tgw-attac1.id
  route_table_id = aws_route_table.idl-nonlive-fw-tgw-atta-rt.id
}

resource "aws_route_table_association" "idl-nonlive-fw-tgw-atta-association_2" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.nw-non-live-tgw-attac2.id
  route_table_id = aws_route_table.idl-nonlive-fw-tgw-atta-rt.id
}

resource "aws_route_table_association" "idl-nonlive-fw-tgw-atta-association_3" {
 // provider = aws.pilot_provider
  # provider          = aws.remotestat
  subnet_id      = aws_subnet.nw-non-live-tgw-attac3.id
  route_table_id = aws_route_table.idl-nonlive-fw-tgw-atta-rt.id
}



