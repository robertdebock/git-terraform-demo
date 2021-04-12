locals {
  droplet_size_map = {
    small = "1gb"
    medium = "2gb"
    large = "4gb"
  }
  droplet_size = local.droplet_size_map[var.size]
}
