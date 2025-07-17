# ⏰ Terraform Project: AWS Lambda Scheduled with CloudWatch Events

This project demonstrates how to deploy an AWS Lambda function triggered on a schedule using **CloudWatch EventBridge rules** (cron-like). The infrastructure is defined using **Terraform**.

---

## 📌 Features

- Deploys a Node.js-based AWS Lambda function
- Schedules the Lambda to run **periodically** using a CloudWatch `rate()` expression
- Sets up required IAM role and policies
- Uses zipped function code (`function.zip`)

---

## 🛠 Project Structure

TERRAFORM_PROJECTS/
└── scenario/
└── drift-detection/
├── lambda/
│ └── index.js # Lambda function source code
├── function.zip # Zipped Lambda code
├── main.tf # Terraform configuration
├── terraform.tfstate # Terraform state (ignored in Git)
└── terraform.tfstate.backup

yaml
Copy
Edit

---

## 🚀 Prerequisites

- AWS CLI configured (`aws configure`)
- Terraform installed (`terraform -v`)
- IAM permissions to deploy Lambda, IAM, and CloudWatch

---

## 🔧 How to Use

### 1. Zip Your Lambda Function

From inside the `lambda/` folder:

```bash
zip ../function.zip index.js
2. Initialize Terraform

terraform init
3. Review & Apply the Plan

terraform plan
terraform apply

Verify Deployment
Go to the AWS Lambda Console

Check if function cronLambda exists
Navigate to CloudWatch Logs → /aws/lambda/cronLambda
Logs will appear after each scheduled execution
To test immediately:
Set schedule to rate(1 minute) temporarily and apply

👨‍💻 Author
Deployed and managed with 💻 by Harshal Vernekar