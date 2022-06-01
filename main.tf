# Create a new SSH key
resource "digitalocean_ssh_key" "terraform-demo" {
  name       = "terraform demo 1"
  public_key = file("${path.module}/files/id_rsa.pub")
}

# Create a new Droplet using the SSH key
resource "digitalocean_droplet" "terraform-example" {
  image     = var.image
  name      = "terraform-example-1"
  region    = var.region
  size      = local.droplet_size
  ssh_keys  = [digitalocean_ssh_key.terraform-demo.fingerprint]
  user_data = file("${path.module}/files/cloud-init.yml")
}

# Create a project and put the droplet in there.
resource "digitalocean_project" "terraform-demo" {
  name        = "terraform-demo"
  description = "A project to demo terraform."
  purpose     = "Demonstrations"
  environment = "Production"
  resources   = [digitalocean_droplet.terraform-example.urn]
}
