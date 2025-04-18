
output "ecs_cluster_id" {
  description = "The ID of the ECS cluster"
  value       = aws_ecs_cluster.this.id
}

output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.this.name
}

output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.this.name
}

output "ecs_service_arn" {
  description = "The ARN of the ECS service"
  value       = aws_ecs_service.this.id
}

output "load_balancer_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.this.dns_name
}

output "load_balancer_arn" {
  description = "The ARN of the load balancer"
  value       = aws_lb.this.arn
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.this.arn
}

output "alb_security_group_id" {
  description = "The ID of the ALB security group"
  value       = aws_security_group.alb_sg.id
}

output "ecs_security_group_id" {
  description = "The ID of the ECS service security group"
  value       = aws_security_group.ecs_sg.id
}
