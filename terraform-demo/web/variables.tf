variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ingress" {
    type = list(number)
}

variable "egress" {
    type = list(number)
}

variable "protocol_type" {
    type = string
}

variable "cidr_blocks_address" {
    type = list(string)
}