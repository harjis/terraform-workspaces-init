# How to run

Setup ARM_*

```bash
export ARM_CLIENT_ID='a'
export ARM_CLIENT_SECRET='a'
export ARM_TENANT_ID='a'
export ARM_SUBSCRIPTION_ID='a'
```

Init:

```bash

./init.sh test
```

Plan & apply (-out omitted in favor of typing less):

```bash
terraform plan
terraform apply
```

Create new environment

```bash
rm -rf .terraform && ./init.sh test2

terraform plan
terraform apply
```

Switching between workspaces can be achieved by running `rm -rf .terraform && ./init.sh <env>`

If you have 2 workspaces (test, test2), the result is 4 tfstate files:

```
terraform-test.tfstate
terraform-test.tfstate:test

terraform-test2.tfstate
terraform-test2.tfstate:test2
```
