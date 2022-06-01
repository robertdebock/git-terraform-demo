output "droplet_ip" {
  description = "The IP address of the droplet."
  value       = digitalocean_droplet.terraform-example.ipv4_address
}
