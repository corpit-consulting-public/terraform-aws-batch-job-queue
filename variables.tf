##Variables Batch Job Queue

variable "name" {
  type        = "string"
  description = "Specifies the name of the job queue"
}

variable "compute_environments" {
  type        = "list"
  description = "Specifies the set of compute environments mapped to a job queue and their order. The position of the compute environments in the list will dictate the order. You can associate up 3 compute environments with a job queue"
}

variable "priority" {
  type        = "string"
  description = "The priority of the job queue. Job queues with a higher priority are evaluated first when associated with the same compute environment"
}

variable "state" {
  type        = "string"
  description = "The state of the job queue. Must be one of ENABLED or DISABLED"
}
