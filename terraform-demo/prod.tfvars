# prod.tfvars
aws_region = "ap-south-1"

db_identifier = "my-maria-rds"
db_instance = "db.t4g.micro"
db_engine = "mariadb"
db_engine_version = "10.11.9"
db_user = "argano"
db_password = "Argano@123"
db_port = 3306
db_allocated_storage = 20

instance_type = "t2.micro"
ami_id        = "ami-08bf489a05e916bbd"

egress = [80,443]
ingress = [80,443]
protocol_type = "TCP"
cidr_blocks_address = ["0.0.0.0/0"]