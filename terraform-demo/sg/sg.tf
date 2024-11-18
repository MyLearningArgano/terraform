
output "sg_name" {
    value = aws_security_group.web_traffic.name
}

resource "aws_security_group" "web_traffic" {
    name = "Allow Web Traffic"

    dynamic "ingress" {
        iterator = port
        for_each = var.ingress
        content {
            from_port = port.value
            to_port = port. value
            protocol = var.protocol_type
            cidr_blocks = var.cidr_blocks_address
        }
    }

    dynamic "egress" {
        iterator = port
        for_each = var.egress
        content {
            from_port = port.value
            to_port = port. value
            protocol = var.protocol_type
            cidr_blocks = var.cidr_blocks_address
        }
    }
}