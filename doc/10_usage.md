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
