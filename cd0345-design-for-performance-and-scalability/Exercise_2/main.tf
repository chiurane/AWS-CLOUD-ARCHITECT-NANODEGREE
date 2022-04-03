# TODO: Designate a cloud provider, region, and credentials
terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
}
provider "aws" {
    profile = "default"
    access_key = "XXXXXXXXXXXXX"
    secret_key = "XXXXXXXXXXXXXXXXX""
    region = var.aws_region
}

# lambda archive
#data "archive_file" "archive"{
#    type = "zip"
#    source_file = "greet_lambda.py"
#    output_path = var.output_archive_name
#}

# The first resource we need is an IAMRole for our lambda (this is is from the terraform.io site)
#resource "aws_iam_role" "iam_for_lambda" {
#  name = "iam_for_lambda"

#  assume_role_policy = <<EOF
#{
#  "Version": "2012-10-17",
#  "Statement": [
#    {
#      "Action": "sts:AssumeRole",
#      "Principal": {
#        "Service": "lambda.amazonaws.com"
#      },
#      "Effect": "Allow",
#      "Sid": ""
#    }
#  ]
#}
#EOF
#}

#resource "aws_s3_bucket" "bucket"{
#    bucket = var.back_end_bucket
#    tags = {
#        Name = "Backend bucket for terraform state"
 #       Environment = "Production"
#    }
#}

# sort out bucket access here
##resource "aws_s3_bucket_acl" "bucket_acl"{
#    bucket = aws_s3_bucket.bucket.id
#    acl = private
#}

# The next resource we need is the lambda function itself
#resource "aws_lambda_function" "greet_lambda"{
#    filename = var.output_archive_name
#    function_name = var.lambda_function_name
#    role = aws_iam_role.iam_for_lambda.arn
#    handler = var.lambda_handler
#    source_code_hash = data.archive_file.archive.output_base64sha256
#    runtime = var.runtime
##    depends_on = [aws_iam_role_policy_attachment.lambda_logs]
#    environment{
#        variables = {
#            greeting = "Hi there, we are gooking with gas!"
##        }
#    }
#}

# Now we turn to CloudWatch Logging and Permissions
#resource "aws_iam_policy" "lambda_logging" {
#  name        = "lambda_logging"
#  path        = "/"
#  description = "IAM policy for logging from a lambda"

#  policy = <<EOF
#{
#  "Version": "2012-10-17",
#  "Statement": [
#    {
 #     "Action": [
 #       "logs:CreateLogGroup",
 #       "logs:CreateLogStream",
 #       "logs:PutLogEvents"
 #     ],
 #     "Resource": "arn:aws:logs:*:*:*",
 #     "Effect": "Allow"
 #   }
  #]
#}
#EOF
#}

#resource "aws_iam_role_policy_attachment" "lambda_logs"{
#    role = aws_iam_role.iam_for_lambda.name
#    policy_arn = aws_iam_policy.lambda_logging.arn
#}#

