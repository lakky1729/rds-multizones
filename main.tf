
provider "aws" {
   # Adjust the version constraint to allow for the latest version
  region  = var.primary_region
}

resource "aws_db_instance" "primary" {
  provider         = aws.primary
  engine           = var.db_engine
  instance_class   = var.primary_instance_type
  identifier       = "my-db-instance" # Use 'identifier' instead of 'name'
  username         = var.db_username
  password         = var.db_password
  allocated_storage = var.db_allocated_storage

  # Add other necessary parameters for your database instance

  multi_az = false  # The primary instance should not be multi-AZ
}

resource "aws_db_instance" "secondary" {
  count            = 1
  provider         = aws.secondary
  engine           = var.db_engine
  instance_class   = var.secondary_instance_type
  identifier       = var.secondary_db_name  # Use 'identifier' instead of 'name'
  username         = var.db_username
  password         = var.db_password
  allocated_storage = var.db_allocated_storage

  # Add other necessary parameters for your database instance

  multi_az = false  # Read replicas should not be multi-AZ

  
}
