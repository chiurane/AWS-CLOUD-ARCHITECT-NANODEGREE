# specifying an S3 bucket as a backend is just good practice and durable
# Note to self, the backend.tf file doesnt play nicely with variables
# Backend bucket for storing terraform state

terraform{
    backend "s3"{
        bucket = "udacity-architect-backend-terraform"
        key = "lambda/terraform.tfstate"
        region = "us-east-1"
    }
}