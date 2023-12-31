resource "aws_security_group" "my-alb-sg" {
  name   = "my-alb-sg"
  vpc_id = var.vpc_id
  dynamic "ingress" {
    for_each = var.inbound_all
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.outbound_all
    content {
      from_port   = egress.value.port
      to_port     = egress.value.port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
  tags = merge(var.security_tags)
}