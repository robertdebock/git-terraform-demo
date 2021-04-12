# GitLab Terraform demo

A demonstration environment to show how GitLab and Terraform can combine.

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

## GitLab Runner (CI)

GitLab will `init`, `validate`, `plan` and `apply`. The `apply` stage will only run on the master branch and is a manually approved step.

The output will show the `IP_ADDRESS` required to login.

## Logging in.

Load the ssh-key into your ssh-agent:

```shell
ssh-add files/id_rsa
```

And login using `root`:

```shell
ssh root@IP_ADDRESS
```
