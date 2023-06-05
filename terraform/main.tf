# main.tf

provider "aws" {
  region = "us-east-1" # Set desired AWS region
}

resource "aws_lambda_function" "springboot_lambda" {
  function_name = "springboot-lambda"
  description   = "Spring Boot Lambda Function"
  runtime       = "java17"
  timeout       = 30
  memory_size   = 256

  handler = "com.example.demo.HelloWorldApplication::hello"

  # Replace the S3 bucket and key with Spring Boot application JAR file
  code {
    s3_bucket = "my-s3-bucket"  #name of the s3 bucket where the JAR file is stored
    s3_key    = "my-spring-boot-app.jar"  #actual key (filename) of the JAR file in the S3 bucket
  }

  environment {
    variables = {
      # Set any environment variables required by the Spring Boot application
    }
  }

  # Create an IAM role with necessary permissions for the Lambda function
  role {
    name = "springboot-lambda-role"

    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
  }

}
