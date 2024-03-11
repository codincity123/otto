resource "aws_opensearch_domain" "example" {
 domain_name           = "example-opensearch"
 engine_version = "OpenSearch_2.11"
  tags = {
    Name = "example-opensearch"
  }

#  cluster_config {
#    instance_type        = "t2.small.elasticsearch"
#    instance_count       = 1
#  }

 cluster_config {
    # dedicated_master_count        = 3
    dedicated_master_count        = var.master_count
    dedicated_master_enabled      = true
    # dedicated_master_type         = "m5.large.search"
    # dedicated_master_type         = "t3.small.search"
    dedicated_master_type         = var.master_type
    # instance_count                = 3
    instance_count                =  var.instance_count
    # instance_type                 = "m5.xlarge.search"
    # instance_type                 = "t3.small.search"
    instance_type                 = var.instance_type
    multi_az_with_standby_enabled = false
    warm_count                    = 2
    warm_enabled                  = false
    warm_type                     = null
    zone_awareness_enabled        = true
    cold_storage_options {
      enabled = false
    }
    zone_awareness_config {
      availability_zone_count = 3
    }
  }


 vpc_options {
   security_group_ids = [var.smgmt_sg_id_input]
   subnet_ids      = [var.smgmt_idl-securitymgmt1_input,var.smgmt_idl-securitymgmt2_input,var.smgmt_idl-securitymgmt3_input]
#    security_group_ids = [aws_security_group.opensearch.id]
#    subnet_ids      = [aws_subnet.example.id]
   
 }


 ebs_options {
  #  ebs_enabled = true
  #  volume_size = 10
   ebs_enabled = var.ebs_option
   volume_size = var.ebs_volume_size
 }
 snapshot_options {
   automated_snapshot_start_hour = 0
 }
}