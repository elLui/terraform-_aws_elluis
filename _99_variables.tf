variable "region_az_short_names" {
  description = "convert short names to full name of region or availability zone"

  type = map(string)

  default = {
    us-east-2 = "us_east_2"
    us-east-2a = "us_east_2a"
    us-east-2b = "us_east_2b"
    us-east-2c = "us_east_2c"
  }
}

variable "env_prefix" {
  description = "project deployment stage"
  type = string
  
  default = "elluis_staging_"
}

variable "azs" {
    description = "subnet mapping variables"
    type = map(number)

# TODO :: find 3rd octet numbers from vpc template - temporary values 11, 22, 33
    default = {
        a = 11
        b = 22
        c = 33
    }  
}

variable "aws_region" {
  description = "aws deployment region"
  
  default = "us-east-2"
}

variable "aws_version" {
  description = "current aws version"
  
  default = "~> 3.0"
}