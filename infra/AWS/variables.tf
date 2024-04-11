variable "aws_region" {
    type = string
    description = "aws region to deploy the resouces" 
}

variable "aws_profile" {
    type = string
    description = "aws profile for authentication" 
    default = "default"
}
