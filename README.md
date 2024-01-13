# Running LocalStack on your Local Machine Container

## LocalStack Overview
LocalStack provides a fully functional local AWS cloud stack for local development and testing purposes. It allows you to emulate various AWS services on your local machine, facilitating the development and testing of cloud applications without incurring actual AWS costs.

## How to Run LocalStack on Your Machine

Follow these steps to set up and run LocalStack on your local machine:

1. Pull the LocalStack Docker image:
    ```bash
    docker pull localstack/localstack:latest
    ```

2. Start LocalStack using Docker Compose:
    ```bash
    docker-compose up
    ```

3. Install AWS CLI:
    Ensure that the AWS Command Line Interface (AWS CLI) is installed on your machine. You can download it from [here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

4. Install Terraform:
    If Terraform is not installed on your machine, you can download and install it from [HashiCorp's official website](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

5. Navigate to the Terraform folder:
    Change your working directory to the folder containing the Terraform configuration files.

6. Deploy AWS Instances using Terraform:
    In the Terraform folder, you'll find a `main.tf` file that specifies the configuration for deploying AWS instances. This example assumes it deploys 100 AWS instances.

7. Initialize Terraform:
    Run the following command to initialize Terraform in the project directory:
    ```bash
    terraform init
    ```

8. Apply Terraform Configuration:
    Apply the Terraform configuration to provision the specified AWS instances on your LocalStack setup:
    ```bash
    terraform apply
    ```
   
   Follow the prompts and confirm the action to start the provisioning process.

After completing these steps, you should have 100 AWS instances deployed locally using LocalStack. This setup is ideal for development and testing purposes, allowing you to interact with AWS services without incurring any actual costs.




