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