# variables.tf

#aws provider
variable "aws_region" {
    description = "AWS Region"
    type = string
}

# EC2 variables
variable "instance_type" {
    description = "EC2 instance type"
    type = string
}

#Instance ami id
variable "ami_id" {
    description = "AMI ID for EC2 instance"
    type = string
}

#Incoming rule
variable "ingress" {
    description = "Inbound traffic ports"
    type = list(number)
}

#Outgoing rule
variable "egress" {
    description = "Outbound traffic ports"
    type = list(number)
}

#Protocol type
variable "protocol_type" {
    description = "protocol"
    type = string
}

#CIDR block
variable "cidr_blocks_address" {
    description = "CIDR block for the VPC"
    type = list(string)
}

variable "db_identifier" {
  description = "DB Isentifier"
  type        = string
}

variable "db_instance" {
  description = "DB instance type"
  type        = string
}

variable "db_engine" {
  description = "DB engine type"
  type        = string
}

variable "db_engine_version" {
  description = "DB engine version"
  type        = string
}

variable "db_user" {
  description = "DB user name"
  type        = string
}

variable "db_password" {
  description = "DB password"
  type        = string
}

variable "db_port" {
  description = "DB port"
  type        = number
}

variable "db_allocated_storage" {
  description = "DB allocated storage"
  type        = number
}