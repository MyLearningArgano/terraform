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