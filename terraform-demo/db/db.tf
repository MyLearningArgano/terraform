resource "aws_db_instance" "db" {
    identifier = var.db_identifier
    instance_class = var.db_instance
    engine = var.db_engine
    engine_version = var.db_engine_version
    username = var.db_user
    password = var.db_password
    port = var.db_port
    allocated_storage = var.db_allocated_storage
    skip_final_snapshot = true
}

output "db_endpoint" {
    value = aws_db_instance.db.endpoint
}