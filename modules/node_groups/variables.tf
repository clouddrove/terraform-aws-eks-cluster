variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "node_groups" {
  type        = list
  default     = []
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "max_size" {
  type        = list
  default     = []
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "min_size" {
  type        = list
  default     = []
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "desired_size" {
  type        = list
  default     = []
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "aws_iam_role_arn" {
  type        = string
  default     = ""
  description = "ARN of EKS iam user"

}

variable "subnet_ids" {
  type  = list
  default = []
  description = "subnet_ids"
  }

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "managedby" {
  type        = string
  default     = "anmol@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'."
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `environment`, `name` and `attributes`."
}

variable "cluster_name" {
  type        = string
  default     = ""
  description = "The name of the EKS cluster."
}

variable "workers_security_group_id" {
  type        = string
  default     = ""
  description = "The name of the existing security group that will be used in autoscaling group for EKS workers. If empty, a new security group will be created."
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  default     = []
  description = "List of CIDR blocks to be allowed to connect to the worker nodes."
}

variable "instance_initiated_shutdown_behavior" {
  type        = string
  default     = "terminate"
  description = "Shutdown behavior for the instances. Can be `stop` or `terminate`."
}

variable "image_id" {
  type        = string
  default     = ""
  description = "EC2 image ID to launch. If not provided, the module will lookup the most recent EKS AMI. See https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html for more details on EKS-optimized images."
}

variable "instance_type" {
  type        = string
  default     = ""
  description = "Instance type to launch."
}

variable "key_name" {
  type        = string
  default     = ""
  description = "SSH key name that should be used for the instance."
}

