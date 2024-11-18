#terraform plan -var-file="dev.tfvars"
provider "aws" {
    region = var.aws_region
}

module "db" {
    source = "./db"
    db_identifier = var.db_identifier
    db_instance = var.db_instance
    db_engine = var.db_engine
    db_engine_version = var.db_engine_version
    db_port = var.db_port
    db_user = var.db_user
    db_password = var.db_password
    db_allocated_storage = var.db_allocated_storage
}

module "web" {
    source = "./web"
    ami_id = var.ami_id
    instance_type = var.instance_type
    egress = var.egress
    ingress = var.ingress
    protocol_type = var.protocol_type
    cidr_blocks_address = var.cidr_blocks_address

    depends_on = [ module.db ]
}

output "db_endpoint" {
    value = module.db.db_endpoint
}

output "PublicIP" {
    value = module.web.PublicIP
}