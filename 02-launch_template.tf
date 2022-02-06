resource "aws_launch_template" "app_node" {
  name = "lt-my-app"

  instance_type = "t2.micro"

  image_id = "ami-04c921614424b07cd"

  instance_initiated_shutdown_behavior = "terminate"

  update_default_version = true

  key_name = "frankfurt"

  network_interfaces {
    associate_public_ip_address = true

    security_groups = [
      aws_security_group.web.id,
      aws_security_group.ssh.id
    ]
  }
  
  placement {
    availability_zone = "eu-central-1a"
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "my-app"
    }
  }

  user_data = filebase64("files/user_data.sh")
}