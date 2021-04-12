# Please set the `TF_VAR_do_token` variable.
# `export TF_VAR_do_token`

variable "do_token" {
  type = string
}

provider "digitalocean" {
  token = var.do_token
}
