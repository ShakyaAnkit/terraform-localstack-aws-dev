terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }

    required_version = ">= 0.13.4"
}

provider "aws" { 
    access_key                  = "localstack"
    secret_key                  = "localstack"
    region                      = "eu-west-1"
    s3_force_path_style         = false
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true 

    endpoints {
        apigateway = "http://localhost:4566"
        apigatewayv2 = "http://localhost:4566"
        cloudformation = "http://localhost:4566"
        cloudwatch = "http://localhost:4566"
        dynamodb = "http://localhost:4566" 
        ec2 = "http://localhost:4566"
        es = "http://localhost:4566"
        elasticache = "http://localhost:4566"
        firehose = "http://localhost:4566"
        iam = "http://localhost:4566"
        kinesis = "http://localhost:4566"
        lambda = "http://localhost:4566"
        rds = "http://localhost:4566"
        redshift = "http://localhost:4566"
        route53 = "http://localhost:4566"
        s3 = "http://s3.localhost.localstack.cloud:4566"
        secretsmanager = "http://localhost:4566"
        ses = "http://localhost:4566"
        sns = "http://localhost:4566"
        sqs = "http://localhost:4566"
        ssm = "http://localhost:4566"
        stepfunctions = "http://localhost:4566"
        sts = "http://localhost:4566"
    }
}

resource "aws_instance" "myserver" {
    ami = "ami-830c94e3"
    instance_type = "t2.micro"
    count = 100

    tags = {
        Name = "Server${count.index + 1}",
    }
}