
# tf-aws-batch-queues

When you submit an AWS Batch job, you submit it to a particular job queue, where it resides until it is scheduled onto a compute environment. You associate one or more compute environments with a job queue, and you can assign priority values for these compute environments and even across job queues themselves.
Provides a Batch Job Queue resource.


## Usage

```hcl
module "batch-queue" {
  name                 = "${var.name}"
  state                = "${var.state}"
  priority             = "${var.priority}"
  compute_environments = ["${var.compute_environments}"]
}

```
## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| compute\_environments | Specifies the set of compute environments mapped to a job queue and their order. The position of the compute environments in the list will dictate the order. You can associate up 3 compute environments with a job queue | list | n/a | yes |
| name | Specifies the name of the job queue | string | n/a | yes |
| priority | The priority of the job queue. Job queues with a higher priority are evaluated first when associated with the same compute environment | string | n/a | yes |
| state | The state of the job queue. Must be one of ENABLED or DISABLED | string | n/a | yes |

