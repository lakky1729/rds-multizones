variable "primary_region" {
  description = "The primary AWS region"
  type        = string
  default     = "us-east-1"
}

variable "secondary_region" {
  description = "The secondary AWS region for read replica"
  type        = string
  default     = "us-west-2"
}

variable "db_engine" {
  description = "The database engine (e.g., mysql)"
  type        = string
  default     = "mysql"
}

variable "primary_instance_type" {
  description = "The instance type for the primary RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "secondary_instance_type" {
  description = "The instance type for the secondary (read replica) RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "primary_db_name" {
  description = "The name of the primary database"
  type        = string
  default     = "primary-db"
}

variable "secondary_db_name" {
  description = "The name of the secondary database (read replica)"
  type        = string
  default     = "secondary-db"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  default     = "password"
}

variable "db_allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
  default     = 20
}
