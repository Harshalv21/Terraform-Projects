output "public_ip" {
  description = "Public IP from EC2 module"
  value       = module.ec2_instance.instance_public_ip
}
#it will print the public IP of the EC2 instance created in the module
#by running `terraform output public_ip`