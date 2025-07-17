# Terraform Remote Backend with S3 and DynamoDB

This project demonstrates configuring a remote backend for Terraform using:

- **S3 bucket** to store `.tfstate` files
- **DynamoDB table** for state locking and consistency

## How to Use

1. Modify `main.tf` with your bucket and DynamoDB table names.
2. Initialize:
   ```bash
   terraform init
   terraform plan
   terraform apply
Prerequisites
S3 bucket with versioning enabled

DynamoDB table for locking (with LockID as primary key)

🙋‍♂️ Author
Harshal Vernekar
GitHub: @Harshalv21