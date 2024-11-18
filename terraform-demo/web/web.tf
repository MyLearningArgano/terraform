
resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [module.sg.sg_name]
    user_data = file("./web/server-script.sh")
    tags = {
        Name = "Web Server"
    }
}

output "PublicIP" {
    value = module.eip.PublicIP
}

module "eip" {
    source = "../eip"
    instance_id = aws_instance.web.id
}

module "sg" {
    source = "../sg"
    egress = var.egress
    ingress = var.ingress
    protocol_type = var.protocol_type
    cidr_blocks_address = var.cidr_blocks_address
}