output "primary_db_endpoint" {
  description = "The endpoint of the primary RDS instance"
  value       = aws_db_instance.primary.endpoint
}

output "secondary_db_endpoint" {
  description = "The endpoint of the secondary (read replica) RDS instance"
  value       = aws_db_instance.secondary[0].endpoint
}
