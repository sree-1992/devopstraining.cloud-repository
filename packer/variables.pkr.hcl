# Define the application repository
variable "application_repository" {
  description = "The URL of the application repository to be cloned and built."
  type        = string
  default     = ""
}


# Define the project name
variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = ""
}

# Define the project environment
variable "project_env" {
  description = "The environment of the project (e.g., dev, staging, prod)."
  type        = string
  default     = ""
}

# Define the source AMI ID
variable "ami" {
  description = "The ID of the source AMI to use for creating the new image."
  type        = string
  default     = ""
}

# Define the instance type
variable "instance_type" {
  description = "The type of instance to launch. Default is 't2.micro'."
  type        = string
  default     = ""
}

# Define local values
locals {
    
  # Format the current timestamp
  timestamp = formatdate("DD-MM-YYYY-hh-mm", timestamp())

  # Generate the image name based on project name, environment, and timestamp
  image_name = "${var.project_name}-${var.project_env}-${local.timestamp}"
}

