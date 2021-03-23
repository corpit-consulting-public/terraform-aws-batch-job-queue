output "job_queue_arn" {
  description = "Job Queue ARN"
  vaule       = aws_batch_job_queue.batch_queue.arn
}
