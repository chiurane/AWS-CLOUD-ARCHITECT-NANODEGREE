# TODO: Define the variable for aws_region and other re-usable variables throughout module
variable "aws_region" {
    description = "The AWS region to use"
    type = string
    default = "us-east-1"
}

# our lambda function name
variable "lambda_function_name"{
    description = "The name of our lambda function"
    type = string
    default = "greet_lambda"
}

# fully qualified name to our lambda handler
variable "lambda_handler"{
    description = "name of our lambda handler"
    type = string
    default = "greet_lambda.lambda_handler"
}

# we need an output archive name
variable "output_archive_name"{
    description = "The name of the output for the archive"
    type = string
    default = "greet_lambda.zip"
}

# lambda functions need a run time declared
variable "runtime"{
    description = "Runtime environment for this lambda function"
    type = string
    default = "python3.8"
}

# backend bucket for storing tf.State
variable "back_end_bucket"{
    description = "Bucket for storin backend state for terraform"
    type = string
    default = "udacity-architect-backend-terraform"
}

variable "back_end_bucket_key"{
    description = "Backend bucket key"
    type = string
    default = "lambda/terraform.tfstate"
}

