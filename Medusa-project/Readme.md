# Medusa Backend Deployment on AWS using Terraform and GitHub Actions

This project sets up the **Medusa open-source headless commerce backend** on **Amazon ECS with Fargate**, using **Terraform** for infrastructure provisioning and **GitHub Actions** for continuous deployment (CD).

---

## 🚀 Architecture Overview

- **AWS ECS (Fargate)** – Containerized Medusa backend
- **Amazon ECR** – Docker image storage
- **Application Load Balancer (ALB)** – Routing and accessibility
- **VPC with Subnets** – Network setup
- **IAM Roles** – ECS & GitHub Actions access
- **GitHub Actions** – CI/CD to build, push, and deploy Docker image

---

## 📁 Project Structure

medusa-terraform/
├── vpc.tf
├── ecs.tf
├── alb.tf
├── iam.tf
├── ecr.tf
├── security_groups.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── data.tf
├── Dockerfile
├── package.json
├── .github/
│ └── workflows/
│ └── deploy.yml

---

## ⚙️ Prerequisites

- AWS Account
- GitHub repository
- Terraform installed
- AWS CLI installed
- Docker installed

---

## 🧱 Steps to Use

### 1. Clone the Repo
```bash
git clone https://github.com/Harshalv21/Terraform-Projects.git
cd medusa-project
2. Initialize Terraform
t
terraform init
3. Plan Infrastructure

terraform plan
4. (Optional) Deploy Infrastructure

terraform apply
⚠️ Will incur AWS charges — proceed only if you're ready to deploy.

🔐 GitHub Secrets Required
Before running the GitHub Actions workflow, add these repository secrets:

Name	Description
AWS_ACCESS_KEY_ID	AWS IAM Access Key
AWS_SECRET_ACCESS_KEY	AWS IAM Secret
AWS_REGION	e.g., us-east-1
ECR_REPOSITORY	Name of your ECR repo
ECS_TASK_DEFINITION	Task definition name
ECS_CLUSTER_NAME	Name of your ECS cluster
ECS_SERVICE_NAME	Name of ECS service

🛠️ Customize
Modify the Dockerfile and package.json for your Medusa setup.

Terraform can be extended to add S3, Route53, or DB (e.g., RDS) if needed.

✅ Status
 Terraform infra files created

 GitHub Actions CI/CD added

 Deployment scripts ready

 Deployment skipped (to avoid AWS charges)

👨‍💻 Author
Harshal Vernekar
GitHub