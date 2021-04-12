output "droplet_ip" {
  value = digitalocean_droplet.terraform-example.ipv4_address
}
