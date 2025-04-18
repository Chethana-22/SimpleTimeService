
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "my-vpc"
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "my-app"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "container_image" {
  description = "Container image to deploy"
  type        = string
  default     = "nginx:latest"
}

variable "task_cpu" {
  description = "CPU units for the ECS task"
  type        = string
  default     = "256"
}

variable "task_memory" {
  description = "Memory (in MiB) for the ECS task"
  type        = string
  default     = "512"
}

variable "execution_role_arn" {
  description = "ARN of the ECS task execution role"
  type        = string
  default = "aws_iam_role.ecs_task_execution_role.arn"
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
