# pull data from aws regions us-east-2 for elluis.codes deployment
data "aws_region" "us-east-2" {}

locals {
  route_out_cidr = "0.0.0.0/0"
  region_name = "us-east-2"
  region_short_name = lookup(var.region_az_short_names, local.region_name)

  # this carries the local environment variables through the tag system
  default_tags = {
    Environment = lower(var.env_prefix)
  }

  # notice that the last field in the format string is "default" the tag we
  # be using to number our infrastructure names
  vpc_name_tag        = format("%s-%s-%s", upper(var.env_prefix), local.region_short_name, "default")
  public_label        = "elluis_public_"
  private_label       = "elluis_private_"
  nat_gw_label        = "elluis_nat_gateway_"
}