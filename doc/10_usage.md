## Usage

```hcl
module "batch-queue" {
  name                 = "${var.name}"
  state                = "${var.state}"
  priority             = "${var.priority}"
  compute_environments = ["${var.compute_environments}"]
}

```
