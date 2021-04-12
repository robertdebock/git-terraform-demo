# Git Terraform demo

A demonstration environment to show how Git and Terraform can combine.

## Overview

```text
+--- ssh_key: terraform-demo ---+
| ~/.ssh/id_rsa                 |
+-------------------------------+
                 ^
                 |
+--- droplet: terraform-example ---+
| size:                            |
|   - small (1gb)                  |
|   - medium (2gb)                 |
|   - large (4gb)                  |
+----------------------------------+
                 |
                 V
+---  template_file: cloud-init-yml ---+
| packages:                            |
| - httpd                              |
| # And a few other tasks.             |
+--------------------------------------+
```

## Setup

The private SSH key is not saved in the repository, you may need to recreate a private and public key:

```shell
cd files
ssh-keyget -f id_rsa
git add id_rsa.pub
git commit -m "New ssh key."
git push
```

## Applying the code

[Terraform Cloud](https://app.terraform.io/app/robertdebock/workspaces/git-terraform-demo/) is configured to execute this code.

## Logging in.

Load the ssh-key into your ssh-agent:

```shell
ssh-add files/id_rsa
```

And login using `root`:

```shell
ssh root@IP_ADDRESS
```
