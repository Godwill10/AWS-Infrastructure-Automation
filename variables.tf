variable "instance1_name" {
  description = "Name of first EC2 instance"
  type        = string
}

variable "instance2_name" {
  description = "Name of second EC2 instance"
  type        = string
}

variable "db_username" {
  description = "Administrator username for the RDS instance"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Administrator password for the RDS instance. Supply through TF_VAR_db_password or an untracked .tfvars file."
  type        = string
  sensitive   = true
}