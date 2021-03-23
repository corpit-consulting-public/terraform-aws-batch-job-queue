
# tf-aws-batch-queues

When you submit an AWS Batch job, you submit it to a particular job queue, where it resides until it is scheduled onto a compute environment. You associate one or more compute environments with a job queue, and you can assign priority values for these compute environments and even across job queues themselves.
Provides a Batch Job Queue resource.


## Usage

```hcl
module "cdata_extract_priority_job_queue" {
  source               = "corpit-consulting-public/batch-job-queue-mod/aws"
  version              = "v2.0.0"
  name                 = "job-queue"
  priority             = "1"
  compute_environments = [module.batch.arn]
  state                = "ENABLED"
}

```
## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_batch_job_queue.batch_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_environments"></a> [compute\_environments](#input\_compute\_environments) | Specifies the set of compute environments mapped to a job queue and their order. The position of the compute environments in the list will dictate the order. You can associate up 3 compute environments with a job queue | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the job queue | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | The priority of the job queue. Job queues with a higher priority are evaluated first when associated with the same compute environment | `string` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | The state of the job queue. Must be one of ENABLED or DISABLED | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_job_queue_arn"></a> [job\_queue\_arn](#output\_job\_queue\_arn) | Job Queue ARN |
