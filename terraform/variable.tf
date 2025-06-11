variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet to launch EC2"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "env_name" {
  description = "Environment name"
  type        = string
}